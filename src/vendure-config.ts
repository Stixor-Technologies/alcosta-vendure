import {
  dummyPaymentHandler,
  DefaultJobQueuePlugin,
  VendureConfig,
  DefaultSearchPlugin,
  LanguageCode,
} from "@vendure/core";
import {
  defaultEmailHandlers,
  EmailDetails,
  EmailPlugin,
  EmailSender,
} from "@vendure/email-plugin";
import {
  AssetServerPlugin,
  configureS3AssetStorage,
} from "@vendure/asset-server-plugin";
import { AdminUiPlugin } from "@vendure/admin-ui-plugin";
import { compileUiExtensions } from "@vendure/ui-devkit/compiler";
import "dotenv/config";
import path from "path";
import sendgrid from "@sendgrid/mail";
import fs from "fs";
// import { AlertPlugin } from "./plugins/alerts/alert.plugin";

const IS_DEV = process.env.APP_ENV === "dev";

sendgrid.setApiKey(process.env.SENDGRID_API_KEY!);

class SendgridEmailSender implements EmailSender {
  async send(email: EmailDetails) {
    await sendgrid.send({
      to: email.recipient,
      from: email.from,
      subject: email.subject,
      html: email.body,
    });
  }
}

const ALLOWED_ORIGINS = {
  LOCAL: "http://localhost:3000",
  AMPLIFY_REGEX: /^https:\/\/[a-zA-Z0-9-]+\.djoxd2hz2b5tf\.amplifyapp\.com$/,
};

export const config: VendureConfig = {
  apiOptions: {
    cors: {
      origin: "*",
      credentials: false,
      allowedHeaders: "*",
      methods: ["GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"],
    },
    port: 3000,
    adminApiPath: "admin-api",
    shopApiPath: "shop-api",

    ...(IS_DEV
      ? {
          adminApiPlayground: {
            settings: { "request.credentials": "include" },
          },
          adminApiDebug: true,
          shopApiPlayground: {
            settings: { "request.credentials": "include" },
          },
          shopApiDebug: true,
        }
      : {}),
  },
  authOptions: {
    tokenMethod: ["bearer", "cookie"],
    requireVerification: false,
    superadminCredentials: {
      identifier: process.env.SUPERADMIN_USERNAME,
      password: process.env.SUPERADMIN_PASSWORD,
    },
    cookieOptions: {
      secret: process.env.COOKIE_SECRET,
    },
  },
  dbConnectionOptions: {
    type: "postgres",
    synchronize: false,
    migrations: [path.join(__dirname, "./migrations/*.+(js|ts)")],
    logging: false,
    database: process.env.DB_NAME,
    schema: process.env.DB_SCHEMA,
    host: process.env.DB_HOST,
    port: +process.env.DB_PORT,
    // url: process.env.DB_CONNECTION,
    username: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    ssl: {
      rejectUnauthorized: false,
    },
    // ssl: {
    //   ca: fs.readFileSync("./ca-certificate.crt").toString(),
    // },
  },
  paymentOptions: {
    paymentMethodHandlers: [dummyPaymentHandler],
  },
  customFields: {
    Product: [
      {
        name: "brand",
        type: "string",
        ui: { component: "text-form-input" },
        label: [{ languageCode: LanguageCode.en, value: "Brand" }],
        defaultValue: "",
      },
      {
        name: "additionalInformation",
        type: "string",
        ui: { component: "textarea-form-input" },
        label: [
          { languageCode: LanguageCode.en, value: "Additional Information" },
        ],
        length: 2000,
        defaultValue: "",
      },
      {
        name: "productDetails",
        type: "string",
        ui: { component: "rich-text-form-input" },

        length: 2000,
        label: [{ languageCode: LanguageCode.en, value: "Product Details" }],
        defaultValue: "",
      },
    ],
    ProductVariant: [
      {
        name: "discount",
        type: "float",
        ui: { component: "number-form-input", suffix: "%" },
        label: [{ languageCode: LanguageCode.en, value: "Discount" }],
        defaultValue: 0,
        min: 0,
        max: 100,
      },
    ],
  },
  plugins: [
    // AlertPlugin,
    AssetServerPlugin.init({
      route: "assets",
      assetUploadDir: !IS_DEV
        ? process.env.ASSET_UPLOAD_DIR ||
          path.join(__dirname, "../static/assets")
        : path.join(__dirname, "../static/assets"),
      assetUrlPrefix: IS_DEV ? undefined : process.env.MINIO_ENDPOINT,
      storageStrategyFactory: !IS_DEV
        ? process.env.ASSET_UPLOAD_DIR
          ? configureS3AssetStorage({
              bucket: "alcosta-assets",
              credentials: {
                accessKeyId: process.env.MINIO_ACCESS_KEY ?? "",
                secretAccessKey: process.env.MINIO_SECRET_KEY ?? "",
              },
              nativeS3Configuration: {
                endpoint: process.env.ASSET_UPLOAD_DIR,
                forcePathStyle: true,
                signatureVersion: "v4",
                region: "eu-west-1",
              },
            })
          : undefined
        : undefined,
    }),
    DefaultJobQueuePlugin.init({ useDatabaseForBuffer: true }),
    DefaultSearchPlugin.init({ bufferUpdates: false }),

    // TODO: might be used later

    // EmailPlugin.init({
    //   devMode: true,
    //   outputPath: path.join(__dirname, "../static/email/test-emails"),
    //   route: "mailbox",
    //   handlers: defaultEmailHandlers,
    //   templatePath: path.join(__dirname, "../static/email/templates"),
    //   globalTemplateVars: {
    //     fromAddress: '"Vendure Demo Store" <fawad.mehmood@stixor.com>',
    //     verifyEmailAddressUrl: "http://localhost:3000/verify",
    //     passwordResetUrl: "http://localhost:3000/password-reset",
    //     changeEmailAddressUrl:
    //       "http://localhost:3000/verify-email-address-change",
    //   },
    // }),

    EmailPlugin.init({
      handlers: defaultEmailHandlers,
      templatePath: path.join(__dirname, "../static/email/templates"),
      transport: { type: "none" },
      globalTemplateVars: {
        fromAddress: `Alcosta Shop <${process.env.EMAIL_FROM}>`,
        verifyEmailAddressUrl: `${process.env.SHOP_URL}/verify`,
        passwordResetUrl: `${process.env.SHOP_URL}/password-reset`,
        changeEmailAddressUrl: `${process.env.SHOP_URL}/verify-email-address-change`,
      },

      emailSender: new SendgridEmailSender(),
    }),

    AdminUiPlugin.init({
      route: "admin",
      port: 3002,

      // app: compileUiExtensions({
      //   outputPath: path.join(__dirname, "..", "admin-ui"),
      //   extensions: [],
      //   devMode: IS_DEV,
      // }),
      adminUiConfig: { apiPort: 3000 },
      // ? {
      //     apiPort: 3000,
      //   }
      // : {
      //     apiPort: 443, // HTTPS port
      //     apiHost: "https://alcosta.stixor.com",

      //     adminApiPath: "admin-api",
      //   },
    }),
  ],
};
