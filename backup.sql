PGDMP  2    '                |         
   alcosta-db    16.1    16.1 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17437 
   alcosta-db    DATABASE     n   CREATE DATABASE "alcosta-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "alcosta-db";
                postgres    false            8           1259    18060    address    TABLE     �  CREATE TABLE public.address (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "fullName" character varying DEFAULT ''::character varying NOT NULL,
    company character varying DEFAULT ''::character varying NOT NULL,
    "streetLine1" character varying NOT NULL,
    "streetLine2" character varying DEFAULT ''::character varying NOT NULL,
    city character varying DEFAULT ''::character varying NOT NULL,
    province character varying DEFAULT ''::character varying NOT NULL,
    "postalCode" character varying DEFAULT ''::character varying NOT NULL,
    "phoneNumber" character varying DEFAULT ''::character varying NOT NULL,
    "defaultShippingAddress" boolean DEFAULT false NOT NULL,
    "defaultBillingAddress" boolean DEFAULT false NOT NULL,
    id integer NOT NULL,
    "customerId" integer,
    "countryId" integer
);
    DROP TABLE public.address;
       public         heap    zax    false            7           1259    18059    address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public          zax    false    312            �           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;
          public          zax    false    311            �            1259    17544    administrator    TABLE     �  CREATE TABLE public.administrator (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    "firstName" character varying NOT NULL,
    "lastName" character varying NOT NULL,
    "emailAddress" character varying NOT NULL,
    id integer NOT NULL,
    "userId" integer
);
 !   DROP TABLE public.administrator;
       public         heap    zax    false            �            1259    17543    administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.administrator_id_seq;
       public          zax    false    232            �           0    0    administrator_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.administrator_id_seq OWNED BY public.administrator.id;
          public          zax    false    231            �            1259    17581    asset    TABLE       CREATE TABLE public.asset (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    "mimeType" character varying NOT NULL,
    width integer DEFAULT 0 NOT NULL,
    height integer DEFAULT 0 NOT NULL,
    "fileSize" integer NOT NULL,
    source character varying NOT NULL,
    preview character varying NOT NULL,
    "focalPoint" text,
    id integer NOT NULL
);
    DROP TABLE public.asset;
       public         heap    zax    false            N           1259    18225    asset_channels_channel    TABLE     q   CREATE TABLE public.asset_channels_channel (
    "assetId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 *   DROP TABLE public.asset_channels_channel;
       public         heap    zax    false            �            1259    17580    asset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.asset_id_seq;
       public          zax    false    238            �           0    0    asset_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.asset_id_seq OWNED BY public.asset.id;
          public          zax    false    237            M           1259    18218    asset_tags_tag    TABLE     e   CREATE TABLE public.asset_tags_tag (
    "assetId" integer NOT NULL,
    "tagId" integer NOT NULL
);
 "   DROP TABLE public.asset_tags_tag;
       public         heap    zax    false            �            1259    17441    authentication_method    TABLE     b  CREATE TABLE public.authentication_method (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    identifier character varying,
    "passwordHash" character varying,
    "verificationToken" character varying,
    "passwordResetToken" character varying,
    "identifierChangeToken" character varying,
    "pendingIdentifier" character varying,
    strategy character varying,
    "externalIdentifier" character varying,
    metadata text,
    id integer NOT NULL,
    type character varying NOT NULL,
    "userId" integer
);
 )   DROP TABLE public.authentication_method;
       public         heap    zax    false            �            1259    17440    authentication_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authentication_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.authentication_method_id_seq;
       public          zax    false    216            �           0    0    authentication_method_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.authentication_method_id_seq OWNED BY public.authentication_method.id;
          public          zax    false    215            �            1259    17500    channel    TABLE     �  CREATE TABLE public.channel (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    code character varying NOT NULL,
    token character varying NOT NULL,
    description character varying DEFAULT ''::character varying,
    "defaultLanguageCode" character varying NOT NULL,
    "availableLanguageCodes" text,
    "defaultCurrencyCode" character varying NOT NULL,
    "availableCurrencyCodes" text,
    "trackInventory" boolean DEFAULT true NOT NULL,
    "outOfStockThreshold" integer DEFAULT 0 NOT NULL,
    "pricesIncludeTax" boolean NOT NULL,
    id integer NOT NULL,
    "sellerId" integer,
    "defaultTaxZoneId" integer,
    "defaultShippingZoneId" integer
);
    DROP TABLE public.channel;
       public         heap    zax    false            �            1259    17499    channel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.channel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.channel_id_seq;
       public          zax    false    226            �           0    0    channel_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.channel_id_seq OWNED BY public.channel.id;
          public          zax    false    225            �            1259    17618 
   collection    TABLE     �  CREATE TABLE public.collection (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "isRoot" boolean DEFAULT false NOT NULL,
    "position" integer NOT NULL,
    "isPrivate" boolean DEFAULT false NOT NULL,
    filters text NOT NULL,
    "inheritFilters" boolean DEFAULT true NOT NULL,
    id integer NOT NULL,
    "parentId" integer,
    "featuredAssetId" integer
);
    DROP TABLE public.collection;
       public         heap    zax    false            �            1259    17594    collection_asset    TABLE     0  CREATE TABLE public.collection_asset (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "assetId" integer NOT NULL,
    "position" integer NOT NULL,
    "collectionId" integer NOT NULL,
    id integer NOT NULL
);
 $   DROP TABLE public.collection_asset;
       public         heap    zax    false            �            1259    17593    collection_asset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.collection_asset_id_seq;
       public          zax    false    240            �           0    0    collection_asset_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.collection_asset_id_seq OWNED BY public.collection_asset.id;
          public          zax    false    239            P           1259    18239    collection_channels_channel    TABLE     {   CREATE TABLE public.collection_channels_channel (
    "collectionId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 /   DROP TABLE public.collection_channels_channel;
       public         heap    zax    false            a           1259    18358    collection_closure    TABLE     q   CREATE TABLE public.collection_closure (
    id_ancestor integer NOT NULL,
    id_descendant integer NOT NULL
);
 &   DROP TABLE public.collection_closure;
       public         heap    zax    false            �            1259    17617    collection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.collection_id_seq;
       public          zax    false    244            �           0    0    collection_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.collection_id_seq OWNED BY public.collection.id;
          public          zax    false    243            O           1259    18232 +   collection_product_variants_product_variant    TABLE     �   CREATE TABLE public.collection_product_variants_product_variant (
    "collectionId" integer NOT NULL,
    "productVariantId" integer NOT NULL
);
 ?   DROP TABLE public.collection_product_variants_product_variant;
       public         heap    zax    false            �            1259    17605    collection_translation    TABLE     ~  CREATE TABLE public.collection_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    description text NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 *   DROP TABLE public.collection_translation;
       public         heap    zax    false            �            1259    17604    collection_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.collection_translation_id_seq;
       public          zax    false    242            �           0    0    collection_translation_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.collection_translation_id_seq OWNED BY public.collection_translation.id;
          public          zax    false    241            6           1259    18047    customer    TABLE     �  CREATE TABLE public.customer (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    title character varying,
    "firstName" character varying NOT NULL,
    "lastName" character varying NOT NULL,
    "phoneNumber" character varying,
    "emailAddress" character varying NOT NULL,
    id integer NOT NULL,
    "userId" integer
);
    DROP TABLE public.customer;
       public         heap    zax    false            _           1259    18344    customer_channels_channel    TABLE     w   CREATE TABLE public.customer_channels_channel (
    "customerId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 -   DROP TABLE public.customer_channels_channel;
       public         heap    zax    false            �            1259    17559    customer_group    TABLE     �   CREATE TABLE public.customer_group (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL
);
 "   DROP TABLE public.customer_group;
       public         heap    zax    false            �            1259    17558    customer_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customer_group_id_seq;
       public          zax    false    234            �           0    0    customer_group_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.customer_group_id_seq OWNED BY public.customer_group.id;
          public          zax    false    233            ^           1259    18337    customer_groups_customer_group    TABLE     �   CREATE TABLE public.customer_groups_customer_group (
    "customerId" integer NOT NULL,
    "customerGroupId" integer NOT NULL
);
 2   DROP TABLE public.customer_groups_customer_group;
       public         heap    zax    false            5           1259    18046    customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          zax    false    310            �           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          zax    false    309            �            1259    17645    facet    TABLE       CREATE TABLE public.facet (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "isPrivate" boolean DEFAULT false NOT NULL,
    code character varying NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.facet;
       public         heap    zax    false            Q           1259    18246    facet_channels_channel    TABLE     q   CREATE TABLE public.facet_channels_channel (
    "facetId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 *   DROP TABLE public.facet_channels_channel;
       public         heap    zax    false            �            1259    17644    facet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.facet_id_seq;
       public          zax    false    248            �           0    0    facet_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.facet_id_seq OWNED BY public.facet.id;
          public          zax    false    247            �            1259    17633    facet_translation    TABLE     5  CREATE TABLE public.facet_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 %   DROP TABLE public.facet_translation;
       public         heap    zax    false            �            1259    17632    facet_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facet_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.facet_translation_id_seq;
       public          zax    false    246            �           0    0    facet_translation_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.facet_translation_id_seq OWNED BY public.facet_translation.id;
          public          zax    false    245            �            1259    17671    facet_value    TABLE     
  CREATE TABLE public.facet_value (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    code character varying NOT NULL,
    id integer NOT NULL,
    "facetId" integer NOT NULL
);
    DROP TABLE public.facet_value;
       public         heap    zax    false            R           1259    18253    facet_value_channels_channel    TABLE     |   CREATE TABLE public.facet_value_channels_channel (
    "facetValueId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 0   DROP TABLE public.facet_value_channels_channel;
       public         heap    zax    false            �            1259    17670    facet_value_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facet_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.facet_value_id_seq;
       public          zax    false    252            �           0    0    facet_value_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.facet_value_id_seq OWNED BY public.facet_value.id;
          public          zax    false    251            �            1259    17659    facet_value_translation    TABLE     ;  CREATE TABLE public.facet_value_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 +   DROP TABLE public.facet_value_translation;
       public         heap    zax    false            �            1259    17658    facet_value_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facet_value_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.facet_value_translation_id_seq;
       public          zax    false    250            �           0    0    facet_value_translation_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.facet_value_translation_id_seq OWNED BY public.facet_value_translation.id;
          public          zax    false    249            &           1259    17941    fulfillment    TABLE     �  CREATE TABLE public.fulfillment (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    state character varying NOT NULL,
    "trackingCode" character varying DEFAULT ''::character varying NOT NULL,
    method character varying NOT NULL,
    "handlerCode" character varying NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.fulfillment;
       public         heap    zax    false            %           1259    17940    fulfillment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fulfillment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fulfillment_id_seq;
       public          zax    false    294            �           0    0    fulfillment_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fulfillment_id_seq OWNED BY public.fulfillment.id;
          public          zax    false    293            B           1259    18136    global_settings    TABLE     [  CREATE TABLE public.global_settings (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "availableLanguages" text NOT NULL,
    "trackInventory" boolean DEFAULT true NOT NULL,
    "outOfStockThreshold" integer DEFAULT 0 NOT NULL,
    id integer NOT NULL
);
 #   DROP TABLE public.global_settings;
       public         heap    zax    false            A           1259    18135    global_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.global_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.global_settings_id_seq;
       public          zax    false    322            �           0    0    global_settings_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.global_settings_id_seq OWNED BY public.global_settings.id;
          public          zax    false    321            D           1259    18149    history_entry    TABLE     �  CREATE TABLE public.history_entry (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    type character varying NOT NULL,
    "isPublic" boolean NOT NULL,
    data text NOT NULL,
    id integer NOT NULL,
    discriminator character varying NOT NULL,
    "administratorId" integer,
    "customerId" integer,
    "orderId" integer
);
 !   DROP TABLE public.history_entry;
       public         heap    zax    false            C           1259    18148    history_entry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.history_entry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.history_entry_id_seq;
       public          zax    false    324            �           0    0    history_entry_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.history_entry_id_seq OWNED BY public.history_entry.id;
          public          zax    false    323            I           1259    18187 
   job_record    TABLE     1  CREATE TABLE public.job_record (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "queueName" character varying NOT NULL,
    data text,
    state character varying NOT NULL,
    progress integer NOT NULL,
    result text,
    error character varying,
    "startedAt" timestamp(6) without time zone,
    "settledAt" timestamp(6) without time zone,
    "isSettled" boolean NOT NULL,
    retries integer NOT NULL,
    attempts integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.job_record;
       public         heap    zax    false            G           1259    18176    job_record_buffer    TABLE       CREATE TABLE public.job_record_buffer (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "bufferId" character varying NOT NULL,
    job text NOT NULL,
    id integer NOT NULL
);
 %   DROP TABLE public.job_record_buffer;
       public         heap    zax    false            F           1259    18175    job_record_buffer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_record_buffer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.job_record_buffer_id_seq;
       public          zax    false    327            �           0    0    job_record_buffer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.job_record_buffer_id_seq OWNED BY public.job_record_buffer.id;
          public          zax    false    326            H           1259    18186    job_record_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.job_record_id_seq;
       public          zax    false    329            �           0    0    job_record_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.job_record_id_seq OWNED BY public.job_record.id;
          public          zax    false    328            c           1259    18967 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    zax    false            b           1259    18966    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          zax    false    355            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          zax    false    354            4           1259    18029    order    TABLE     A  CREATE TABLE public."order" (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    type character varying DEFAULT 'Regular'::character varying NOT NULL,
    code character varying NOT NULL,
    state character varying NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "orderPlacedAt" timestamp without time zone,
    "couponCodes" text NOT NULL,
    "shippingAddress" text NOT NULL,
    "billingAddress" text NOT NULL,
    "currencyCode" character varying NOT NULL,
    id integer NOT NULL,
    "aggregateOrderId" integer,
    "customerId" integer,
    "taxZoneId" integer,
    "subTotal" integer NOT NULL,
    "subTotalWithTax" integer NOT NULL,
    shipping integer DEFAULT 0 NOT NULL,
    "shippingWithTax" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."order";
       public         heap    zax    false            ]           1259    18330    order_channels_channel    TABLE     q   CREATE TABLE public.order_channels_channel (
    "orderId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 *   DROP TABLE public.order_channels_channel;
       public         heap    zax    false            \           1259    18323    order_fulfillments_fulfillment    TABLE     }   CREATE TABLE public.order_fulfillments_fulfillment (
    "orderId" integer NOT NULL,
    "fulfillmentId" integer NOT NULL
);
 2   DROP TABLE public.order_fulfillments_fulfillment;
       public         heap    zax    false            3           1259    18028    order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public          zax    false    308            �           0    0    order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
          public          zax    false    307            "           1259    17907 
   order_line    TABLE     ~  CREATE TABLE public.order_line (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    quantity integer NOT NULL,
    "orderPlacedQuantity" integer DEFAULT 0 NOT NULL,
    "listPriceIncludesTax" boolean NOT NULL,
    adjustments text NOT NULL,
    "taxLines" text NOT NULL,
    id integer NOT NULL,
    "sellerChannelId" integer,
    "shippingLineId" integer,
    "productVariantId" integer NOT NULL,
    "initialListPrice" integer,
    "listPrice" integer NOT NULL,
    "taxCategoryId" integer,
    "featuredAssetId" integer,
    "orderId" integer
);
    DROP TABLE public.order_line;
       public         heap    zax    false            !           1259    17906    order_line_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.order_line_id_seq;
       public          zax    false    290            �           0    0    order_line_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.order_line_id_seq OWNED BY public.order_line.id;
          public          zax    false    289            $           1259    17925    order_line_reference    TABLE     �  CREATE TABLE public.order_line_reference (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    quantity integer NOT NULL,
    id integer NOT NULL,
    "fulfillmentId" integer,
    "modificationId" integer,
    "orderLineId" integer NOT NULL,
    "refundId" integer,
    discriminator character varying NOT NULL
);
 (   DROP TABLE public.order_line_reference;
       public         heap    zax    false            #           1259    17924    order_line_reference_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_line_reference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.order_line_reference_id_seq;
       public          zax    false    292            �           0    0    order_line_reference_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.order_line_reference_id_seq OWNED BY public.order_line_reference.id;
          public          zax    false    291            .           1259    17990    order_modification    TABLE     �  CREATE TABLE public.order_modification (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    note character varying NOT NULL,
    "shippingAddressChange" text,
    "billingAddressChange" text,
    id integer NOT NULL,
    "priceChange" integer NOT NULL,
    "orderId" integer,
    "paymentId" integer,
    "refundId" integer
);
 &   DROP TABLE public.order_modification;
       public         heap    zax    false            -           1259    17989    order_modification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_modification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.order_modification_id_seq;
       public          zax    false    302            �           0    0    order_modification_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.order_modification_id_seq OWNED BY public.order_modification.id;
          public          zax    false    301            [           1259    18316    order_promotions_promotion    TABLE     w   CREATE TABLE public.order_promotions_promotion (
    "orderId" integer NOT NULL,
    "promotionId" integer NOT NULL
);
 .   DROP TABLE public.order_promotions_promotion;
       public         heap    zax    false            *           1259    17965    payment    TABLE     �  CREATE TABLE public.payment (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    method character varying NOT NULL,
    state character varying NOT NULL,
    "errorMessage" character varying,
    "transactionId" character varying,
    metadata text NOT NULL,
    id integer NOT NULL,
    amount integer NOT NULL,
    "orderId" integer
);
    DROP TABLE public.payment;
       public         heap    zax    false            )           1259    17964    payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.payment_id_seq;
       public          zax    false    298            �           0    0    payment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.payment_id_seq OWNED BY public.payment.id;
          public          zax    false    297            <           1259    18094    payment_method    TABLE     V  CREATE TABLE public.payment_method (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    code character varying DEFAULT ''::character varying NOT NULL,
    enabled boolean NOT NULL,
    checker text,
    handler text NOT NULL,
    id integer NOT NULL
);
 "   DROP TABLE public.payment_method;
       public         heap    zax    false            `           1259    18351    payment_method_channels_channel    TABLE     �   CREATE TABLE public.payment_method_channels_channel (
    "paymentMethodId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 3   DROP TABLE public.payment_method_channels_channel;
       public         heap    zax    false            ;           1259    18093    payment_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.payment_method_id_seq;
       public          zax    false    316            �           0    0    payment_method_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.payment_method_id_seq OWNED BY public.payment_method.id;
          public          zax    false    315            :           1259    18082    payment_method_translation    TABLE     ]  CREATE TABLE public.payment_method_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 .   DROP TABLE public.payment_method_translation;
       public         heap    zax    false            9           1259    18081 !   payment_method_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_method_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.payment_method_translation_id_seq;
       public          zax    false    314            �           0    0 !   payment_method_translation_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.payment_method_translation_id_seq OWNED BY public.payment_method_translation.id;
          public          zax    false    313            
           1259    17755    product    TABLE     �  CREATE TABLE public.product (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    enabled boolean DEFAULT true NOT NULL,
    id integer NOT NULL,
    "featuredAssetId" integer,
    "customFieldsBrand" character varying(255) DEFAULT ''::character varying
);
    DROP TABLE public.product;
       public         heap    zax    false                       1259    17731    product_asset    TABLE     *  CREATE TABLE public.product_asset (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "assetId" integer NOT NULL,
    "position" integer NOT NULL,
    "productId" integer NOT NULL,
    id integer NOT NULL
);
 !   DROP TABLE public.product_asset;
       public         heap    zax    false                       1259    17730    product_asset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_asset_id_seq;
       public          zax    false    262            �           0    0    product_asset_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_asset_id_seq OWNED BY public.product_asset.id;
          public          zax    false    261            T           1259    18267    product_channels_channel    TABLE     u   CREATE TABLE public.product_channels_channel (
    "productId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 ,   DROP TABLE public.product_channels_channel;
       public         heap    zax    false            S           1259    18260     product_facet_values_facet_value    TABLE     �   CREATE TABLE public.product_facet_values_facet_value (
    "productId" integer NOT NULL,
    "facetValueId" integer NOT NULL
);
 4   DROP TABLE public.product_facet_values_facet_value;
       public         heap    zax    false            	           1259    17754    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          zax    false    266            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          zax    false    265                        1259    17695    product_option    TABLE     :  CREATE TABLE public.product_option (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    code character varying NOT NULL,
    id integer NOT NULL,
    "groupId" integer NOT NULL
);
 "   DROP TABLE public.product_option;
       public         heap    zax    false                       1259    17719    product_option_group    TABLE     9  CREATE TABLE public.product_option_group (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    code character varying NOT NULL,
    id integer NOT NULL,
    "productId" integer
);
 (   DROP TABLE public.product_option_group;
       public         heap    zax    false                       1259    17718    product_option_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_option_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.product_option_group_id_seq;
       public          zax    false    260            �           0    0    product_option_group_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.product_option_group_id_seq OWNED BY public.product_option_group.id;
          public          zax    false    259                       1259    17707     product_option_group_translation    TABLE     D  CREATE TABLE public.product_option_group_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 4   DROP TABLE public.product_option_group_translation;
       public         heap    zax    false                       1259    17706 '   product_option_group_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_option_group_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.product_option_group_translation_id_seq;
       public          zax    false    258            �           0    0 '   product_option_group_translation_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.product_option_group_translation_id_seq OWNED BY public.product_option_group_translation.id;
          public          zax    false    257            �            1259    17694    product_option_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_option_id_seq;
       public          zax    false    256            �           0    0    product_option_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_option_id_seq OWNED BY public.product_option.id;
          public          zax    false    255            �            1259    17683    product_option_translation    TABLE     >  CREATE TABLE public.product_option_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 .   DROP TABLE public.product_option_translation;
       public         heap    zax    false            �            1259    17682 !   product_option_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_option_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.product_option_translation_id_seq;
       public          zax    false    254            �           0    0 !   product_option_translation_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.product_option_translation_id_seq OWNED BY public.product_option_translation.id;
          public          zax    false    253                       1259    17742    product_translation    TABLE     {  CREATE TABLE public.product_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    description text NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 '   DROP TABLE public.product_translation;
       public         heap    zax    false                       1259    17741    product_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.product_translation_id_seq;
       public          zax    false    264            �           0    0    product_translation_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.product_translation_id_seq OWNED BY public.product_translation.id;
          public          zax    false    263                       1259    17851    product_variant    TABLE     h  CREATE TABLE public.product_variant (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    enabled boolean DEFAULT true NOT NULL,
    sku character varying NOT NULL,
    "outOfStockThreshold" integer DEFAULT 0 NOT NULL,
    "useGlobalOutOfStockThreshold" boolean DEFAULT true NOT NULL,
    "trackInventory" character varying DEFAULT 'INHERIT'::character varying NOT NULL,
    id integer NOT NULL,
    "productId" integer,
    "featuredAssetId" integer,
    "taxCategoryId" integer
);
 #   DROP TABLE public.product_variant;
       public         heap    zax    false                       1259    17816    product_variant_asset    TABLE     9  CREATE TABLE public.product_variant_asset (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "assetId" integer NOT NULL,
    "position" integer NOT NULL,
    "productVariantId" integer NOT NULL,
    id integer NOT NULL
);
 )   DROP TABLE public.product_variant_asset;
       public         heap    zax    false                       1259    17815    product_variant_asset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_variant_asset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.product_variant_asset_id_seq;
       public          zax    false    276            �           0    0    product_variant_asset_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.product_variant_asset_id_seq OWNED BY public.product_variant_asset.id;
          public          zax    false    275            X           1259    18295     product_variant_channels_channel    TABLE     �   CREATE TABLE public.product_variant_channels_channel (
    "productVariantId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 4   DROP TABLE public.product_variant_channels_channel;
       public         heap    zax    false            W           1259    18288 (   product_variant_facet_values_facet_value    TABLE     �   CREATE TABLE public.product_variant_facet_values_facet_value (
    "productVariantId" integer NOT NULL,
    "facetValueId" integer NOT NULL
);
 <   DROP TABLE public.product_variant_facet_values_facet_value;
       public         heap    zax    false                       1259    17850    product_variant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_variant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_variant_id_seq;
       public          zax    false    282            �           0    0    product_variant_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_variant_id_seq OWNED BY public.product_variant.id;
          public          zax    false    281            V           1259    18281 &   product_variant_options_product_option    TABLE     �   CREATE TABLE public.product_variant_options_product_option (
    "productVariantId" integer NOT NULL,
    "productOptionId" integer NOT NULL
);
 :   DROP TABLE public.product_variant_options_product_option;
       public         heap    zax    false                       1259    17827    product_variant_price    TABLE     L  CREATE TABLE public.product_variant_price (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "currencyCode" character varying NOT NULL,
    id integer NOT NULL,
    "channelId" integer,
    price integer NOT NULL,
    "variantId" integer
);
 )   DROP TABLE public.product_variant_price;
       public         heap    zax    false                       1259    17826    product_variant_price_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_variant_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.product_variant_price_id_seq;
       public          zax    false    278            �           0    0    product_variant_price_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.product_variant_price_id_seq OWNED BY public.product_variant_price.id;
          public          zax    false    277                       1259    17839    product_variant_translation    TABLE     ?  CREATE TABLE public.product_variant_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 /   DROP TABLE public.product_variant_translation;
       public         heap    zax    false                       1259    17838 "   product_variant_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_variant_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.product_variant_translation_id_seq;
       public          zax    false    280            �           0    0 "   product_variant_translation_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.product_variant_translation_id_seq OWNED BY public.product_variant_translation.id;
          public          zax    false    279            2           1259    18018 	   promotion    TABLE     &  CREATE TABLE public.promotion (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    "startsAt" timestamp without time zone,
    "endsAt" timestamp without time zone,
    "couponCode" character varying,
    "perCustomerUsageLimit" integer,
    "usageLimit" integer,
    enabled boolean NOT NULL,
    conditions text NOT NULL,
    actions text NOT NULL,
    "priorityScore" integer NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.promotion;
       public         heap    zax    false            Z           1259    18309    promotion_channels_channel    TABLE     y   CREATE TABLE public.promotion_channels_channel (
    "promotionId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 .   DROP TABLE public.promotion_channels_channel;
       public         heap    zax    false            1           1259    18017    promotion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.promotion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.promotion_id_seq;
       public          zax    false    306            �           0    0    promotion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.promotion_id_seq OWNED BY public.promotion.id;
          public          zax    false    305            0           1259    18006    promotion_translation    TABLE     X  CREATE TABLE public.promotion_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 )   DROP TABLE public.promotion_translation;
       public         heap    zax    false            /           1259    18005    promotion_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.promotion_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.promotion_translation_id_seq;
       public          zax    false    304            �           0    0    promotion_translation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.promotion_translation_id_seq OWNED BY public.promotion_translation.id;
          public          zax    false    303            (           1259    17953    refund    TABLE       CREATE TABLE public.refund (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    method character varying NOT NULL,
    reason character varying,
    state character varying NOT NULL,
    "transactionId" character varying,
    metadata text NOT NULL,
    id integer NOT NULL,
    "paymentId" integer NOT NULL,
    items integer NOT NULL,
    shipping integer NOT NULL,
    adjustment integer NOT NULL,
    total integer NOT NULL
);
    DROP TABLE public.refund;
       public         heap    zax    false            '           1259    17952    refund_id_seq    SEQUENCE     �   CREATE SEQUENCE public.refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.refund_id_seq;
       public          zax    false    296            �           0    0    refund_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.refund_id_seq OWNED BY public.refund.id;
          public          zax    false    295            �            1259    17477    region    TABLE     n  CREATE TABLE public.region (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    code character varying NOT NULL,
    type character varying NOT NULL,
    enabled boolean NOT NULL,
    id integer NOT NULL,
    "parentId" integer,
    discriminator character varying NOT NULL
);
    DROP TABLE public.region;
       public         heap    zax    false            �            1259    17476    region_id_seq    SEQUENCE     �   CREATE SEQUENCE public.region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.region_id_seq;
       public          zax    false    222            �           0    0    region_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;
          public          zax    false    221            �            1259    17465    region_translation    TABLE     6  CREATE TABLE public.region_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 &   DROP TABLE public.region_translation;
       public         heap    zax    false            �            1259    17464    region_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.region_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.region_translation_id_seq;
       public          zax    false    220            �           0    0    region_translation_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.region_translation_id_seq OWNED BY public.region_translation.id;
          public          zax    false    219            �            1259    17521    role    TABLE     .  CREATE TABLE public.role (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    code character varying NOT NULL,
    description character varying NOT NULL,
    permissions text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.role;
       public         heap    zax    false            K           1259    18204    role_channels_channel    TABLE     o   CREATE TABLE public.role_channels_channel (
    "roleId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 )   DROP TABLE public.role_channels_channel;
       public         heap    zax    false            �            1259    17520    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          zax    false    228            �           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          zax    false    227            E           1259    18163    search_index_item    TABLE     �  CREATE TABLE public.search_index_item (
    "languageCode" character varying NOT NULL,
    enabled boolean NOT NULL,
    "productName" character varying NOT NULL,
    "productVariantName" character varying NOT NULL,
    description text NOT NULL,
    slug character varying NOT NULL,
    sku character varying NOT NULL,
    "facetIds" text NOT NULL,
    "facetValueIds" text NOT NULL,
    "collectionIds" text NOT NULL,
    "collectionSlugs" text NOT NULL,
    "channelIds" text NOT NULL,
    "productPreview" character varying NOT NULL,
    "productPreviewFocalPoint" text,
    "productVariantPreview" character varying NOT NULL,
    "productVariantPreviewFocalPoint" text,
    "inStock" boolean DEFAULT true NOT NULL,
    "productInStock" boolean DEFAULT true NOT NULL,
    "productVariantId" integer NOT NULL,
    "channelId" integer NOT NULL,
    "productId" integer NOT NULL,
    "productAssetId" integer,
    "productVariantAssetId" integer,
    price integer NOT NULL,
    "priceWithTax" integer NOT NULL
);
 %   DROP TABLE public.search_index_item;
       public         heap    zax    false            �            1259    17454    seller    TABLE       CREATE TABLE public.seller (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    name character varying NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.seller;
       public         heap    zax    false            �            1259    17453    seller_id_seq    SEQUENCE     �   CREATE SEQUENCE public.seller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.seller_id_seq;
       public          zax    false    218            �           0    0    seller_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.seller_id_seq OWNED BY public.seller.id;
          public          zax    false    217            >           1259    18106    session    TABLE     �  CREATE TABLE public.session (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    token character varying NOT NULL,
    expires timestamp without time zone NOT NULL,
    invalidated boolean NOT NULL,
    "authenticationStrategy" character varying,
    id integer NOT NULL,
    "activeOrderId" integer,
    "activeChannelId" integer,
    type character varying NOT NULL,
    "userId" integer
);
    DROP TABLE public.session;
       public         heap    zax    false            =           1259    18105    session_id_seq    SEQUENCE     �   CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.session_id_seq;
       public          zax    false    318            �           0    0    session_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;
          public          zax    false    317                        1259    17894    shipping_line    TABLE     �  CREATE TABLE public.shipping_line (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "listPriceIncludesTax" boolean NOT NULL,
    adjustments text NOT NULL,
    "taxLines" text NOT NULL,
    id integer NOT NULL,
    "shippingMethodId" integer NOT NULL,
    "listPrice" integer NOT NULL,
    "orderId" integer
);
 !   DROP TABLE public.shipping_line;
       public         heap    zax    false                       1259    17893    shipping_line_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.shipping_line_id_seq;
       public          zax    false    288            �           0    0    shipping_line_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.shipping_line_id_seq OWNED BY public.shipping_line.id;
          public          zax    false    287                       1259    17883    shipping_method    TABLE     �  CREATE TABLE public.shipping_method (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    code character varying NOT NULL,
    checker text NOT NULL,
    calculator text NOT NULL,
    "fulfillmentHandlerCode" character varying NOT NULL,
    id integer NOT NULL
);
 #   DROP TABLE public.shipping_method;
       public         heap    zax    false            Y           1259    18302     shipping_method_channels_channel    TABLE     �   CREATE TABLE public.shipping_method_channels_channel (
    "shippingMethodId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 4   DROP TABLE public.shipping_method_channels_channel;
       public         heap    zax    false                       1259    17882    shipping_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.shipping_method_id_seq;
       public          zax    false    286            �           0    0    shipping_method_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.shipping_method_id_seq OWNED BY public.shipping_method.id;
          public          zax    false    285                       1259    17869    shipping_method_translation    TABLE     �  CREATE TABLE public.shipping_method_translation (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "languageCode" character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    id integer NOT NULL,
    "baseId" integer
);
 /   DROP TABLE public.shipping_method_translation;
       public         heap    zax    false                       1259    17868 "   shipping_method_translation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_method_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.shipping_method_translation_id_seq;
       public          zax    false    284            �           0    0 "   shipping_method_translation_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.shipping_method_translation_id_seq OWNED BY public.shipping_method_translation.id;
          public          zax    false    283                       1259    17777    stock_level    TABLE     a  CREATE TABLE public.stock_level (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "stockOnHand" integer NOT NULL,
    "stockAllocated" integer NOT NULL,
    id integer NOT NULL,
    "productVariantId" integer NOT NULL,
    "stockLocationId" integer NOT NULL
);
    DROP TABLE public.stock_level;
       public         heap    zax    false                       1259    17776    stock_level_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_level_id_seq;
       public          zax    false    270            �           0    0    stock_level_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_level_id_seq OWNED BY public.stock_level.id;
          public          zax    false    269                       1259    17766    stock_location    TABLE       CREATE TABLE public.stock_location (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    id integer NOT NULL
);
 "   DROP TABLE public.stock_location;
       public         heap    zax    false            U           1259    18274    stock_location_channels_channel    TABLE     �   CREATE TABLE public.stock_location_channels_channel (
    "stockLocationId" integer NOT NULL,
    "channelId" integer NOT NULL
);
 3   DROP TABLE public.stock_location_channels_channel;
       public         heap    zax    false                       1259    17765    stock_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stock_location_id_seq;
       public          zax    false    268            �           0    0    stock_location_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.stock_location_id_seq OWNED BY public.stock_location.id;
          public          zax    false    267                       1259    17789    stock_movement    TABLE     �  CREATE TABLE public.stock_movement (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    type character varying NOT NULL,
    quantity integer NOT NULL,
    id integer NOT NULL,
    "stockLocationId" integer NOT NULL,
    discriminator character varying NOT NULL,
    "productVariantId" integer,
    "orderLineId" integer
);
 "   DROP TABLE public.stock_movement;
       public         heap    zax    false                       1259    17788    stock_movement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_movement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stock_movement_id_seq;
       public          zax    false    272            �           0    0    stock_movement_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.stock_movement_id_seq OWNED BY public.stock_movement.id;
          public          zax    false    271            ,           1259    17977 	   surcharge    TABLE     �  CREATE TABLE public.surcharge (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    description character varying NOT NULL,
    "listPriceIncludesTax" boolean NOT NULL,
    sku character varying NOT NULL,
    "taxLines" text NOT NULL,
    id integer NOT NULL,
    "listPrice" integer NOT NULL,
    "orderId" integer,
    "orderModificationId" integer
);
    DROP TABLE public.surcharge;
       public         heap    zax    false            +           1259    17976    surcharge_id_seq    SEQUENCE     �   CREATE SEQUENCE public.surcharge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.surcharge_id_seq;
       public          zax    false    300            �           0    0    surcharge_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.surcharge_id_seq OWNED BY public.surcharge.id;
          public          zax    false    299            �            1259    17570    tag    TABLE     �   CREATE TABLE public.tag (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    value character varying NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.tag;
       public         heap    zax    false            �            1259    17569 
   tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.tag_id_seq;
       public          zax    false    236            �           0    0 
   tag_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;
          public          zax    false    235                       1259    17804    tax_category    TABLE       CREATE TABLE public.tax_category (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    name character varying NOT NULL,
    "isDefault" boolean DEFAULT false NOT NULL,
    id integer NOT NULL
);
     DROP TABLE public.tax_category;
       public         heap    zax    false                       1259    17803    tax_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tax_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tax_category_id_seq;
       public          zax    false    274            �           0    0    tax_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tax_category_id_seq OWNED BY public.tax_category.id;
          public          zax    false    273            @           1259    18122    tax_rate    TABLE     u  CREATE TABLE public.tax_rate (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    name character varying NOT NULL,
    enabled boolean NOT NULL,
    value numeric(5,2) NOT NULL,
    id integer NOT NULL,
    "categoryId" integer,
    "zoneId" integer,
    "customerGroupId" integer
);
    DROP TABLE public.tax_rate;
       public         heap    zax    false            ?           1259    18121    tax_rate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tax_rate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tax_rate_id_seq;
       public          zax    false    320            �           0    0    tax_rate_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tax_rate_id_seq OWNED BY public.tax_rate.id;
          public          zax    false    319            �            1259    17532    user    TABLE     r  CREATE TABLE public."user" (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "deletedAt" timestamp without time zone,
    identifier character varying NOT NULL,
    verified boolean DEFAULT false NOT NULL,
    "lastLogin" timestamp without time zone,
    id integer NOT NULL
);
    DROP TABLE public."user";
       public         heap    zax    false            �            1259    17531    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          zax    false    230            �           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          zax    false    229            L           1259    18211    user_roles_role    TABLE     f   CREATE TABLE public.user_roles_role (
    "userId" integer NOT NULL,
    "roleId" integer NOT NULL
);
 #   DROP TABLE public.user_roles_role;
       public         heap    zax    false            �            1259    17489    zone    TABLE     �   CREATE TABLE public.zone (
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    name character varying NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.zone;
       public         heap    zax    false            �            1259    17488    zone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.zone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.zone_id_seq;
       public          zax    false    224            �           0    0    zone_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.zone_id_seq OWNED BY public.zone.id;
          public          zax    false    223            J           1259    18197    zone_members_region    TABLE     l   CREATE TABLE public.zone_members_region (
    "zoneId" integer NOT NULL,
    "regionId" integer NOT NULL
);
 '   DROP TABLE public.zone_members_region;
       public         heap    zax    false            �           2604    18074 
   address id    DEFAULT     h   ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 9   ALTER TABLE public.address ALTER COLUMN id DROP DEFAULT;
       public          zax    false    312    311    312                       2604    17549    administrator id    DEFAULT     t   ALTER TABLE ONLY public.administrator ALTER COLUMN id SET DEFAULT nextval('public.administrator_id_seq'::regclass);
 ?   ALTER TABLE public.administrator ALTER COLUMN id DROP DEFAULT;
       public          zax    false    231    232    232                       2604    17588    asset id    DEFAULT     d   ALTER TABLE ONLY public.asset ALTER COLUMN id SET DEFAULT nextval('public.asset_id_seq'::regclass);
 7   ALTER TABLE public.asset ALTER COLUMN id DROP DEFAULT;
       public          zax    false    238    237    238            �           2604    17446    authentication_method id    DEFAULT     �   ALTER TABLE ONLY public.authentication_method ALTER COLUMN id SET DEFAULT nextval('public.authentication_method_id_seq'::regclass);
 G   ALTER TABLE public.authentication_method ALTER COLUMN id DROP DEFAULT;
       public          zax    false    215    216    216                       2604    17508 
   channel id    DEFAULT     h   ALTER TABLE ONLY public.channel ALTER COLUMN id SET DEFAULT nextval('public.channel_id_seq'::regclass);
 9   ALTER TABLE public.channel ALTER COLUMN id DROP DEFAULT;
       public          zax    false    226    225    226            )           2604    17626    collection id    DEFAULT     n   ALTER TABLE ONLY public.collection ALTER COLUMN id SET DEFAULT nextval('public.collection_id_seq'::regclass);
 <   ALTER TABLE public.collection ALTER COLUMN id DROP DEFAULT;
       public          zax    false    243    244    244                        2604    17599    collection_asset id    DEFAULT     z   ALTER TABLE ONLY public.collection_asset ALTER COLUMN id SET DEFAULT nextval('public.collection_asset_id_seq'::regclass);
 B   ALTER TABLE public.collection_asset ALTER COLUMN id DROP DEFAULT;
       public          zax    false    240    239    240            #           2604    17610    collection_translation id    DEFAULT     �   ALTER TABLE ONLY public.collection_translation ALTER COLUMN id SET DEFAULT nextval('public.collection_translation_id_seq'::regclass);
 H   ALTER TABLE public.collection_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    241    242    242            �           2604    18052    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          zax    false    309    310    310                       2604    17564    customer_group id    DEFAULT     v   ALTER TABLE ONLY public.customer_group ALTER COLUMN id SET DEFAULT nextval('public.customer_group_id_seq'::regclass);
 @   ALTER TABLE public.customer_group ALTER COLUMN id DROP DEFAULT;
       public          zax    false    233    234    234            0           2604    17651    facet id    DEFAULT     d   ALTER TABLE ONLY public.facet ALTER COLUMN id SET DEFAULT nextval('public.facet_id_seq'::regclass);
 7   ALTER TABLE public.facet ALTER COLUMN id DROP DEFAULT;
       public          zax    false    248    247    248            ,           2604    17638    facet_translation id    DEFAULT     |   ALTER TABLE ONLY public.facet_translation ALTER COLUMN id SET DEFAULT nextval('public.facet_translation_id_seq'::regclass);
 C   ALTER TABLE public.facet_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    246    245    246            6           2604    17676    facet_value id    DEFAULT     p   ALTER TABLE ONLY public.facet_value ALTER COLUMN id SET DEFAULT nextval('public.facet_value_id_seq'::regclass);
 =   ALTER TABLE public.facet_value ALTER COLUMN id DROP DEFAULT;
       public          zax    false    252    251    252            3           2604    17664    facet_value_translation id    DEFAULT     �   ALTER TABLE ONLY public.facet_value_translation ALTER COLUMN id SET DEFAULT nextval('public.facet_value_translation_id_seq'::regclass);
 I   ALTER TABLE public.facet_value_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    250    249    250            �           2604    17947    fulfillment id    DEFAULT     p   ALTER TABLE ONLY public.fulfillment ALTER COLUMN id SET DEFAULT nextval('public.fulfillment_id_seq'::regclass);
 =   ALTER TABLE public.fulfillment ALTER COLUMN id DROP DEFAULT;
       public          zax    false    293    294    294            �           2604    18143    global_settings id    DEFAULT     x   ALTER TABLE ONLY public.global_settings ALTER COLUMN id SET DEFAULT nextval('public.global_settings_id_seq'::regclass);
 A   ALTER TABLE public.global_settings ALTER COLUMN id DROP DEFAULT;
       public          zax    false    322    321    322            �           2604    18154    history_entry id    DEFAULT     t   ALTER TABLE ONLY public.history_entry ALTER COLUMN id SET DEFAULT nextval('public.history_entry_id_seq'::regclass);
 ?   ALTER TABLE public.history_entry ALTER COLUMN id DROP DEFAULT;
       public          zax    false    323    324    324            �           2604    18192    job_record id    DEFAULT     n   ALTER TABLE ONLY public.job_record ALTER COLUMN id SET DEFAULT nextval('public.job_record_id_seq'::regclass);
 <   ALTER TABLE public.job_record ALTER COLUMN id DROP DEFAULT;
       public          zax    false    329    328    329            �           2604    18181    job_record_buffer id    DEFAULT     |   ALTER TABLE ONLY public.job_record_buffer ALTER COLUMN id SET DEFAULT nextval('public.job_record_buffer_id_seq'::regclass);
 C   ALTER TABLE public.job_record_buffer ALTER COLUMN id DROP DEFAULT;
       public          zax    false    326    327    327            �           2604    18970    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          zax    false    355    354    355            �           2604    18036    order id    DEFAULT     f   ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public          zax    false    308    307    308            y           2604    17913    order_line id    DEFAULT     n   ALTER TABLE ONLY public.order_line ALTER COLUMN id SET DEFAULT nextval('public.order_line_id_seq'::regclass);
 <   ALTER TABLE public.order_line ALTER COLUMN id DROP DEFAULT;
       public          zax    false    289    290    290            |           2604    17930    order_line_reference id    DEFAULT     �   ALTER TABLE ONLY public.order_line_reference ALTER COLUMN id SET DEFAULT nextval('public.order_line_reference_id_seq'::regclass);
 F   ALTER TABLE public.order_line_reference ALTER COLUMN id DROP DEFAULT;
       public          zax    false    291    292    292            �           2604    17995    order_modification id    DEFAULT     ~   ALTER TABLE ONLY public.order_modification ALTER COLUMN id SET DEFAULT nextval('public.order_modification_id_seq'::regclass);
 D   ALTER TABLE public.order_modification ALTER COLUMN id DROP DEFAULT;
       public          zax    false    302    301    302            �           2604    17970 
   payment id    DEFAULT     h   ALTER TABLE ONLY public.payment ALTER COLUMN id SET DEFAULT nextval('public.payment_id_seq'::regclass);
 9   ALTER TABLE public.payment ALTER COLUMN id DROP DEFAULT;
       public          zax    false    297    298    298            �           2604    18100    payment_method id    DEFAULT     v   ALTER TABLE ONLY public.payment_method ALTER COLUMN id SET DEFAULT nextval('public.payment_method_id_seq'::regclass);
 @   ALTER TABLE public.payment_method ALTER COLUMN id DROP DEFAULT;
       public          zax    false    315    316    316            �           2604    18087    payment_method_translation id    DEFAULT     �   ALTER TABLE ONLY public.payment_method_translation ALTER COLUMN id SET DEFAULT nextval('public.payment_method_translation_id_seq'::regclass);
 L   ALTER TABLE public.payment_method_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    314    313    314            L           2604    17761 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          zax    false    265    266    266            E           2604    17736    product_asset id    DEFAULT     t   ALTER TABLE ONLY public.product_asset ALTER COLUMN id SET DEFAULT nextval('public.product_asset_id_seq'::regclass);
 ?   ALTER TABLE public.product_asset ALTER COLUMN id DROP DEFAULT;
       public          zax    false    262    261    262            <           2604    17700    product_option id    DEFAULT     v   ALTER TABLE ONLY public.product_option ALTER COLUMN id SET DEFAULT nextval('public.product_option_id_seq'::regclass);
 @   ALTER TABLE public.product_option ALTER COLUMN id DROP DEFAULT;
       public          zax    false    255    256    256            B           2604    17724    product_option_group id    DEFAULT     �   ALTER TABLE ONLY public.product_option_group ALTER COLUMN id SET DEFAULT nextval('public.product_option_group_id_seq'::regclass);
 F   ALTER TABLE public.product_option_group ALTER COLUMN id DROP DEFAULT;
       public          zax    false    260    259    260            ?           2604    17712 #   product_option_group_translation id    DEFAULT     �   ALTER TABLE ONLY public.product_option_group_translation ALTER COLUMN id SET DEFAULT nextval('public.product_option_group_translation_id_seq'::regclass);
 R   ALTER TABLE public.product_option_group_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    257    258    258            9           2604    17688    product_option_translation id    DEFAULT     �   ALTER TABLE ONLY public.product_option_translation ALTER COLUMN id SET DEFAULT nextval('public.product_option_translation_id_seq'::regclass);
 L   ALTER TABLE public.product_option_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    254    253    254            H           2604    17747    product_translation id    DEFAULT     �   ALTER TABLE ONLY public.product_translation ALTER COLUMN id SET DEFAULT nextval('public.product_translation_id_seq'::regclass);
 E   ALTER TABLE public.product_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    264    263    264            j           2604    17860    product_variant id    DEFAULT     x   ALTER TABLE ONLY public.product_variant ALTER COLUMN id SET DEFAULT nextval('public.product_variant_id_seq'::regclass);
 A   ALTER TABLE public.product_variant ALTER COLUMN id DROP DEFAULT;
       public          zax    false    281    282    282            ]           2604    17821    product_variant_asset id    DEFAULT     �   ALTER TABLE ONLY public.product_variant_asset ALTER COLUMN id SET DEFAULT nextval('public.product_variant_asset_id_seq'::regclass);
 G   ALTER TABLE public.product_variant_asset ALTER COLUMN id DROP DEFAULT;
       public          zax    false    276    275    276            `           2604    17832    product_variant_price id    DEFAULT     �   ALTER TABLE ONLY public.product_variant_price ALTER COLUMN id SET DEFAULT nextval('public.product_variant_price_id_seq'::regclass);
 G   ALTER TABLE public.product_variant_price ALTER COLUMN id DROP DEFAULT;
       public          zax    false    277    278    278            c           2604    17844    product_variant_translation id    DEFAULT     �   ALTER TABLE ONLY public.product_variant_translation ALTER COLUMN id SET DEFAULT nextval('public.product_variant_translation_id_seq'::regclass);
 M   ALTER TABLE public.product_variant_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    279    280    280            �           2604    18023    promotion id    DEFAULT     l   ALTER TABLE ONLY public.promotion ALTER COLUMN id SET DEFAULT nextval('public.promotion_id_seq'::regclass);
 ;   ALTER TABLE public.promotion ALTER COLUMN id DROP DEFAULT;
       public          zax    false    306    305    306            �           2604    18011    promotion_translation id    DEFAULT     �   ALTER TABLE ONLY public.promotion_translation ALTER COLUMN id SET DEFAULT nextval('public.promotion_translation_id_seq'::regclass);
 G   ALTER TABLE public.promotion_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    304    303    304            �           2604    17958 	   refund id    DEFAULT     f   ALTER TABLE ONLY public.refund ALTER COLUMN id SET DEFAULT nextval('public.refund_id_seq'::regclass);
 8   ALTER TABLE public.refund ALTER COLUMN id DROP DEFAULT;
       public          zax    false    296    295    296            �           2604    17482 	   region id    DEFAULT     f   ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);
 8   ALTER TABLE public.region ALTER COLUMN id DROP DEFAULT;
       public          zax    false    221    222    222            �           2604    17470    region_translation id    DEFAULT     ~   ALTER TABLE ONLY public.region_translation ALTER COLUMN id SET DEFAULT nextval('public.region_translation_id_seq'::regclass);
 D   ALTER TABLE public.region_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    219    220    220                       2604    17526    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          zax    false    227    228    228            �           2604    17459 	   seller id    DEFAULT     f   ALTER TABLE ONLY public.seller ALTER COLUMN id SET DEFAULT nextval('public.seller_id_seq'::regclass);
 8   ALTER TABLE public.seller ALTER COLUMN id DROP DEFAULT;
       public          zax    false    218    217    218            �           2604    18111 
   session id    DEFAULT     h   ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);
 9   ALTER TABLE public.session ALTER COLUMN id DROP DEFAULT;
       public          zax    false    318    317    318            u           2604    17899    shipping_line id    DEFAULT     t   ALTER TABLE ONLY public.shipping_line ALTER COLUMN id SET DEFAULT nextval('public.shipping_line_id_seq'::regclass);
 ?   ALTER TABLE public.shipping_line ALTER COLUMN id DROP DEFAULT;
       public          zax    false    288    287    288            r           2604    17888    shipping_method id    DEFAULT     x   ALTER TABLE ONLY public.shipping_method ALTER COLUMN id SET DEFAULT nextval('public.shipping_method_id_seq'::regclass);
 A   ALTER TABLE public.shipping_method ALTER COLUMN id DROP DEFAULT;
       public          zax    false    286    285    286            o           2604    17876    shipping_method_translation id    DEFAULT     �   ALTER TABLE ONLY public.shipping_method_translation ALTER COLUMN id SET DEFAULT nextval('public.shipping_method_translation_id_seq'::regclass);
 M   ALTER TABLE public.shipping_method_translation ALTER COLUMN id DROP DEFAULT;
       public          zax    false    283    284    284            S           2604    17782    stock_level id    DEFAULT     p   ALTER TABLE ONLY public.stock_level ALTER COLUMN id SET DEFAULT nextval('public.stock_level_id_seq'::regclass);
 =   ALTER TABLE public.stock_level ALTER COLUMN id DROP DEFAULT;
       public          zax    false    269    270    270            P           2604    17771    stock_location id    DEFAULT     v   ALTER TABLE ONLY public.stock_location ALTER COLUMN id SET DEFAULT nextval('public.stock_location_id_seq'::regclass);
 @   ALTER TABLE public.stock_location ALTER COLUMN id DROP DEFAULT;
       public          zax    false    267    268    268            V           2604    17794    stock_movement id    DEFAULT     v   ALTER TABLE ONLY public.stock_movement ALTER COLUMN id SET DEFAULT nextval('public.stock_movement_id_seq'::regclass);
 @   ALTER TABLE public.stock_movement ALTER COLUMN id DROP DEFAULT;
       public          zax    false    272    271    272            �           2604    17982    surcharge id    DEFAULT     l   ALTER TABLE ONLY public.surcharge ALTER COLUMN id SET DEFAULT nextval('public.surcharge_id_seq'::regclass);
 ;   ALTER TABLE public.surcharge ALTER COLUMN id DROP DEFAULT;
       public          zax    false    299    300    300                       2604    17575    tag id    DEFAULT     `   ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);
 5   ALTER TABLE public.tag ALTER COLUMN id DROP DEFAULT;
       public          zax    false    235    236    236            Z           2604    17810    tax_category id    DEFAULT     r   ALTER TABLE ONLY public.tax_category ALTER COLUMN id SET DEFAULT nextval('public.tax_category_id_seq'::regclass);
 >   ALTER TABLE public.tax_category ALTER COLUMN id DROP DEFAULT;
       public          zax    false    273    274    274            �           2604    18127    tax_rate id    DEFAULT     j   ALTER TABLE ONLY public.tax_rate ALTER COLUMN id SET DEFAULT nextval('public.tax_rate_id_seq'::regclass);
 :   ALTER TABLE public.tax_rate ALTER COLUMN id DROP DEFAULT;
       public          zax    false    320    319    320                       2604    17538    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          zax    false    229    230    230                       2604    17494    zone id    DEFAULT     b   ALTER TABLE ONLY public.zone ALTER COLUMN id SET DEFAULT nextval('public.zone_id_seq'::regclass);
 6   ALTER TABLE public.zone ALTER COLUMN id DROP DEFAULT;
       public          zax    false    224    223    224            c          0    18060    address 
   TABLE DATA           �   COPY public.address ("createdAt", "updatedAt", "fullName", company, "streetLine1", "streetLine2", city, province, "postalCode", "phoneNumber", "defaultShippingAddress", "defaultBillingAddress", id, "customerId", "countryId") FROM stdin;
    public          zax    false    312   ��                0    17544    administrator 
   TABLE DATA           �   COPY public.administrator ("createdAt", "updatedAt", "deletedAt", "firstName", "lastName", "emailAddress", id, "userId") FROM stdin;
    public          zax    false    232   ��                0    17581    asset 
   TABLE DATA           �   COPY public.asset ("createdAt", "updatedAt", name, type, "mimeType", width, height, "fileSize", source, preview, "focalPoint", id) FROM stdin;
    public          zax    false    238   O�      y          0    18225    asset_channels_channel 
   TABLE DATA           H   COPY public.asset_channels_channel ("assetId", "channelId") FROM stdin;
    public          zax    false    334         x          0    18218    asset_tags_tag 
   TABLE DATA           <   COPY public.asset_tags_tag ("assetId", "tagId") FROM stdin;
    public          zax    false    333   �                0    17441    authentication_method 
   TABLE DATA           �   COPY public.authentication_method ("createdAt", "updatedAt", identifier, "passwordHash", "verificationToken", "passwordResetToken", "identifierChangeToken", "pendingIdentifier", strategy, "externalIdentifier", metadata, id, type, "userId") FROM stdin;
    public          zax    false    216   �                0    17500    channel 
   TABLE DATA           1  COPY public.channel ("createdAt", "updatedAt", code, token, description, "defaultLanguageCode", "availableLanguageCodes", "defaultCurrencyCode", "availableCurrencyCodes", "trackInventory", "outOfStockThreshold", "pricesIncludeTax", id, "sellerId", "defaultTaxZoneId", "defaultShippingZoneId") FROM stdin;
    public          zax    false    226   G                0    17618 
   collection 
   TABLE DATA           �   COPY public.collection ("createdAt", "updatedAt", "isRoot", "position", "isPrivate", filters, "inheritFilters", id, "parentId", "featuredAssetId") FROM stdin;
    public          zax    false    244   �                0    17594    collection_asset 
   TABLE DATA           o   COPY public.collection_asset ("createdAt", "updatedAt", "assetId", "position", "collectionId", id) FROM stdin;
    public          zax    false    240         {          0    18239    collection_channels_channel 
   TABLE DATA           R   COPY public.collection_channels_channel ("collectionId", "channelId") FROM stdin;
    public          zax    false    336   �      �          0    18358    collection_closure 
   TABLE DATA           H   COPY public.collection_closure (id_ancestor, id_descendant) FROM stdin;
    public          zax    false    353   �      z          0    18232 +   collection_product_variants_product_variant 
   TABLE DATA           i   COPY public.collection_product_variants_product_variant ("collectionId", "productVariantId") FROM stdin;
    public          zax    false    335   D                0    17605    collection_translation 
   TABLE DATA           �   COPY public.collection_translation ("createdAt", "updatedAt", "languageCode", name, slug, description, id, "baseId") FROM stdin;
    public          zax    false    242   �      a          0    18047    customer 
   TABLE DATA           �   COPY public.customer ("createdAt", "updatedAt", "deletedAt", title, "firstName", "lastName", "phoneNumber", "emailAddress", id, "userId") FROM stdin;
    public          zax    false    310   �	      �          0    18344    customer_channels_channel 
   TABLE DATA           N   COPY public.customer_channels_channel ("customerId", "channelId") FROM stdin;
    public          zax    false    351   
                0    17559    customer_group 
   TABLE DATA           L   COPY public.customer_group ("createdAt", "updatedAt", name, id) FROM stdin;
    public          zax    false    234   1
      �          0    18337    customer_groups_customer_group 
   TABLE DATA           Y   COPY public.customer_groups_customer_group ("customerId", "customerGroupId") FROM stdin;
    public          zax    false    350   N
      #          0    17645    facet 
   TABLE DATA           P   COPY public.facet ("createdAt", "updatedAt", "isPrivate", code, id) FROM stdin;
    public          zax    false    248   k
      |          0    18246    facet_channels_channel 
   TABLE DATA           H   COPY public.facet_channels_channel ("facetId", "channelId") FROM stdin;
    public          zax    false    337   �
      !          0    17633    facet_translation 
   TABLE DATA           i   COPY public.facet_translation ("createdAt", "updatedAt", "languageCode", name, id, "baseId") FROM stdin;
    public          zax    false    246         '          0    17671    facet_value 
   TABLE DATA           T   COPY public.facet_value ("createdAt", "updatedAt", code, id, "facetId") FROM stdin;
    public          zax    false    252   �      }          0    18253    facet_value_channels_channel 
   TABLE DATA           S   COPY public.facet_value_channels_channel ("facetValueId", "channelId") FROM stdin;
    public          zax    false    338   C      %          0    17659    facet_value_translation 
   TABLE DATA           o   COPY public.facet_value_translation ("createdAt", "updatedAt", "languageCode", name, id, "baseId") FROM stdin;
    public          zax    false    250   �      Q          0    17941    fulfillment 
   TABLE DATA           q   COPY public.fulfillment ("createdAt", "updatedAt", state, "trackingCode", method, "handlerCode", id) FROM stdin;
    public          zax    false    294   �      m          0    18136    global_settings 
   TABLE DATA           �   COPY public.global_settings ("createdAt", "updatedAt", "availableLanguages", "trackInventory", "outOfStockThreshold", id) FROM stdin;
    public          zax    false    322         o          0    18149    history_entry 
   TABLE DATA           �   COPY public.history_entry ("createdAt", "updatedAt", type, "isPublic", data, id, discriminator, "administratorId", "customerId", "orderId") FROM stdin;
    public          zax    false    324   W      t          0    18187 
   job_record 
   TABLE DATA           �   COPY public.job_record ("createdAt", "updatedAt", "queueName", data, state, progress, result, error, "startedAt", "settledAt", "isSettled", retries, attempts, id) FROM stdin;
    public          zax    false    329   t      r          0    18176    job_record_buffer 
   TABLE DATA           Z   COPY public.job_record_buffer ("createdAt", "updatedAt", "bufferId", job, id) FROM stdin;
    public          zax    false    327   M*      �          0    18967 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          zax    false    355   j*      _          0    18029    order 
   TABLE DATA             COPY public."order" ("createdAt", "updatedAt", type, code, state, active, "orderPlacedAt", "couponCodes", "shippingAddress", "billingAddress", "currencyCode", id, "aggregateOrderId", "customerId", "taxZoneId", "subTotal", "subTotalWithTax", shipping, "shippingWithTax") FROM stdin;
    public          zax    false    308   �*      �          0    18330    order_channels_channel 
   TABLE DATA           H   COPY public.order_channels_channel ("orderId", "channelId") FROM stdin;
    public          zax    false    349   �*      �          0    18323    order_fulfillments_fulfillment 
   TABLE DATA           T   COPY public.order_fulfillments_fulfillment ("orderId", "fulfillmentId") FROM stdin;
    public          zax    false    348   �*      M          0    17907 
   order_line 
   TABLE DATA             COPY public.order_line ("createdAt", "updatedAt", quantity, "orderPlacedQuantity", "listPriceIncludesTax", adjustments, "taxLines", id, "sellerChannelId", "shippingLineId", "productVariantId", "initialListPrice", "listPrice", "taxCategoryId", "featuredAssetId", "orderId") FROM stdin;
    public          zax    false    290   +      O          0    17925    order_line_reference 
   TABLE DATA           �   COPY public.order_line_reference ("createdAt", "updatedAt", quantity, id, "fulfillmentId", "modificationId", "orderLineId", "refundId", discriminator) FROM stdin;
    public          zax    false    292   +      Y          0    17990    order_modification 
   TABLE DATA           �   COPY public.order_modification ("createdAt", "updatedAt", note, "shippingAddressChange", "billingAddressChange", id, "priceChange", "orderId", "paymentId", "refundId") FROM stdin;
    public          zax    false    302   ;+      �          0    18316    order_promotions_promotion 
   TABLE DATA           N   COPY public.order_promotions_promotion ("orderId", "promotionId") FROM stdin;
    public          zax    false    347   X+      U          0    17965    payment 
   TABLE DATA           �   COPY public.payment ("createdAt", "updatedAt", method, state, "errorMessage", "transactionId", metadata, id, amount, "orderId") FROM stdin;
    public          zax    false    298   u+      g          0    18094    payment_method 
   TABLE DATA           g   COPY public.payment_method ("createdAt", "updatedAt", code, enabled, checker, handler, id) FROM stdin;
    public          zax    false    316   �+      �          0    18351    payment_method_channels_channel 
   TABLE DATA           Y   COPY public.payment_method_channels_channel ("paymentMethodId", "channelId") FROM stdin;
    public          zax    false    352   ',      e          0    18082    payment_method_translation 
   TABLE DATA              COPY public.payment_method_translation ("createdAt", "updatedAt", "languageCode", name, description, id, "baseId") FROM stdin;
    public          zax    false    314   H,      5          0    17755    product 
   TABLE DATA           }   COPY public.product ("createdAt", "updatedAt", "deletedAt", enabled, id, "featuredAssetId", "customFieldsBrand") FROM stdin;
    public          zax    false    266   �,      1          0    17731    product_asset 
   TABLE DATA           i   COPY public.product_asset ("createdAt", "updatedAt", "assetId", "position", "productId", id) FROM stdin;
    public          zax    false    262   /                0    18267    product_channels_channel 
   TABLE DATA           L   COPY public.product_channels_channel ("productId", "channelId") FROM stdin;
    public          zax    false    340   �1      ~          0    18260     product_facet_values_facet_value 
   TABLE DATA           W   COPY public.product_facet_values_facet_value ("productId", "facetValueId") FROM stdin;
    public          zax    false    339   _2      +          0    17695    product_option 
   TABLE DATA           d   COPY public.product_option ("createdAt", "updatedAt", "deletedAt", code, id, "groupId") FROM stdin;
    public          zax    false    256   �3      /          0    17719    product_option_group 
   TABLE DATA           l   COPY public.product_option_group ("createdAt", "updatedAt", "deletedAt", code, id, "productId") FROM stdin;
    public          zax    false    260   46      -          0    17707     product_option_group_translation 
   TABLE DATA           x   COPY public.product_option_group_translation ("createdAt", "updatedAt", "languageCode", name, id, "baseId") FROM stdin;
    public          zax    false    258   �7      )          0    17683    product_option_translation 
   TABLE DATA           r   COPY public.product_option_translation ("createdAt", "updatedAt", "languageCode", name, id, "baseId") FROM stdin;
    public          zax    false    254   9      3          0    17742    product_translation 
   TABLE DATA           ~   COPY public.product_translation ("createdAt", "updatedAt", "languageCode", name, slug, description, id, "baseId") FROM stdin;
    public          zax    false    264   <      E          0    17851    product_variant 
   TABLE DATA           �   COPY public.product_variant ("createdAt", "updatedAt", "deletedAt", enabled, sku, "outOfStockThreshold", "useGlobalOutOfStockThreshold", "trackInventory", id, "productId", "featuredAssetId", "taxCategoryId") FROM stdin;
    public          zax    false    282   aX      ?          0    17816    product_variant_asset 
   TABLE DATA           x   COPY public.product_variant_asset ("createdAt", "updatedAt", "assetId", "position", "productVariantId", id) FROM stdin;
    public          zax    false    276   �^      �          0    18295     product_variant_channels_channel 
   TABLE DATA           [   COPY public.product_variant_channels_channel ("productVariantId", "channelId") FROM stdin;
    public          zax    false    344   �^      �          0    18288 (   product_variant_facet_values_facet_value 
   TABLE DATA           f   COPY public.product_variant_facet_values_facet_value ("productVariantId", "facetValueId") FROM stdin;
    public          zax    false    343   [_      �          0    18281 &   product_variant_options_product_option 
   TABLE DATA           g   COPY public.product_variant_options_product_option ("productVariantId", "productOptionId") FROM stdin;
    public          zax    false    342   �_      A          0    17827    product_variant_price 
   TABLE DATA           ~   COPY public.product_variant_price ("createdAt", "updatedAt", "currencyCode", id, "channelId", price, "variantId") FROM stdin;
    public          zax    false    278   D`      C          0    17839    product_variant_translation 
   TABLE DATA           s   COPY public.product_variant_translation ("createdAt", "updatedAt", "languageCode", name, id, "baseId") FROM stdin;
    public          zax    false    280   Oe      ]          0    18018 	   promotion 
   TABLE DATA           �   COPY public.promotion ("createdAt", "updatedAt", "deletedAt", "startsAt", "endsAt", "couponCode", "perCustomerUsageLimit", "usageLimit", enabled, conditions, actions, "priorityScore", id) FROM stdin;
    public          zax    false    306   �l      �          0    18309    promotion_channels_channel 
   TABLE DATA           P   COPY public.promotion_channels_channel ("promotionId", "channelId") FROM stdin;
    public          zax    false    346   �l      [          0    18006    promotion_translation 
   TABLE DATA           z   COPY public.promotion_translation ("createdAt", "updatedAt", "languageCode", name, description, id, "baseId") FROM stdin;
    public          zax    false    304   m      S          0    17953    refund 
   TABLE DATA           �   COPY public.refund ("createdAt", "updatedAt", method, reason, state, "transactionId", metadata, id, "paymentId", items, shipping, adjustment, total) FROM stdin;
    public          zax    false    296   0m      	          0    17477    region 
   TABLE DATA           n   COPY public.region ("createdAt", "updatedAt", code, type, enabled, id, "parentId", discriminator) FROM stdin;
    public          zax    false    222   Mm                0    17465    region_translation 
   TABLE DATA           j   COPY public.region_translation ("createdAt", "updatedAt", "languageCode", name, id, "baseId") FROM stdin;
    public          zax    false    220   Vy                0    17521    role 
   TABLE DATA           \   COPY public.role ("createdAt", "updatedAt", code, description, permissions, id) FROM stdin;
    public          zax    false    228   �      v          0    18204    role_channels_channel 
   TABLE DATA           F   COPY public.role_channels_channel ("roleId", "channelId") FROM stdin;
    public          zax    false    331   U�      p          0    18163    search_index_item 
   TABLE DATA           �  COPY public.search_index_item ("languageCode", enabled, "productName", "productVariantName", description, slug, sku, "facetIds", "facetValueIds", "collectionIds", "collectionSlugs", "channelIds", "productPreview", "productPreviewFocalPoint", "productVariantPreview", "productVariantPreviewFocalPoint", "inStock", "productInStock", "productVariantId", "channelId", "productId", "productAssetId", "productVariantAssetId", price, "priceWithTax") FROM stdin;
    public          zax    false    325   ��                0    17454    seller 
   TABLE DATA           Q   COPY public.seller ("createdAt", "updatedAt", "deletedAt", name, id) FROM stdin;
    public          zax    false    218   v�      i          0    18106    session 
   TABLE DATA           �   COPY public.session ("createdAt", "updatedAt", token, expires, invalidated, "authenticationStrategy", id, "activeOrderId", "activeChannelId", type, "userId") FROM stdin;
    public          zax    false    318   ÷      K          0    17894    shipping_line 
   TABLE DATA           �   COPY public.shipping_line ("createdAt", "updatedAt", "listPriceIncludesTax", adjustments, "taxLines", id, "shippingMethodId", "listPrice", "orderId") FROM stdin;
    public          zax    false    288   �      I          0    17883    shipping_method 
   TABLE DATA           �   COPY public.shipping_method ("createdAt", "updatedAt", "deletedAt", code, checker, calculator, "fulfillmentHandlerCode", id) FROM stdin;
    public          zax    false    286   �      �          0    18302     shipping_method_channels_channel 
   TABLE DATA           [   COPY public.shipping_method_channels_channel ("shippingMethodId", "channelId") FROM stdin;
    public          zax    false    345   �      G          0    17869    shipping_method_translation 
   TABLE DATA           �   COPY public.shipping_method_translation ("createdAt", "updatedAt", "languageCode", name, description, id, "baseId") FROM stdin;
    public          zax    false    284   %�      9          0    17777    stock_level 
   TABLE DATA           �   COPY public.stock_level ("createdAt", "updatedAt", "stockOnHand", "stockAllocated", id, "productVariantId", "stockLocationId") FROM stdin;
    public          zax    false    270   ��      7          0    17766    stock_location 
   TABLE DATA           Y   COPY public.stock_location ("createdAt", "updatedAt", name, description, id) FROM stdin;
    public          zax    false    268   D�      �          0    18274    stock_location_channels_channel 
   TABLE DATA           Y   COPY public.stock_location_channels_channel ("stockLocationId", "channelId") FROM stdin;
    public          zax    false    341   ��      ;          0    17789    stock_movement 
   TABLE DATA           �   COPY public.stock_movement ("createdAt", "updatedAt", type, quantity, id, "stockLocationId", discriminator, "productVariantId", "orderLineId") FROM stdin;
    public          zax    false    272   ſ      W          0    17977 	   surcharge 
   TABLE DATA           �   COPY public.surcharge ("createdAt", "updatedAt", description, "listPriceIncludesTax", sku, "taxLines", id, "listPrice", "orderId", "orderModificationId") FROM stdin;
    public          zax    false    300   f�                0    17570    tag 
   TABLE DATA           B   COPY public.tag ("createdAt", "updatedAt", value, id) FROM stdin;
    public          zax    false    236   ��      =          0    17804    tax_category 
   TABLE DATA           W   COPY public.tax_category ("createdAt", "updatedAt", name, "isDefault", id) FROM stdin;
    public          zax    false    274   ��      k          0    18122    tax_rate 
   TABLE DATA           �   COPY public.tax_rate ("createdAt", "updatedAt", name, enabled, value, id, "categoryId", "zoneId", "customerGroupId") FROM stdin;
    public          zax    false    320   �                0    17532    user 
   TABLE DATA           n   COPY public."user" ("createdAt", "updatedAt", "deletedAt", identifier, verified, "lastLogin", id) FROM stdin;
    public          zax    false    230   j�      w          0    18211    user_roles_role 
   TABLE DATA           =   COPY public.user_roles_role ("userId", "roleId") FROM stdin;
    public          zax    false    332   ��                0    17489    zone 
   TABLE DATA           B   COPY public.zone ("createdAt", "updatedAt", name, id) FROM stdin;
    public          zax    false    224   ��      u          0    18197    zone_members_region 
   TABLE DATA           C   COPY public.zone_members_region ("zoneId", "regionId") FROM stdin;
    public          zax    false    330   w�      �           0    0    address_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.address_id_seq', 1, false);
          public          zax    false    311            �           0    0    administrator_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.administrator_id_seq', 1, true);
          public          zax    false    231            �           0    0    asset_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.asset_id_seq', 54, true);
          public          zax    false    237            �           0    0    authentication_method_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.authentication_method_id_seq', 1, true);
          public          zax    false    215            �           0    0    channel_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.channel_id_seq', 1, true);
          public          zax    false    225            �           0    0    collection_asset_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.collection_asset_id_seq', 9, true);
          public          zax    false    239            �           0    0    collection_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.collection_id_seq', 10, true);
          public          zax    false    243            �           0    0    collection_translation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.collection_translation_id_seq', 10, true);
          public          zax    false    241            �           0    0    customer_group_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_group_id_seq', 1, false);
          public          zax    false    233            �           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          zax    false    309            �           0    0    facet_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.facet_id_seq', 4, true);
          public          zax    false    247            �           0    0    facet_translation_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.facet_translation_id_seq', 4, true);
          public          zax    false    245            �           0    0    facet_value_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.facet_value_id_seq', 39, true);
          public          zax    false    251            �           0    0    facet_value_translation_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.facet_value_translation_id_seq', 39, true);
          public          zax    false    249            �           0    0    fulfillment_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fulfillment_id_seq', 1, false);
          public          zax    false    293            �           0    0    global_settings_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.global_settings_id_seq', 1, true);
          public          zax    false    321            �           0    0    history_entry_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.history_entry_id_seq', 1, false);
          public          zax    false    323            �           0    0    job_record_buffer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.job_record_buffer_id_seq', 1, false);
          public          zax    false    326            �           0    0    job_record_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.job_record_id_seq', 21, true);
          public          zax    false    328            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);
          public          zax    false    354            �           0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 1, false);
          public          zax    false    307            �           0    0    order_line_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.order_line_id_seq', 1, false);
          public          zax    false    289            �           0    0    order_line_reference_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.order_line_reference_id_seq', 1, false);
          public          zax    false    291            �           0    0    order_modification_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.order_modification_id_seq', 1, false);
          public          zax    false    301            �           0    0    payment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.payment_id_seq', 1, false);
          public          zax    false    297            �           0    0    payment_method_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.payment_method_id_seq', 1, true);
          public          zax    false    315            �           0    0 !   payment_method_translation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.payment_method_translation_id_seq', 1, true);
          public          zax    false    313            �           0    0    product_asset_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_asset_id_seq', 54, true);
          public          zax    false    261            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 54, true);
          public          zax    false    265            �           0    0    product_option_group_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.product_option_group_id_seq', 15, true);
          public          zax    false    259            �           0    0 '   product_option_group_translation_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.product_option_group_translation_id_seq', 15, true);
          public          zax    false    257            �           0    0    product_option_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_option_id_seq', 47, true);
          public          zax    false    255            �           0    0 !   product_option_translation_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.product_option_translation_id_seq', 47, true);
          public          zax    false    253            �           0    0    product_translation_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.product_translation_id_seq', 54, true);
          public          zax    false    263            �           0    0    product_variant_asset_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.product_variant_asset_id_seq', 1, false);
          public          zax    false    275            �           0    0    product_variant_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_variant_id_seq', 88, true);
          public          zax    false    281            �           0    0    product_variant_price_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.product_variant_price_id_seq', 88, true);
          public          zax    false    277            �           0    0 "   product_variant_translation_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.product_variant_translation_id_seq', 88, true);
          public          zax    false    279            �           0    0    promotion_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.promotion_id_seq', 1, false);
          public          zax    false    305            �           0    0    promotion_translation_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.promotion_translation_id_seq', 1, false);
          public          zax    false    303            �           0    0    refund_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.refund_id_seq', 1, false);
          public          zax    false    295            �           0    0    region_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.region_id_seq', 248, true);
          public          zax    false    221            �           0    0    region_translation_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.region_translation_id_seq', 248, true);
          public          zax    false    219            �           0    0    role_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.role_id_seq', 5, true);
          public          zax    false    227            �           0    0    seller_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.seller_id_seq', 1, true);
          public          zax    false    217            �           0    0    session_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.session_id_seq', 3, true);
          public          zax    false    317            �           0    0    shipping_line_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.shipping_line_id_seq', 1, false);
          public          zax    false    287            �           0    0    shipping_method_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.shipping_method_id_seq', 2, true);
          public          zax    false    285            �           0    0 "   shipping_method_translation_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.shipping_method_translation_id_seq', 2, true);
          public          zax    false    283                        0    0    stock_level_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.stock_level_id_seq', 88, true);
          public          zax    false    269                       0    0    stock_location_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.stock_location_id_seq', 1, true);
          public          zax    false    267                       0    0    stock_movement_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.stock_movement_id_seq', 88, true);
          public          zax    false    271                       0    0    surcharge_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.surcharge_id_seq', 1, false);
          public          zax    false    299                       0    0 
   tag_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tag_id_seq', 1, false);
          public          zax    false    235                       0    0    tax_category_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tax_category_id_seq', 3, true);
          public          zax    false    273                       0    0    tax_rate_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tax_rate_id_seq', 15, true);
          public          zax    false    319                       0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          zax    false    229                       0    0    zone_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.zone_id_seq', 5, true);
          public          zax    false    223            �           2606    18320 9   order_promotions_promotion PK_001dfe7435f3946fbc2d66a4e92 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_promotions_promotion
    ADD CONSTRAINT "PK_001dfe7435f3946fbc2d66a4e92" PRIMARY KEY ("orderId", "promotionId");
 e   ALTER TABLE ONLY public.order_promotions_promotion DROP CONSTRAINT "PK_001dfe7435f3946fbc2d66a4e92";
       public            zax    false    347    347            K           2606    17917 )   order_line PK_01a7c973d9f30479647e44f9892 
   CONSTRAINT     i   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "PK_01a7c973d9f30479647e44f9892" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "PK_01a7c973d9f30479647e44f9892";
       public            zax    false    290            h           2606    18015 4   promotion_translation PK_0b4fd34d2fc7abc06189494a178 
   CONSTRAINT     t   ALTER TABLE ONLY public.promotion_translation
    ADD CONSTRAINT "PK_0b4fd34d2fc7abc06189494a178" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.promotion_translation DROP CONSTRAINT "PK_0b4fd34d2fc7abc06189494a178";
       public            zax    false    304            �           2606    18243 :   collection_channels_channel PK_0e292d80228c9b4a114d2b09476 
   CONSTRAINT     �   ALTER TABLE ONLY public.collection_channels_channel
    ADD CONSTRAINT "PK_0e292d80228c9b4a114d2b09476" PRIMARY KEY ("collectionId", "channelId");
 f   ALTER TABLE ONLY public.collection_channels_channel DROP CONSTRAINT "PK_0e292d80228c9b4a114d2b09476";
       public            zax    false    336    336            �           2606    18341 =   customer_groups_customer_group PK_0f902789cba691ce7ebbc9fcaa6 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_groups_customer_group
    ADD CONSTRAINT "PK_0f902789cba691ce7ebbc9fcaa6" PRIMARY KEY ("customerId", "customerGroupId");
 i   ALTER TABLE ONLY public.customer_groups_customer_group DROP CONSTRAINT "PK_0f902789cba691ce7ebbc9fcaa6";
       public            zax    false    350    350            o           2606    18042 $   order PK_1031171c13130102495201e3e20 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "PK_1031171c13130102495201e3e20";
       public            zax    false    308            �           2606    17592 $   asset PK_1209d107fe21482beaea51b745e 
   CONSTRAINT     d   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT "PK_1209d107fe21482beaea51b745e" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.asset DROP CONSTRAINT "PK_1209d107fe21482beaea51b745e";
       public            zax    false    238            �           2606    18299 ?   product_variant_channels_channel PK_1a10ca648c3d73c0f2b455ae191 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_channels_channel
    ADD CONSTRAINT "PK_1a10ca648c3d73c0f2b455ae191" PRIMARY KEY ("productVariantId", "channelId");
 k   ALTER TABLE ONLY public.product_variant_channels_channel DROP CONSTRAINT "PK_1a10ca648c3d73c0f2b455ae191";
       public            zax    false    344    344            :           2606    17864 .   product_variant PK_1ab69c9935c61f7c70791ae0a9f 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f";
       public            zax    false    282            R           2606    17934 3   order_line_reference PK_21891d07accb8fa87e11165bca2 
   CONSTRAINT     s   ALTER TABLE ONLY public.order_line_reference
    ADD CONSTRAINT "PK_21891d07accb8fa87e11165bca2" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.order_line_reference DROP CONSTRAINT "PK_21891d07accb8fa87e11165bca2";
       public            zax    false    292            �           2606    18131 '   tax_rate PK_23b71b53f650c0b39e99ccef4fd 
   CONSTRAINT     g   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd";
       public            zax    false    320            +           2606    17814 +   tax_category PK_2432988f825c336d5584a96cded 
   CONSTRAINT     k   ALTER TABLE ONLY public.tax_category
    ADD CONSTRAINT "PK_2432988f825c336d5584a96cded" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.tax_category DROP CONSTRAINT "PK_2432988f825c336d5584a96cded";
       public            zax    false    274            �           2606    18348 8   customer_channels_channel PK_27e2fa538c020889d32a0a784e8 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_channels_channel
    ADD CONSTRAINT "PK_27e2fa538c020889d32a0a784e8" PRIMARY KEY ("customerId", "channelId");
 d   ALTER TABLE ONLY public.customer_channels_channel DROP CONSTRAINT "PK_27e2fa538c020889d32a0a784e8";
       public            zax    false    351    351            �           2606    17463 %   seller PK_36445a9c6e794945a4a4a8d3c9d 
   CONSTRAINT     e   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT "PK_36445a9c6e794945a4a4a8d3c9d" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.seller DROP CONSTRAINT "PK_36445a9c6e794945a4a4a8d3c9d";
       public            zax    false    218            �           2606    18334 5   order_channels_channel PK_39853134b20afe9dfb25de18292 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_channels_channel
    ADD CONSTRAINT "PK_39853134b20afe9dfb25de18292" PRIMARY KEY ("orderId", "channelId");
 a   ALTER TABLE ONLY public.order_channels_channel DROP CONSTRAINT "PK_39853134b20afe9dfb25de18292";
       public            zax    false    349    349            �           2606    17474 1   region_translation PK_3e0c9619cafbe579eeecfd88abc 
   CONSTRAINT     q   ALTER TABLE ONLY public.region_translation
    ADD CONSTRAINT "PK_3e0c9619cafbe579eeecfd88abc" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.region_translation DROP CONSTRAINT "PK_3e0c9619cafbe579eeecfd88abc";
       public            zax    false    220            �           2606    18327 =   order_fulfillments_fulfillment PK_414600087d71aee1583bc517590 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_fulfillments_fulfillment
    ADD CONSTRAINT "PK_414600087d71aee1583bc517590" PRIMARY KEY ("orderId", "fulfillmentId");
 i   ALTER TABLE ONLY public.order_fulfillments_fulfillment DROP CONSTRAINT "PK_414600087d71aee1583bc517590";
       public            zax    false    348    348                       2606    17716 ?   product_option_group_translation PK_44ab19f118175288dff147c4a00 
   CONSTRAINT        ALTER TABLE ONLY public.product_option_group_translation
    ADD CONSTRAINT "PK_44ab19f118175288dff147c4a00" PRIMARY KEY (id);
 k   ALTER TABLE ONLY public.product_option_group_translation DROP CONSTRAINT "PK_44ab19f118175288dff147c4a00";
       public            zax    false    258            �           2606    18313 9   promotion_channels_channel PK_4b34f9b7bf95a8d3dc7f7f6dd23 
   CONSTRAINT     �   ALTER TABLE ONLY public.promotion_channels_channel
    ADD CONSTRAINT "PK_4b34f9b7bf95a8d3dc7f7f6dd23" PRIMARY KEY ("promotionId", "channelId");
 e   ALTER TABLE ONLY public.promotion_channels_channel DROP CONSTRAINT "PK_4b34f9b7bf95a8d3dc7f7f6dd23";
       public            zax    false    346    346            5           2606    17848 :   product_variant_translation PK_4b7f882e2b669800bed7ed065f0 
   CONSTRAINT     z   ALTER TABLE ONLY public.product_variant_translation
    ADD CONSTRAINT "PK_4b7f882e2b669800bed7ed065f0" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.product_variant_translation DROP CONSTRAINT "PK_4b7f882e2b669800bed7ed065f0";
       public            zax    false    280                       2606    17704 -   product_option PK_4cf3c467e9bc764bdd32c4cd938 
   CONSTRAINT     m   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938";
       public            zax    false    256            T           2606    17951 *   fulfillment PK_50c102da132afffae660585981f 
   CONSTRAINT     j   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "PK_50c102da132afffae660585981f" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "PK_50c102da132afffae660585981f";
       public            zax    false    294            �           2606    18236 J   collection_product_variants_product_variant PK_50c5ed0504ded53967be811f633 
   CONSTRAINT     �   ALTER TABLE ONLY public.collection_product_variants_product_variant
    ADD CONSTRAINT "PK_50c5ed0504ded53967be811f633" PRIMARY KEY ("collectionId", "productVariantId");
 v   ALTER TABLE ONLY public.collection_product_variants_product_variant DROP CONSTRAINT "PK_50c5ed0504ded53967be811f633";
       public            zax    false    335    335            �           2606    17512 &   channel PK_590f33ee6ee7d76437acf362e39 
   CONSTRAINT     f   ALTER TABLE ONLY public.channel
    ADD CONSTRAINT "PK_590f33ee6ee7d76437acf362e39" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.channel DROP CONSTRAINT "PK_590f33ee6ee7d76437acf362e39";
       public            zax    false    226            �           2606    17486 %   region PK_5f48ffc3af96bc486f5f3f3a6da 
   CONSTRAINT     e   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da";
       public            zax    false    222                       2606    17751 2   product_translation PK_62d00fbc92e7a495701d6fee9d5 
   CONSTRAINT     r   ALTER TABLE ONLY public.product_translation
    ADD CONSTRAINT "PK_62d00fbc92e7a495701d6fee9d5" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.product_translation DROP CONSTRAINT "PK_62d00fbc92e7a495701d6fee9d5";
       public            zax    false    264            �           2606    18171 0   search_index_item PK_6470dd173311562c89e5f80b30e 
   CONSTRAINT     �   ALTER TABLE ONLY public.search_index_item
    ADD CONSTRAINT "PK_6470dd173311562c89e5f80b30e" PRIMARY KEY ("languageCode", "productVariantId", "channelId");
 \   ALTER TABLE ONLY public.search_index_item DROP CONSTRAINT "PK_6470dd173311562c89e5f80b30e";
       public            zax    false    325    325    325            �           2606    18257 ;   facet_value_channels_channel PK_653fb72a256f100f52c573e419f 
   CONSTRAINT     �   ALTER TABLE ONLY public.facet_value_channels_channel
    ADD CONSTRAINT "PK_653fb72a256f100f52c573e419f" PRIMARY KEY ("facetValueId", "channelId");
 g   ALTER TABLE ONLY public.facet_value_channels_channel DROP CONSTRAINT "PK_653fb72a256f100f52c573e419f";
       public            zax    false    338    338                       2606    17692 9   product_option_translation PK_69c79a84baabcad3c7328576ac0 
   CONSTRAINT     y   ALTER TABLE ONLY public.product_option_translation
    ADD CONSTRAINT "PK_69c79a84baabcad3c7328576ac0" PRIMARY KEY (id);
 e   ALTER TABLE ONLY public.product_option_translation DROP CONSTRAINT "PK_69c79a84baabcad3c7328576ac0";
       public            zax    false    254            �           2606    18208 4   role_channels_channel PK_6fb9277e9f11bb8a63445c36242 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_channels_channel
    ADD CONSTRAINT "PK_6fb9277e9f11bb8a63445c36242" PRIMARY KEY ("roleId", "channelId");
 `   ALTER TABLE ONLY public.role_channels_channel DROP CONSTRAINT "PK_6fb9277e9f11bb8a63445c36242";
       public            zax    false    331    331            �           2606    18271 7   product_channels_channel PK_722acbcc06403e693b518d2c345 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_channels_channel
    ADD CONSTRAINT "PK_722acbcc06403e693b518d2c345" PRIMARY KEY ("productId", "channelId");
 c   ALTER TABLE ONLY public.product_channels_channel DROP CONSTRAINT "PK_722acbcc06403e693b518d2c345";
       public            zax    false    340    340            |           2606    18104 -   payment_method PK_7744c2b2dd932c9cf42f2b9bc3a 
   CONSTRAINT     m   ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT "PK_7744c2b2dd932c9cf42f2b9bc3a" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.payment_method DROP CONSTRAINT "PK_7744c2b2dd932c9cf42f2b9bc3a";
       public            zax    false    316            �           2606    18196 )   job_record PK_88ce3ea0c9dca8b571450b457a7 
   CONSTRAINT     i   ALTER TABLE ONLY public.job_record
    ADD CONSTRAINT "PK_88ce3ea0c9dca8b571450b457a7" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.job_record DROP CONSTRAINT "PK_88ce3ea0c9dca8b571450b457a7";
       public            zax    false    329            �           2606    17568 -   customer_group PK_88e7da3ff7262d9e0a35aa3664e 
   CONSTRAINT     m   ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.customer_group DROP CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e";
       public            zax    false    234            #           2606    17784 *   stock_level PK_88ff7d9dfb57dc9d435e365eb69 
   CONSTRAINT     j   ALTER TABLE ONLY public.stock_level
    ADD CONSTRAINT "PK_88ff7d9dfb57dc9d435e365eb69" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.stock_level DROP CONSTRAINT "PK_88ff7d9dfb57dc9d435e365eb69";
       public            zax    false    270            C           2606    17903 ,   shipping_line PK_890522bfc44a4b6eb7cb1e52609 
   CONSTRAINT     l   ALTER TABLE ONLY public.shipping_line
    ADD CONSTRAINT "PK_890522bfc44a4b6eb7cb1e52609" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.shipping_line DROP CONSTRAINT "PK_890522bfc44a4b6eb7cb1e52609";
       public            zax    false    288            �           2606    18974 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            zax    false    355            �           2606    17579 "   tag PK_8e4052373c579afc1471f526760 
   CONSTRAINT     b   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT "PK_8e4052373c579afc1471f526760" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tag DROP CONSTRAINT "PK_8e4052373c579afc1471f526760";
       public            zax    false    236            �           2606    18185 0   job_record_buffer PK_9a1cfa02511065b32053efceeff 
   CONSTRAINT     p   ALTER TABLE ONLY public.job_record_buffer
    ADD CONSTRAINT "PK_9a1cfa02511065b32053efceeff" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.job_record_buffer DROP CONSTRAINT "PK_9a1cfa02511065b32053efceeff";
       public            zax    false    327            �           2606    18362 1   collection_closure PK_9dda38e2273a7744b8f655782a5 
   CONSTRAINT     �   ALTER TABLE ONLY public.collection_closure
    ADD CONSTRAINT "PK_9dda38e2273a7744b8f655782a5" PRIMARY KEY (id_ancestor, id_descendant);
 ]   ALTER TABLE ONLY public.collection_closure DROP CONSTRAINT "PK_9dda38e2273a7744b8f655782a5";
       public            zax    false    353    353            )           2606    17798 -   stock_movement PK_9fe1232f916686ae8cf00294749 
   CONSTRAINT     m   ALTER TABLE ONLY public.stock_movement
    ADD CONSTRAINT "PK_9fe1232f916686ae8cf00294749" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.stock_movement DROP CONSTRAINT "PK_9fe1232f916686ae8cf00294749";
       public            zax    false    272                       2606    17668 6   facet_value_translation PK_a09fdeb788deff7a9ed827a6160 
   CONSTRAINT     v   ALTER TABLE ONLY public.facet_value_translation
    ADD CONSTRAINT "PK_a09fdeb788deff7a9ed827a6160" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.facet_value_translation DROP CONSTRAINT "PK_a09fdeb788deff7a9ed827a6160";
       public            zax    false    250            �           2606    17655 $   facet PK_a0ebfe3c68076820c6886aa9ff3 
   CONSTRAINT     d   ALTER TABLE ONLY public.facet
    ADD CONSTRAINT "PK_a0ebfe3c68076820c6886aa9ff3" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.facet DROP CONSTRAINT "PK_a0ebfe3c68076820c6886aa9ff3";
       public            zax    false    248            �           2606    18292 G   product_variant_facet_values_facet_value PK_a28474836b2feeffcef98c806e1 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_facet_values_facet_value
    ADD CONSTRAINT "PK_a28474836b2feeffcef98c806e1" PRIMARY KEY ("productVariantId", "facetValueId");
 s   ALTER TABLE ONLY public.product_variant_facet_values_facet_value DROP CONSTRAINT "PK_a28474836b2feeffcef98c806e1";
       public            zax    false    343    343            �           2606    17601 /   collection_asset PK_a2adab6fd086adfb7858f1f110c 
   CONSTRAINT     o   ALTER TABLE ONLY public.collection_asset
    ADD CONSTRAINT "PK_a2adab6fd086adfb7858f1f110c" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.collection_asset DROP CONSTRAINT "PK_a2adab6fd086adfb7858f1f110c";
       public            zax    false    240            ^           2606    17986 (   surcharge PK_a62b89257bcc802b5d77346f432 
   CONSTRAINT     h   ALTER TABLE ONLY public.surcharge
    ADD CONSTRAINT "PK_a62b89257bcc802b5d77346f432" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.surcharge DROP CONSTRAINT "PK_a62b89257bcc802b5d77346f432";
       public            zax    false    300            �           2606    17642 0   facet_translation PK_a6902cc1dcbb5e52a980f0189ad 
   CONSTRAINT     p   ALTER TABLE ONLY public.facet_translation
    ADD CONSTRAINT "PK_a6902cc1dcbb5e52a980f0189ad" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.facet_translation DROP CONSTRAINT "PK_a6902cc1dcbb5e52a980f0189ad";
       public            zax    false    246            q           2606    18056 '   customer PK_a7a13f4cacb744524e44dfdad32 
   CONSTRAINT     g   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32";
       public            zax    false    310            �           2606    17630 )   collection PK_ad3f485bbc99d875491f44d7c85 
   CONSTRAINT     i   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT "PK_ad3f485bbc99d875491f44d7c85" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.collection DROP CONSTRAINT "PK_ad3f485bbc99d875491f44d7c85";
       public            zax    false    244                       2606    17775 -   stock_location PK_adf770067d0df1421f525fa25cc 
   CONSTRAINT     m   ALTER TABLE ONLY public.stock_location
    ADD CONSTRAINT "PK_adf770067d0df1421f525fa25cc" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.stock_location DROP CONSTRAINT "PK_adf770067d0df1421f525fa25cc";
       public            zax    false    268            z           2606    18091 9   payment_method_translation PK_ae5ae0af71ae8d15da9eb75768b 
   CONSTRAINT     y   ALTER TABLE ONLY public.payment_method_translation
    ADD CONSTRAINT "PK_ae5ae0af71ae8d15da9eb75768b" PRIMARY KEY (id);
 e   ALTER TABLE ONLY public.payment_method_translation DROP CONSTRAINT "PK_ae5ae0af71ae8d15da9eb75768b";
       public            zax    false    314            �           2606    17530 #   role PK_b36bcfe02fc8de3c57a8b2391c2 
   CONSTRAINT     c   ALTER TABLE ONLY public.role
    ADD CONSTRAINT "PK_b36bcfe02fc8de3c57a8b2391c2" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.role DROP CONSTRAINT "PK_b36bcfe02fc8de3c57a8b2391c2";
       public            zax    false    228            �           2606    18215 .   user_roles_role PK_b47cd6c84ee205ac5a713718292 
   CONSTRAINT     ~   ALTER TABLE ONLY public.user_roles_role
    ADD CONSTRAINT "PK_b47cd6c84ee205ac5a713718292" PRIMARY KEY ("userId", "roleId");
 Z   ALTER TABLE ONLY public.user_roles_role DROP CONSTRAINT "PK_b47cd6c84ee205ac5a713718292";
       public            zax    false    332    332            �           2606    18158 ,   history_entry PK_b65bd95b0d2929668589d57b97a 
   CONSTRAINT     l   ALTER TABLE ONLY public.history_entry
    ADD CONSTRAINT "PK_b65bd95b0d2929668589d57b97a" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.history_entry DROP CONSTRAINT "PK_b65bd95b0d2929668589d57b97a";
       public            zax    false    324            =           2606    17880 :   shipping_method_translation PK_b862a1fac1c6e1fd201eadadbcb 
   CONSTRAINT     z   ALTER TABLE ONLY public.shipping_method_translation
    ADD CONSTRAINT "PK_b862a1fac1c6e1fd201eadadbcb" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.shipping_method_translation DROP CONSTRAINT "PK_b862a1fac1c6e1fd201eadadbcb";
       public            zax    false    284            ?           2606    17892 .   shipping_method PK_b9b0adfad3c6b99229c1e7d4865 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865";
       public            zax    false    286            2           2606    17836 4   product_variant_price PK_ba659ff2940702124e799c5c854 
   CONSTRAINT     t   ALTER TABLE ONLY public.product_variant_price
    ADD CONSTRAINT "PK_ba659ff2940702124e799c5c854" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.product_variant_price DROP CONSTRAINT "PK_ba659ff2940702124e799c5c854";
       public            zax    false    278            �           2606    17614 5   collection_translation PK_bb49cfcde50401eb5f463a84dac 
   CONSTRAINT     u   ALTER TABLE ONLY public.collection_translation
    ADD CONSTRAINT "PK_bb49cfcde50401eb5f463a84dac" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.collection_translation DROP CONSTRAINT "PK_bb49cfcde50401eb5f463a84dac";
       public            zax    false    242            �           2606    17498 #   zone PK_bd3989e5a3c3fb5ed546dfaf832 
   CONSTRAINT     c   ALTER TABLE ONLY public.zone
    ADD CONSTRAINT "PK_bd3989e5a3c3fb5ed546dfaf832" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.zone DROP CONSTRAINT "PK_bd3989e5a3c3fb5ed546dfaf832";
       public            zax    false    224                       2606    17763 &   product PK_bebc9158e480b949565b4dc7a82 
   CONSTRAINT     f   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82";
       public            zax    false    266            �           2606    18222 -   asset_tags_tag PK_c4113b84381e953901fa5553654 
   CONSTRAINT     }   ALTER TABLE ONLY public.asset_tags_tag
    ADD CONSTRAINT "PK_c4113b84381e953901fa5553654" PRIMARY KEY ("assetId", "tagId");
 Y   ALTER TABLE ONLY public.asset_tags_tag DROP CONSTRAINT "PK_c4113b84381e953901fa5553654";
       public            zax    false    333    333                       2606    17738 ,   product_asset PK_c56a83efd14ec4175532e1867fc 
   CONSTRAINT     l   ALTER TABLE ONLY public.product_asset
    ADD CONSTRAINT "PK_c56a83efd14ec4175532e1867fc" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.product_asset DROP CONSTRAINT "PK_c56a83efd14ec4175532e1867fc";
       public            zax    false    262            �           2606    18285 E   product_variant_options_product_option PK_c57de5cb6bb74504180604a00c0 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_options_product_option
    ADD CONSTRAINT "PK_c57de5cb6bb74504180604a00c0" PRIMARY KEY ("productVariantId", "productOptionId");
 q   ALTER TABLE ONLY public.product_variant_options_product_option DROP CONSTRAINT "PK_c57de5cb6bb74504180604a00c0";
       public            zax    false    342    342            �           2606    18355 >   payment_method_channels_channel PK_c83e4a201c0402ce5cdb170a9a2 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_method_channels_channel
    ADD CONSTRAINT "PK_c83e4a201c0402ce5cdb170a9a2" PRIMARY KEY ("paymentMethodId", "channelId");
 j   ALTER TABLE ONLY public.payment_method_channels_channel DROP CONSTRAINT "PK_c83e4a201c0402ce5cdb170a9a2";
       public            zax    false    352    352            �           2606    18306 ?   shipping_method_channels_channel PK_c92b2b226a6ee87888d8dcd8bd6 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_channels_channel
    ADD CONSTRAINT "PK_c92b2b226a6ee87888d8dcd8bd6" PRIMARY KEY ("shippingMethodId", "channelId");
 k   ALTER TABLE ONLY public.shipping_method_channels_channel DROP CONSTRAINT "PK_c92b2b226a6ee87888d8dcd8bd6";
       public            zax    false    345    345            �           2606    17542 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            zax    false    230            /           2606    17823 4   product_variant_asset PK_cb1e33ae13779da176f8b03a5d3 
   CONSTRAINT     t   ALTER TABLE ONLY public.product_variant_asset
    ADD CONSTRAINT "PK_cb1e33ae13779da176f8b03a5d3" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.product_variant_asset DROP CONSTRAINT "PK_cb1e33ae13779da176f8b03a5d3";
       public            zax    false    276            a           2606    17999 1   order_modification PK_cccf2e1612694eeb1e5b6760ffa 
   CONSTRAINT     q   ALTER TABLE ONLY public.order_modification
    ADD CONSTRAINT "PK_cccf2e1612694eeb1e5b6760ffa" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.order_modification DROP CONSTRAINT "PK_cccf2e1612694eeb1e5b6760ffa";
       public            zax    false    302                       2606    17680 *   facet_value PK_d231e8eecc7e1a6059e1da7d325 
   CONSTRAINT     j   ALTER TABLE ONLY public.facet_value
    ADD CONSTRAINT "PK_d231e8eecc7e1a6059e1da7d325" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.facet_value DROP CONSTRAINT "PK_d231e8eecc7e1a6059e1da7d325";
       public            zax    false    252            �           2606    18264 ?   product_facet_values_facet_value PK_d57f06b38805181019d75662aa6 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_facet_values_facet_value
    ADD CONSTRAINT "PK_d57f06b38805181019d75662aa6" PRIMARY KEY ("productId", "facetValueId");
 k   ALTER TABLE ONLY public.product_facet_values_facet_value DROP CONSTRAINT "PK_d57f06b38805181019d75662aa6";
       public            zax    false    339    339                       2606    17728 3   product_option_group PK_d76e92fdbbb5a2e6752ffd4a2c1 
   CONSTRAINT     s   ALTER TABLE ONLY public.product_option_group
    ADD CONSTRAINT "PK_d76e92fdbbb5a2e6752ffd4a2c1" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.product_option_group DROP CONSTRAINT "PK_d76e92fdbbb5a2e6752ffd4a2c1";
       public            zax    false    260            w           2606    18078 &   address PK_d92de1f82754668b5f5f5dd4fd5 
   CONSTRAINT     f   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5";
       public            zax    false    312            �           2606    18229 5   asset_channels_channel PK_d943908a39e32952e8425d2f1ba 
   CONSTRAINT     �   ALTER TABLE ONLY public.asset_channels_channel
    ADD CONSTRAINT "PK_d943908a39e32952e8425d2f1ba" PRIMARY KEY ("assetId", "channelId");
 a   ALTER TABLE ONLY public.asset_channels_channel DROP CONSTRAINT "PK_d943908a39e32952e8425d2f1ba";
       public            zax    false    334    334            �           2606    18250 5   facet_channels_channel PK_df0579886093b2f830c159adfde 
   CONSTRAINT     �   ALTER TABLE ONLY public.facet_channels_channel
    ADD CONSTRAINT "PK_df0579886093b2f830c159adfde" PRIMARY KEY ("facetId", "channelId");
 a   ALTER TABLE ONLY public.facet_channels_channel DROP CONSTRAINT "PK_df0579886093b2f830c159adfde";
       public            zax    false    337    337            �           2606    17450 4   authentication_method PK_e204686018c3c60f6164e385081 
   CONSTRAINT     t   ALTER TABLE ONLY public.authentication_method
    ADD CONSTRAINT "PK_e204686018c3c60f6164e385081" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.authentication_method DROP CONSTRAINT "PK_e204686018c3c60f6164e385081";
       public            zax    false    216            �           2606    18278 >   stock_location_channels_channel PK_e6f8b2d61ff58c51505c38da8a0 
   CONSTRAINT     �   ALTER TABLE ONLY public.stock_location_channels_channel
    ADD CONSTRAINT "PK_e6f8b2d61ff58c51505c38da8a0" PRIMARY KEY ("stockLocationId", "channelId");
 j   ALTER TABLE ONLY public.stock_location_channels_channel DROP CONSTRAINT "PK_e6f8b2d61ff58c51505c38da8a0";
       public            zax    false    341    341            �           2606    17553 ,   administrator PK_ee58e71b3b4008b20ddc7b3092b 
   CONSTRAINT     l   ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT "PK_ee58e71b3b4008b20ddc7b3092b" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.administrator DROP CONSTRAINT "PK_ee58e71b3b4008b20ddc7b3092b";
       public            zax    false    232            W           2606    17962 %   refund PK_f1cefa2e60d99b206c46c1116e5 
   CONSTRAINT     e   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5";
       public            zax    false    296            �           2606    18115 &   session PK_f55da76ac1c3ac420f444d2ff11 
   CONSTRAINT     f   ALTER TABLE ONLY public.session
    ADD CONSTRAINT "PK_f55da76ac1c3ac420f444d2ff11" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.session DROP CONSTRAINT "PK_f55da76ac1c3ac420f444d2ff11";
       public            zax    false    318            j           2606    18027 (   promotion PK_fab3630e0789a2002f1cadb7d38 
   CONSTRAINT     h   ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT "PK_fab3630e0789a2002f1cadb7d38" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.promotion DROP CONSTRAINT "PK_fab3630e0789a2002f1cadb7d38";
       public            zax    false    306            �           2606    18201 2   zone_members_region PK_fc4eaa2236c4d4f61db0ae3826f 
   CONSTRAINT     �   ALTER TABLE ONLY public.zone_members_region
    ADD CONSTRAINT "PK_fc4eaa2236c4d4f61db0ae3826f" PRIMARY KEY ("zoneId", "regionId");
 ^   ALTER TABLE ONLY public.zone_members_region DROP CONSTRAINT "PK_fc4eaa2236c4d4f61db0ae3826f";
       public            zax    false    330    330            Z           2606    17974 &   payment PK_fcaec7df5adf9cac408c686b2ab 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab";
       public            zax    false    298            �           2606    18147 .   global_settings PK_fec5e2c0bf238e30b25d4a82976 
   CONSTRAINT     n   ALTER TABLE ONLY public.global_settings
    ADD CONSTRAINT "PK_fec5e2c0bf238e30b25d4a82976" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.global_settings DROP CONSTRAINT "PK_fec5e2c0bf238e30b25d4a82976";
       public            zax    false    322            �           2606    17557 ,   administrator REL_1966e18ce6a39a82b19204704d 
   CONSTRAINT     m   ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT "REL_1966e18ce6a39a82b19204704d" UNIQUE ("userId");
 X   ALTER TABLE ONLY public.administrator DROP CONSTRAINT "REL_1966e18ce6a39a82b19204704d";
       public            zax    false    232            s           2606    18058 '   customer REL_3f62b42ed23958b120c235f74d 
   CONSTRAINT     h   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "REL_3f62b42ed23958b120c235f74d" UNIQUE ("userId");
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "REL_3f62b42ed23958b120c235f74d";
       public            zax    false    310            c           2606    18001 1   order_modification REL_ad2991fa2933ed8b7f86a71633 
   CONSTRAINT     u   ALTER TABLE ONLY public.order_modification
    ADD CONSTRAINT "REL_ad2991fa2933ed8b7f86a71633" UNIQUE ("paymentId");
 ]   ALTER TABLE ONLY public.order_modification DROP CONSTRAINT "REL_ad2991fa2933ed8b7f86a71633";
       public            zax    false    302            e           2606    18003 1   order_modification REL_cb66b63b6e97613013795eadbd 
   CONSTRAINT     t   ALTER TABLE ONLY public.order_modification
    ADD CONSTRAINT "REL_cb66b63b6e97613013795eadbd" UNIQUE ("refundId");
 ]   ALTER TABLE ONLY public.order_modification DROP CONSTRAINT "REL_cb66b63b6e97613013795eadbd";
       public            zax    false    302            �           2606    17514 &   channel UQ_06127ac6c6d913f4320759971db 
   CONSTRAINT     c   ALTER TABLE ONLY public.channel
    ADD CONSTRAINT "UQ_06127ac6c6d913f4320759971db" UNIQUE (code);
 R   ALTER TABLE ONLY public.channel DROP CONSTRAINT "UQ_06127ac6c6d913f4320759971db";
       public            zax    false    226            �           2606    17657 $   facet UQ_0c9a5d053fdf4ebb5f0490b40fd 
   CONSTRAINT     a   ALTER TABLE ONLY public.facet
    ADD CONSTRAINT "UQ_0c9a5d053fdf4ebb5f0490b40fd" UNIQUE (code);
 P   ALTER TABLE ONLY public.facet DROP CONSTRAINT "UQ_0c9a5d053fdf4ebb5f0490b40fd";
       public            zax    false    248            �           2606    17555 ,   administrator UQ_154f5c538b1576ccc277b1ed631 
   CONSTRAINT     s   ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT "UQ_154f5c538b1576ccc277b1ed631" UNIQUE ("emailAddress");
 X   ALTER TABLE ONLY public.administrator DROP CONSTRAINT "UQ_154f5c538b1576ccc277b1ed631";
       public            zax    false    232            �           2606    17516 &   channel UQ_842699fce4f3470a7d06d89de88 
   CONSTRAINT     d   ALTER TABLE ONLY public.channel
    ADD CONSTRAINT "UQ_842699fce4f3470a7d06d89de88" UNIQUE (token);
 R   ALTER TABLE ONLY public.channel DROP CONSTRAINT "UQ_842699fce4f3470a7d06d89de88";
       public            zax    false    226            �           1259    17451    IDX_00cbe87bc0d4e36758d61bd31d    INDEX     f   CREATE INDEX "IDX_00cbe87bc0d4e36758d61bd31d" ON public.authentication_method USING btree ("userId");
 4   DROP INDEX public."IDX_00cbe87bc0d4e36758d61bd31d";
       public            zax    false    216            L           1259    17936    IDX_06b02fb482b188823e419d37bd    INDEX     l   CREATE INDEX "IDX_06b02fb482b188823e419d37bd" ON public.order_line_reference USING btree ("fulfillmentId");
 4   DROP INDEX public."IDX_06b02fb482b188823e419d37bd";
       public            zax    false    292            �           1259    18266    IDX_06e7d73673ee630e8ec50d0b29    INDEX     w   CREATE INDEX "IDX_06e7d73673ee630e8ec50d0b29" ON public.product_facet_values_facet_value USING btree ("facetValueId");
 4   DROP INDEX public."IDX_06e7d73673ee630e8ec50d0b29";
       public            zax    false    339                       1259    17740    IDX_0d1294f5c22a56da7845ebab72    INDEX     a   CREATE INDEX "IDX_0d1294f5c22a56da7845ebab72" ON public.product_asset USING btree ("productId");
 4   DROP INDEX public."IDX_0d1294f5c22a56da7845ebab72";
       public            zax    false    262            �           1259    18294    IDX_0d641b761ed1dce4ef3cd33d55    INDEX        CREATE INDEX "IDX_0d641b761ed1dce4ef3cd33d55" ON public.product_variant_facet_values_facet_value USING btree ("facetValueId");
 4   DROP INDEX public."IDX_0d641b761ed1dce4ef3cd33d55";
       public            zax    false    343            �           1259    18335    IDX_0d8e5c204480204a60e151e485    INDEX     h   CREATE INDEX "IDX_0d8e5c204480204a60e151e485" ON public.order_channels_channel USING btree ("orderId");
 4   DROP INDEX public."IDX_0d8e5c204480204a60e151e485";
       public            zax    false    349            6           1259    17865    IDX_0e6f516053cf982b537836e21c    INDEX     i   CREATE INDEX "IDX_0e6f516053cf982b537836e21c" ON public.product_variant USING btree ("featuredAssetId");
 4   DROP INDEX public."IDX_0e6f516053cf982b537836e21c";
       public            zax    false    282            �           1259    18315    IDX_0eaaf0f4b6c69afde1e88ffb52    INDEX     n   CREATE INDEX "IDX_0eaaf0f4b6c69afde1e88ffb52" ON public.promotion_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_0eaaf0f4b6c69afde1e88ffb52";
       public            zax    false    346            ,           1259    17824    IDX_10b5a2e3dee0e30b1e26c32f5c    INDEX     g   CREATE INDEX "IDX_10b5a2e3dee0e30b1e26c32f5c" ON public.product_variant_asset USING btree ("assetId");
 4   DROP INDEX public."IDX_10b5a2e3dee0e30b1e26c32f5c";
       public            zax    false    276            k           1259    18045    IDX_124456e637cca7a415897dce65    INDEX     \   CREATE INDEX "IDX_124456e637cca7a415897dce65" ON public."order" USING btree ("customerId");
 4   DROP INDEX public."IDX_124456e637cca7a415897dce65";
       public            zax    false    308            [           1259    17987    IDX_154eb685f9b629033bd266df7f    INDEX     [   CREATE INDEX "IDX_154eb685f9b629033bd266df7f" ON public.surcharge USING btree ("orderId");
 4   DROP INDEX public."IDX_154eb685f9b629033bd266df7f";
       public            zax    false    300            �           1259    18231    IDX_16ca9151a5153f1169da5b7b7e    INDEX     j   CREATE INDEX "IDX_16ca9151a5153f1169da5b7b7e" ON public.asset_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_16ca9151a5153f1169da5b7b7e";
       public            zax    false    334            �           1259    17475    IDX_1afd722b943c81310705fc3e61    INDEX     c   CREATE INDEX "IDX_1afd722b943c81310705fc3e61" ON public.region_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_1afd722b943c81310705fc3e61";
       public            zax    false    220            U           1259    17963    IDX_1c6932a756108788a361e7d440    INDEX     Z   CREATE INDEX "IDX_1c6932a756108788a361e7d440" ON public.refund USING btree ("paymentId");
 4   DROP INDEX public."IDX_1c6932a756108788a361e7d440";
       public            zax    false    296            f           1259    18016    IDX_1cc009e9ab2263a35544064561    INDEX     f   CREATE INDEX "IDX_1cc009e9ab2263a35544064561" ON public.promotion_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_1cc009e9ab2263a35544064561";
       public            zax    false    304            _           1259    18004    IDX_1df5bc14a47ef24d2e681f4559    INDEX     d   CREATE INDEX "IDX_1df5bc14a47ef24d2e681f4559" ON public.order_modification USING btree ("orderId");
 4   DROP INDEX public."IDX_1df5bc14a47ef24d2e681f4559";
       public            zax    false    302            �           1259    17603    IDX_1ed9e48dfbf74b5fcbb35d3d68    INDEX     g   CREATE INDEX "IDX_1ed9e48dfbf74b5fcbb35d3d68" ON public.collection_asset USING btree ("collectionId");
 4   DROP INDEX public."IDX_1ed9e48dfbf74b5fcbb35d3d68";
       public            zax    false    240            M           1259    17937    IDX_22b818af8722746fb9f206068c    INDEX     m   CREATE INDEX "IDX_22b818af8722746fb9f206068c" ON public.order_line_reference USING btree ("modificationId");
 4   DROP INDEX public."IDX_22b818af8722746fb9f206068c";
       public            zax    false    292            }           1259    18116    IDX_232f8e85d7633bd6ddfad42169    INDEX     \   CREATE UNIQUE INDEX "IDX_232f8e85d7633bd6ddfad42169" ON public.session USING btree (token);
 4   DROP INDEX public."IDX_232f8e85d7633bd6ddfad42169";
       public            zax    false    318            D           1259    17923    IDX_239cfca2a55b98b90b6bef2e44    INDEX     \   CREATE INDEX "IDX_239cfca2a55b98b90b6bef2e44" ON public.order_line USING btree ("orderId");
 4   DROP INDEX public."IDX_239cfca2a55b98b90b6bef2e44";
       public            zax    false    290            �           1259    18272    IDX_26d12be3b5fec6c4adb1d79284    INDEX     l   CREATE INDEX "IDX_26d12be3b5fec6c4adb1d79284" ON public.product_channels_channel USING btree ("productId");
 4   DROP INDEX public."IDX_26d12be3b5fec6c4adb1d79284";
       public            zax    false    340            �           1259    18252    IDX_2a8ea404d05bf682516184db7d    INDEX     j   CREATE INDEX "IDX_2a8ea404d05bf682516184db7d" ON public.facet_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_2a8ea404d05bf682516184db7d";
       public            zax    false    337            �           1259    18322    IDX_2c26b988769c0e3b0120bdef31    INDEX     p   CREATE INDEX "IDX_2c26b988769c0e3b0120bdef31" ON public.order_promotions_promotion USING btree ("promotionId");
 4   DROP INDEX public."IDX_2c26b988769c0e3b0120bdef31";
       public            zax    false    347            N           1259    17938    IDX_30019aa65b17fe9ee962893199    INDEX     g   CREATE INDEX "IDX_30019aa65b17fe9ee962893199" ON public.order_line_reference USING btree ("refundId");
 4   DROP INDEX public."IDX_30019aa65b17fe9ee962893199";
       public            zax    false    292            �           1259    18279    IDX_39513fd02a573c848d23bee587    INDEX     y   CREATE INDEX "IDX_39513fd02a573c848d23bee587" ON public.stock_location_channels_channel USING btree ("stockLocationId");
 4   DROP INDEX public."IDX_39513fd02a573c848d23bee587";
       public            zax    false    341            �           1259    18161    IDX_3a05127e67435b4d2332ded7c9    INDEX     _   CREATE INDEX "IDX_3a05127e67435b4d2332ded7c9" ON public.history_entry USING btree ("orderId");
 4   DROP INDEX public."IDX_3a05127e67435b4d2332ded7c9";
       public            zax    false    324            ~           1259    18119    IDX_3d2f174ef04fb312fdebd0ddc5    INDEX     X   CREATE INDEX "IDX_3d2f174ef04fb312fdebd0ddc5" ON public.session USING btree ("userId");
 4   DROP INDEX public."IDX_3d2f174ef04fb312fdebd0ddc5";
       public            zax    false    318                        1259    17669    IDX_3d6e45823b65de808a66cb1423    INDEX     h   CREATE INDEX "IDX_3d6e45823b65de808a66cb1423" ON public.facet_value_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_3d6e45823b65de808a66cb1423";
       public            zax    false    250            3           1259    17849    IDX_420f4d6fb75d38b9dca79bc43b    INDEX     l   CREATE INDEX "IDX_420f4d6fb75d38b9dca79bc43b" ON public.product_variant_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_420f4d6fb75d38b9dca79bc43b";
       public            zax    false    280            �           1259    18202    IDX_433f45158e4e2b2a2f344714b2    INDEX     d   CREATE INDEX "IDX_433f45158e4e2b2a2f344714b2" ON public.zone_members_region USING btree ("zoneId");
 4   DROP INDEX public."IDX_433f45158e4e2b2a2f344714b2";
       public            zax    false    330            �           1259    18160    IDX_43ac602f839847fdb91101f30e    INDEX     b   CREATE INDEX "IDX_43ac602f839847fdb91101f30e" ON public.history_entry USING btree ("customerId");
 4   DROP INDEX public."IDX_43ac602f839847fdb91101f30e";
       public            zax    false    324            �           1259    18364    IDX_457784c710f8ac9396010441f6    INDEX     h   CREATE INDEX "IDX_457784c710f8ac9396010441f6" ON public.collection_closure USING btree (id_descendant);
 4   DROP INDEX public."IDX_457784c710f8ac9396010441f6";
       public            zax    false    353            O           1259    17939    IDX_49a8632be8cef48b076446b8b9    INDEX     j   CREATE INDEX "IDX_49a8632be8cef48b076446b8b9" ON public.order_line_reference USING btree (discriminator);
 4   DROP INDEX public."IDX_49a8632be8cef48b076446b8b9";
       public            zax    false    292            �           1259    18329    IDX_4add5a5796e1582dec2877b289    INDEX     v   CREATE INDEX "IDX_4add5a5796e1582dec2877b289" ON public.order_fulfillments_fulfillment USING btree ("fulfillmentId");
 4   DROP INDEX public."IDX_4add5a5796e1582dec2877b289";
       public            zax    false    348            �           1259    18217    IDX_4be2f7adf862634f5f803d246b    INDEX     `   CREATE INDEX "IDX_4be2f7adf862634f5f803d246b" ON public.user_roles_role USING btree ("roleId");
 4   DROP INDEX public."IDX_4be2f7adf862634f5f803d246b";
       public            zax    false    332            �           1259    17602    IDX_51da53b26522dc0525762d2de8    INDEX     b   CREATE INDEX "IDX_51da53b26522dc0525762d2de8" ON public.collection_asset USING btree ("assetId");
 4   DROP INDEX public."IDX_51da53b26522dc0525762d2de8";
       public            zax    false    240            �           1259    18286    IDX_526f0131260eec308a3bd2b61b    INDEX     �   CREATE INDEX "IDX_526f0131260eec308a3bd2b61b" ON public.product_variant_options_product_option USING btree ("productVariantId");
 4   DROP INDEX public."IDX_526f0131260eec308a3bd2b61b";
       public            zax    false    342                       1259    17739    IDX_5888ac17b317b93378494a1062    INDEX     _   CREATE INDEX "IDX_5888ac17b317b93378494a1062" ON public.product_asset USING btree ("assetId");
 4   DROP INDEX public."IDX_5888ac17b317b93378494a1062";
       public            zax    false    262            �           1259    18356    IDX_5bcb569635ce5407eb3f264487    INDEX     y   CREATE INDEX "IDX_5bcb569635ce5407eb3f264487" ON public.payment_method_channels_channel USING btree ("paymentMethodId");
 4   DROP INDEX public."IDX_5bcb569635ce5407eb3f264487";
       public            zax    false    352            �           1259    18216    IDX_5f9286e6c25594c6b88c108db7    INDEX     `   CREATE INDEX "IDX_5f9286e6c25594c6b88c108db7" ON public.user_roles_role USING btree ("userId");
 4   DROP INDEX public."IDX_5f9286e6c25594c6b88c108db7";
       public            zax    false    332            x           1259    18092    IDX_66187f782a3e71b9e0f5b50b68    INDEX     k   CREATE INDEX "IDX_66187f782a3e71b9e0f5b50b68" ON public.payment_method_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_66187f782a3e71b9e0f5b50b68";
       public            zax    false    314            �           1259    18321    IDX_67be0e40122ab30a62a9817efe    INDEX     l   CREATE INDEX "IDX_67be0e40122ab30a62a9817efe" ON public.order_promotions_promotion USING btree ("orderId");
 4   DROP INDEX public."IDX_67be0e40122ab30a62a9817efe";
       public            zax    false    347            E           1259    17918    IDX_6901d8715f5ebadd764466f7bd    INDEX     d   CREATE INDEX "IDX_6901d8715f5ebadd764466f7bd" ON public.order_line USING btree ("sellerChannelId");
 4   DROP INDEX public."IDX_6901d8715f5ebadd764466f7bd";
       public            zax    false    290            �           1259    18293    IDX_69567bc225b6bbbd732d6c5455    INDEX     �   CREATE INDEX "IDX_69567bc225b6bbbd732d6c5455" ON public.product_variant_facet_values_facet_value USING btree ("productVariantId");
 4   DROP INDEX public."IDX_69567bc225b6bbbd732d6c5455";
       public            zax    false    343            �           1259    18265    IDX_6a0558e650d75ae639ff38e413    INDEX     t   CREATE INDEX "IDX_6a0558e650d75ae639ff38e413" ON public.product_facet_values_facet_value USING btree ("productId");
 4   DROP INDEX public."IDX_6a0558e650d75ae639ff38e413";
       public            zax    false    339            �           1259    18314    IDX_6d9e2c39ab12391aaa374bcdaa    INDEX     p   CREATE INDEX "IDX_6d9e2c39ab12391aaa374bcdaa" ON public.promotion_channels_channel USING btree ("promotionId");
 4   DROP INDEX public."IDX_6d9e2c39ab12391aaa374bcdaa";
       public            zax    false    346            7           1259    17867    IDX_6e420052844edf3a5506d863ce    INDEX     c   CREATE INDEX "IDX_6e420052844edf3a5506d863ce" ON public.product_variant USING btree ("productId");
 4   DROP INDEX public."IDX_6e420052844edf3a5506d863ce";
       public            zax    false    282            �           1259    18237    IDX_6faa7b72422d9c4679e2f186ad    INDEX     �   CREATE INDEX "IDX_6faa7b72422d9c4679e2f186ad" ON public.collection_product_variants_product_variant USING btree ("collectionId");
 4   DROP INDEX public."IDX_6faa7b72422d9c4679e2f186ad";
       public            zax    false    335            �           1259    18172    IDX_6fb55742e13e8082954d0436dc    INDEX     g   CREATE INDEX "IDX_6fb55742e13e8082954d0436dc" ON public.search_index_item USING btree ("productName");
 4   DROP INDEX public."IDX_6fb55742e13e8082954d0436dc";
       public            zax    false    325            �           1259    18245    IDX_7216ab24077cf5cbece7857dbb    INDEX     o   CREATE INDEX "IDX_7216ab24077cf5cbece7857dbb" ON public.collection_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_7216ab24077cf5cbece7857dbb";
       public            zax    false    336            �           1259    17631    IDX_7256fef1bb42f1b38156b7449f    INDEX     d   CREATE INDEX "IDX_7256fef1bb42f1b38156b7449f" ON public.collection USING btree ("featuredAssetId");
 4   DROP INDEX public."IDX_7256fef1bb42f1b38156b7449f";
       public            zax    false    244            l           1259    18044    IDX_729b3eea7ce540930dbb706949    INDEX     [   CREATE UNIQUE INDEX "IDX_729b3eea7ce540930dbb706949" ON public."order" USING btree (code);
 4   DROP INDEX public."IDX_729b3eea7ce540930dbb706949";
       public            zax    false    308            m           1259    18043    IDX_73a78d7df09541ac5eba620d18    INDEX     b   CREATE INDEX "IDX_73a78d7df09541ac5eba620d18" ON public."order" USING btree ("aggregateOrderId");
 4   DROP INDEX public."IDX_73a78d7df09541ac5eba620d18";
       public            zax    false    308            F           1259    17921    IDX_77be94ce9ec650446617946227    INDEX     b   CREATE INDEX "IDX_77be94ce9ec650446617946227" ON public.order_line USING btree ("taxCategoryId");
 4   DROP INDEX public."IDX_77be94ce9ec650446617946227";
       public            zax    false    290                       1259    18117    IDX_7a75399a4f4ffa48ee02e98c05    INDEX     _   CREATE INDEX "IDX_7a75399a4f4ffa48ee02e98c05" ON public.session USING btree ("activeOrderId");
 4   DROP INDEX public."IDX_7a75399a4f4ffa48ee02e98c05";
       public            zax    false    318            P           1259    17935    IDX_7d57857922dfc7303604697dbe    INDEX     j   CREATE INDEX "IDX_7d57857922dfc7303604697dbe" ON public.order_line_reference USING btree ("orderLineId");
 4   DROP INDEX public."IDX_7d57857922dfc7303604697dbe";
       public            zax    false    292                       1259    17753    IDX_7dbc75cb4e8b002620c4dbfdac    INDEX     d   CREATE INDEX "IDX_7dbc75cb4e8b002620c4dbfdac" ON public.product_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_7dbc75cb4e8b002620c4dbfdac";
       public            zax    false    264            �           1259    18132    IDX_7ee3306d7638aa85ca90d67219    INDEX     ]   CREATE INDEX "IDX_7ee3306d7638aa85ca90d67219" ON public.tax_rate USING btree ("categoryId");
 4   DROP INDEX public."IDX_7ee3306d7638aa85ca90d67219";
       public            zax    false    320                       1259    17787    IDX_7fc20486b8cfd33dc84c96e168    INDEX     �   CREATE UNIQUE INDEX "IDX_7fc20486b8cfd33dc84c96e168" ON public.stock_level USING btree ("productVariantId", "stockLocationId");
 4   DROP INDEX public."IDX_7fc20486b8cfd33dc84c96e168";
       public            zax    false    270    270            ;           1259    17881    IDX_85ec26c71067ebc84adcd98d1a    INDEX     l   CREATE INDEX "IDX_85ec26c71067ebc84adcd98d1a" ON public.shipping_method_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_85ec26c71067ebc84adcd98d1a";
       public            zax    false    284            �           1259    18343    IDX_85feea3f0e5e82133605f78db0    INDEX     x   CREATE INDEX "IDX_85feea3f0e5e82133605f78db0" ON public.customer_groups_customer_group USING btree ("customerGroupId");
 4   DROP INDEX public."IDX_85feea3f0e5e82133605f78db0";
       public            zax    false    350            �           1259    18134    IDX_8b5ab52fc8887c1a769b9276ca    INDEX     b   CREATE INDEX "IDX_8b5ab52fc8887c1a769b9276ca" ON public.tax_rate USING btree ("customerGroupId");
 4   DROP INDEX public."IDX_8b5ab52fc8887c1a769b9276ca";
       public            zax    false    320                       1259    17764    IDX_91a19e6613534949a4ce6e76ff    INDEX     a   CREATE INDEX "IDX_91a19e6613534949a4ce6e76ff" ON public.product USING btree ("featuredAssetId");
 4   DROP INDEX public."IDX_91a19e6613534949a4ce6e76ff";
       public            zax    false    266            �           1259    18159    IDX_92f8c334ef06275f9586fd0183    INDEX     g   CREATE INDEX "IDX_92f8c334ef06275f9586fd0183" ON public.history_entry USING btree ("administratorId");
 4   DROP INDEX public."IDX_92f8c334ef06275f9586fd0183";
       public            zax    false    324                       1259    17717    IDX_93751abc1451972c02e033b766    INDEX     q   CREATE INDEX "IDX_93751abc1451972c02e033b766" ON public.product_option_group_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_93751abc1451972c02e033b766";
       public            zax    false    258            $           1259    17802    IDX_94e15d5f12d355d117390131ac    INDEX     d   CREATE INDEX "IDX_94e15d5f12d355d117390131ac" ON public.stock_movement USING btree (discriminator);
 4   DROP INDEX public."IDX_94e15d5f12d355d117390131ac";
       public            zax    false    272                        1259    17786    IDX_984c48572468c69661a0b7b049    INDEX     e   CREATE INDEX "IDX_984c48572468c69661a0b7b049" ON public.stock_level USING btree ("stockLocationId");
 4   DROP INDEX public."IDX_984c48572468c69661a0b7b049";
       public            zax    false    270            �           1259    18133    IDX_9872fc7de2f4e532fd3230d191    INDEX     Y   CREATE INDEX "IDX_9872fc7de2f4e532fd3230d191" ON public.tax_rate USING btree ("zoneId");
 4   DROP INDEX public."IDX_9872fc7de2f4e532fd3230d191";
       public            zax    false    320            !           1259    17785    IDX_9950eae3180f39c71978748bd0    INDEX     f   CREATE INDEX "IDX_9950eae3180f39c71978748bd0" ON public.stock_level USING btree ("productVariantId");
 4   DROP INDEX public."IDX_9950eae3180f39c71978748bd0";
       public            zax    false    270            �           1259    18174    IDX_9a5a6a556f75c4ac7bfdd03410    INDEX     e   CREATE INDEX "IDX_9a5a6a556f75c4ac7bfdd03410" ON public.search_index_item USING btree (description);
 4   DROP INDEX public."IDX_9a5a6a556f75c4ac7bfdd03410";
       public            zax    false    325            �           1259    18223    IDX_9e412b00d4c6cee1a4b3d92071    INDEX     `   CREATE INDEX "IDX_9e412b00d4c6cee1a4b3d92071" ON public.asset_tags_tag USING btree ("assetId");
 4   DROP INDEX public."IDX_9e412b00d4c6cee1a4b3d92071";
       public            zax    false    333            G           1259    17922    IDX_9f065453910ea77d4be8e92618    INDEX     d   CREATE INDEX "IDX_9f065453910ea77d4be8e92618" ON public.order_line USING btree ("featuredAssetId");
 4   DROP INDEX public."IDX_9f065453910ea77d4be8e92618";
       public            zax    false    290            �           1259    17615    IDX_9f9da7d94b0278ea0f7831e1fc    INDEX     c   CREATE INDEX "IDX_9f9da7d94b0278ea0f7831e1fc" ON public.collection_translation USING btree (slug);
 4   DROP INDEX public."IDX_9f9da7d94b0278ea0f7831e1fc";
       public            zax    false    242            �           1259    17452    IDX_a23445b2c942d8dfcae15b8de2    INDEX     b   CREATE INDEX "IDX_a23445b2c942d8dfcae15b8de2" ON public.authentication_method USING btree (type);
 4   DROP INDEX public."IDX_a23445b2c942d8dfcae15b8de2";
       public            zax    false    216            %           1259    17800    IDX_a2fe7172eeae9f1cca86f8f573    INDEX     h   CREATE INDEX "IDX_a2fe7172eeae9f1cca86f8f573" ON public.stock_movement USING btree ("stockLocationId");
 4   DROP INDEX public."IDX_a2fe7172eeae9f1cca86f8f573";
       public            zax    false    272            \           1259    17988    IDX_a49c5271c39cc8174a0535c808    INDEX     g   CREATE INDEX "IDX_a49c5271c39cc8174a0535c808" ON public.surcharge USING btree ("orderModificationId");
 4   DROP INDEX public."IDX_a49c5271c39cc8174a0535c808";
       public            zax    false    300            �           1259    18273    IDX_a51dfbd87c330c075c39832b6e    INDEX     l   CREATE INDEX "IDX_a51dfbd87c330c075c39832b6e" ON public.product_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_a51dfbd87c330c075c39832b6e";
       public            zax    false    340            	           1259    17705    IDX_a6debf9198e2fbfa006aa10d71    INDEX     `   CREATE INDEX "IDX_a6debf9198e2fbfa006aa10d71" ON public.product_option USING btree ("groupId");
 4   DROP INDEX public."IDX_a6debf9198e2fbfa006aa10d71";
       public            zax    false    256                       1259    17729    IDX_a6e91739227bf4d442f23c52c7    INDEX     h   CREATE INDEX "IDX_a6e91739227bf4d442f23c52c7" ON public.product_option_group USING btree ("productId");
 4   DROP INDEX public."IDX_a6e91739227bf4d442f23c52c7";
       public            zax    false    260                       1259    17693    IDX_a79a443c1f7841f3851767faa6    INDEX     k   CREATE INDEX "IDX_a79a443c1f7841f3851767faa6" ON public.product_option_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_a79a443c1f7841f3851767faa6";
       public            zax    false    254            �           1259    18349    IDX_a842c9fe8cd4c8ff31402d172d    INDEX     n   CREATE INDEX "IDX_a842c9fe8cd4c8ff31402d172d" ON public.customer_channels_channel USING btree ("customerId");
 4   DROP INDEX public."IDX_a842c9fe8cd4c8ff31402d172d";
       public            zax    false    351            �           1259    18258    IDX_ad690c1b05596d7f52e52ffeed    INDEX     s   CREATE INDEX "IDX_ad690c1b05596d7f52e52ffeed" ON public.facet_value_channels_channel USING btree ("facetValueId");
 4   DROP INDEX public."IDX_ad690c1b05596d7f52e52ffeed";
       public            zax    false    338            �           1259    17517    IDX_af2116c7e176b6b88dceceeb74    INDEX     Z   CREATE INDEX "IDX_af2116c7e176b6b88dceceeb74" ON public.channel USING btree ("sellerId");
 4   DROP INDEX public."IDX_af2116c7e176b6b88dceceeb74";
       public            zax    false    226            �           1259    17518    IDX_afe9f917a1c82b9e9e69f7c612    INDEX     b   CREATE INDEX "IDX_afe9f917a1c82b9e9e69f7c612" ON public.channel USING btree ("defaultTaxZoneId");
 4   DROP INDEX public."IDX_afe9f917a1c82b9e9e69f7c612";
       public            zax    false    226            �           1259    18203    IDX_b45b65256486a15a104e17d495    INDEX     f   CREATE INDEX "IDX_b45b65256486a15a104e17d495" ON public.zone_members_region USING btree ("regionId");
 4   DROP INDEX public."IDX_b45b65256486a15a104e17d495";
       public            zax    false    330            �           1259    18342    IDX_b823a3c8bf3b78d3ed68736485    INDEX     s   CREATE INDEX "IDX_b823a3c8bf3b78d3ed68736485" ON public.customer_groups_customer_group USING btree ("customerId");
 4   DROP INDEX public."IDX_b823a3c8bf3b78d3ed68736485";
       public            zax    false    350            �           1259    18300    IDX_beeb2b3cd800e589f2213ae99d    INDEX     {   CREATE INDEX "IDX_beeb2b3cd800e589f2213ae99d" ON public.product_variant_channels_channel USING btree ("productVariantId");
 4   DROP INDEX public."IDX_beeb2b3cd800e589f2213ae99d";
       public            zax    false    344            �           1259    18209    IDX_bfd2a03e9988eda6a9d1176011    INDEX     f   CREATE INDEX "IDX_bfd2a03e9988eda6a9d1176011" ON public.role_channels_channel USING btree ("roleId");
 4   DROP INDEX public."IDX_bfd2a03e9988eda6a9d1176011";
       public            zax    false    331            �           1259    18357    IDX_c00e36f667d35031087b382e61    INDEX     s   CREATE INDEX "IDX_c00e36f667d35031087b382e61" ON public.payment_method_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_c00e36f667d35031087b382e61";
       public            zax    false    352            �           1259    18363    IDX_c309f8cd152bbeaea08491e0c6    INDEX     f   CREATE INDEX "IDX_c309f8cd152bbeaea08491e0c6" ON public.collection_closure USING btree (id_ancestor);
 4   DROP INDEX public."IDX_c309f8cd152bbeaea08491e0c6";
       public            zax    false    353            �           1259    17519    IDX_c9ca2f58d4517460435cbd8b4c    INDEX     g   CREATE INDEX "IDX_c9ca2f58d4517460435cbd8b4c" ON public.channel USING btree ("defaultShippingZoneId");
 4   DROP INDEX public."IDX_c9ca2f58d4517460435cbd8b4c";
       public            zax    false    226            @           1259    17905    IDX_c9f34a440d490d1b66f6829b86    INDEX     _   CREATE INDEX "IDX_c9f34a440d490d1b66f6829b86" ON public.shipping_line USING btree ("orderId");
 4   DROP INDEX public."IDX_c9f34a440d490d1b66f6829b86";
       public            zax    false    288            �           1259    18251    IDX_ca796020c6d097e251e5d6d2b0    INDEX     h   CREATE INDEX "IDX_ca796020c6d097e251e5d6d2b0" ON public.facet_channels_channel USING btree ("facetId");
 4   DROP INDEX public."IDX_ca796020c6d097e251e5d6d2b0";
       public            zax    false    337            H           1259    17920    IDX_cbcd22193eda94668e84d33f18    INDEX     e   CREATE INDEX "IDX_cbcd22193eda94668e84d33f18" ON public.order_line USING btree ("productVariantId");
 4   DROP INDEX public."IDX_cbcd22193eda94668e84d33f18";
       public            zax    false    290            �           1259    18244    IDX_cdbf33ffb5d451916125152008    INDEX     r   CREATE INDEX "IDX_cdbf33ffb5d451916125152008" ON public.collection_channels_channel USING btree ("collectionId");
 4   DROP INDEX public."IDX_cdbf33ffb5d451916125152008";
       public            zax    false    336            X           1259    17975    IDX_d09d285fe1645cd2f0db811e29    INDEX     Y   CREATE INDEX "IDX_d09d285fe1645cd2f0db811e29" ON public.payment USING btree ("orderId");
 4   DROP INDEX public."IDX_d09d285fe1645cd2f0db811e29";
       public            zax    false    298            �           1259    18336    IDX_d0d16db872499e83b15999f8c7    INDEX     j   CREATE INDEX "IDX_d0d16db872499e83b15999f8c7" ON public.order_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_d0d16db872499e83b15999f8c7";
       public            zax    false    349                       1259    17681    IDX_d101dc2265a7341be3d94968c5    INDEX     ]   CREATE INDEX "IDX_d101dc2265a7341be3d94968c5" ON public.facet_value USING btree ("facetId");
 4   DROP INDEX public."IDX_d101dc2265a7341be3d94968c5";
       public            zax    false    252            �           1259    18301    IDX_d194bff171b62357688a5d0f55    INDEX     t   CREATE INDEX "IDX_d194bff171b62357688a5d0f55" ON public.product_variant_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_d194bff171b62357688a5d0f55";
       public            zax    false    344            &           1259    17801    IDX_d2c8d5fca981cc820131f81aa8    INDEX     d   CREATE INDEX "IDX_d2c8d5fca981cc820131f81aa8" ON public.stock_movement USING btree ("orderLineId");
 4   DROP INDEX public."IDX_d2c8d5fca981cc820131f81aa8";
       public            zax    false    272            t           1259    18080    IDX_d87215343c3a3a67e6a0b7f3ea    INDEX     [   CREATE INDEX "IDX_d87215343c3a3a67e6a0b7f3ea" ON public.address USING btree ("countryId");
 4   DROP INDEX public."IDX_d87215343c3a3a67e6a0b7f3ea";
       public            zax    false    312            �           1259    18173    IDX_d8791f444a8bf23fe4c1bc020c    INDEX     n   CREATE INDEX "IDX_d8791f444a8bf23fe4c1bc020c" ON public.search_index_item USING btree ("productVariantName");
 4   DROP INDEX public."IDX_d8791f444a8bf23fe4c1bc020c";
       public            zax    false    325            u           1259    18079    IDX_dc34d382b493ade1f70e834c4d    INDEX     \   CREATE INDEX "IDX_dc34d382b493ade1f70e834c4d" ON public.address USING btree ("customerId");
 4   DROP INDEX public."IDX_dc34d382b493ade1f70e834c4d";
       public            zax    false    312            �           1259    18230    IDX_dc4e7435f9f5e9e6436bebd33b    INDEX     h   CREATE INDEX "IDX_dc4e7435f9f5e9e6436bebd33b" ON public.asset_channels_channel USING btree ("assetId");
 4   DROP INDEX public."IDX_dc4e7435f9f5e9e6436bebd33b";
       public            zax    false    334            I           1259    17919    IDX_dc9ac68b47da7b62249886affb    INDEX     c   CREATE INDEX "IDX_dc9ac68b47da7b62249886affb" ON public.order_line USING btree ("shippingLineId");
 4   DROP INDEX public."IDX_dc9ac68b47da7b62249886affb";
       public            zax    false    290            �           1259    18350    IDX_dc9f69207a8867f83b0fd257e3    INDEX     m   CREATE INDEX "IDX_dc9f69207a8867f83b0fd257e3" ON public.customer_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_dc9f69207a8867f83b0fd257e3";
       public            zax    false    351            �           1259    18210    IDX_e09dfee62b158307404202b43a    INDEX     i   CREATE INDEX "IDX_e09dfee62b158307404202b43a" ON public.role_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_e09dfee62b158307404202b43a";
       public            zax    false    331            �           1259    18259    IDX_e1d54c0b9db3e2eb17faaf5919    INDEX     p   CREATE INDEX "IDX_e1d54c0b9db3e2eb17faaf5919" ON public.facet_value_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_e1d54c0b9db3e2eb17faaf5919";
       public            zax    false    338            A           1259    17904    IDX_e2e7642e1e88167c1dfc827fdf    INDEX     h   CREATE INDEX "IDX_e2e7642e1e88167c1dfc827fdf" ON public.shipping_line USING btree ("shippingMethodId");
 4   DROP INDEX public."IDX_e2e7642e1e88167c1dfc827fdf";
       public            zax    false    288            �           1259    17616    IDX_e329f9036210d75caa1d8f2154    INDEX     g   CREATE INDEX "IDX_e329f9036210d75caa1d8f2154" ON public.collection_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_e329f9036210d75caa1d8f2154";
       public            zax    false    242            8           1259    17866    IDX_e38dca0d82fd64c7cf8aac8b8e    INDEX     g   CREATE INDEX "IDX_e38dca0d82fd64c7cf8aac8b8e" ON public.product_variant USING btree ("taxCategoryId");
 4   DROP INDEX public."IDX_e38dca0d82fd64c7cf8aac8b8e";
       public            zax    false    282            �           1259    18120    IDX_e5598363000cab9d9116bd5835    INDEX     T   CREATE INDEX "IDX_e5598363000cab9d9116bd5835" ON public.session USING btree (type);
 4   DROP INDEX public."IDX_e5598363000cab9d9116bd5835";
       public            zax    false    318            0           1259    17837    IDX_e6126cd268aea6e9b31d89af9a    INDEX     i   CREATE INDEX "IDX_e6126cd268aea6e9b31d89af9a" ON public.product_variant_price USING btree ("variantId");
 4   DROP INDEX public."IDX_e6126cd268aea6e9b31d89af9a";
       public            zax    false    278            '           1259    17799    IDX_e65ba3882557cab4febb54809b    INDEX     i   CREATE INDEX "IDX_e65ba3882557cab4febb54809b" ON public.stock_movement USING btree ("productVariantId");
 4   DROP INDEX public."IDX_e65ba3882557cab4febb54809b";
       public            zax    false    272            �           1259    18287    IDX_e96a71affe63c97f7fa2f076da    INDEX     �   CREATE INDEX "IDX_e96a71affe63c97f7fa2f076da" ON public.product_variant_options_product_option USING btree ("productOptionId");
 4   DROP INDEX public."IDX_e96a71affe63c97f7fa2f076da";
       public            zax    false    342            �           1259    17643    IDX_eaea53f44bf9e97790d38a3d68    INDEX     b   CREATE INDEX "IDX_eaea53f44bf9e97790d38a3d68" ON public.facet_translation USING btree ("baseId");
 4   DROP INDEX public."IDX_eaea53f44bf9e97790d38a3d68";
       public            zax    false    246            �           1259    18118    IDX_eb87ef1e234444728138302263    INDEX     a   CREATE INDEX "IDX_eb87ef1e234444728138302263" ON public.session USING btree ("activeChannelId");
 4   DROP INDEX public."IDX_eb87ef1e234444728138302263";
       public            zax    false    318            �           1259    17487    IDX_ed0c8098ce6809925a437f42ae    INDEX     Y   CREATE INDEX "IDX_ed0c8098ce6809925a437f42ae" ON public.region USING btree ("parentId");
 4   DROP INDEX public."IDX_ed0c8098ce6809925a437f42ae";
       public            zax    false    222            �           1259    18307    IDX_f0a17b94aa5a162f0d422920eb    INDEX     {   CREATE INDEX "IDX_f0a17b94aa5a162f0d422920eb" ON public.shipping_method_channels_channel USING btree ("shippingMethodId");
 4   DROP INDEX public."IDX_f0a17b94aa5a162f0d422920eb";
       public            zax    false    345            �           1259    18308    IDX_f2b98dfb56685147bed509acc3    INDEX     t   CREATE INDEX "IDX_f2b98dfb56685147bed509acc3" ON public.shipping_method_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_f2b98dfb56685147bed509acc3";
       public            zax    false    345            �           1259    18162    IDX_f3a761f6bcfabb474b11e1e51f    INDEX     c   CREATE INDEX "IDX_f3a761f6bcfabb474b11e1e51f" ON public.history_entry USING btree (discriminator);
 4   DROP INDEX public."IDX_f3a761f6bcfabb474b11e1e51f";
       public            zax    false    324                       1259    17752    IDX_f4a2ec16ba86d277b6faa0b67b    INDEX     `   CREATE INDEX "IDX_f4a2ec16ba86d277b6faa0b67b" ON public.product_translation USING btree (slug);
 4   DROP INDEX public."IDX_f4a2ec16ba86d277b6faa0b67b";
       public            zax    false    264            �           1259    18328    IDX_f80d84d525af2ffe974e7e8ca2    INDEX     p   CREATE INDEX "IDX_f80d84d525af2ffe974e7e8ca2" ON public.order_fulfillments_fulfillment USING btree ("orderId");
 4   DROP INDEX public."IDX_f80d84d525af2ffe974e7e8ca2";
       public            zax    false    348            -           1259    17825    IDX_fa21412afac15a2304f3eb35fe    INDEX     p   CREATE INDEX "IDX_fa21412afac15a2304f3eb35fe" ON public.product_variant_asset USING btree ("productVariantId");
 4   DROP INDEX public."IDX_fa21412afac15a2304f3eb35fe";
       public            zax    false    276            �           1259    18238    IDX_fb05887e2867365f236d7dd95e    INDEX     �   CREATE INDEX "IDX_fb05887e2867365f236d7dd95e" ON public.collection_product_variants_product_variant USING btree ("productVariantId");
 4   DROP INDEX public."IDX_fb05887e2867365f236d7dd95e";
       public            zax    false    335            �           1259    18224    IDX_fb5e800171ffbe9823f2cc727f    INDEX     ^   CREATE INDEX "IDX_fb5e800171ffbe9823f2cc727f" ON public.asset_tags_tag USING btree ("tagId");
 4   DROP INDEX public."IDX_fb5e800171ffbe9823f2cc727f";
       public            zax    false    333            �           1259    18280    IDX_ff8150fe54e56a900d5712671a    INDEX     s   CREATE INDEX "IDX_ff8150fe54e56a900d5712671a" ON public.stock_location_channels_channel USING btree ("channelId");
 4   DROP INDEX public."IDX_ff8150fe54e56a900d5712671a";
       public            zax    false    341            �           2606    18365 4   authentication_method FK_00cbe87bc0d4e36758d61bd31d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.authentication_method
    ADD CONSTRAINT "FK_00cbe87bc0d4e36758d61bd31d6" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 `   ALTER TABLE ONLY public.authentication_method DROP CONSTRAINT "FK_00cbe87bc0d4e36758d61bd31d6";
       public          zax    false    4065    216    230            (           2606    18590 3   order_line_reference FK_06b02fb482b188823e419d37bd4    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line_reference
    ADD CONSTRAINT "FK_06b02fb482b188823e419d37bd4" FOREIGN KEY ("fulfillmentId") REFERENCES public.fulfillment(id);
 _   ALTER TABLE ONLY public.order_line_reference DROP CONSTRAINT "FK_06b02fb482b188823e419d37bd4";
       public          zax    false    4180    292    294            U           2606    18815 ?   product_facet_values_facet_value FK_06e7d73673ee630e8ec50d0b29f    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_facet_values_facet_value
    ADD CONSTRAINT "FK_06e7d73673ee630e8ec50d0b29f" FOREIGN KEY ("facetValueId") REFERENCES public.facet_value(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.product_facet_values_facet_value DROP CONSTRAINT "FK_06e7d73673ee630e8ec50d0b29f";
       public          zax    false    4101    252    339                       2606    18465 ,   product_asset FK_0d1294f5c22a56da7845ebab72c    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_asset
    ADD CONSTRAINT "FK_0d1294f5c22a56da7845ebab72c" FOREIGN KEY ("productId") REFERENCES public.product(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.product_asset DROP CONSTRAINT "FK_0d1294f5c22a56da7845ebab72c";
       public          zax    false    266    4124    262            ]           2606    18855 G   product_variant_facet_values_facet_value FK_0d641b761ed1dce4ef3cd33d559    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_facet_values_facet_value
    ADD CONSTRAINT "FK_0d641b761ed1dce4ef3cd33d559" FOREIGN KEY ("facetValueId") REFERENCES public.facet_value(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.product_variant_facet_values_facet_value DROP CONSTRAINT "FK_0d641b761ed1dce4ef3cd33d559";
       public          zax    false    4101    343    252            i           2606    18910 5   order_channels_channel FK_0d8e5c204480204a60e151e4853    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_channels_channel
    ADD CONSTRAINT "FK_0d8e5c204480204a60e151e4853" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.order_channels_channel DROP CONSTRAINT "FK_0d8e5c204480204a60e151e4853";
       public          zax    false    308    349    4207                       2606    18525 .   product_variant FK_0e6f516053cf982b537836e21cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_0e6f516053cf982b537836e21cf" FOREIGN KEY ("featuredAssetId") REFERENCES public.asset(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_0e6f516053cf982b537836e21cf";
       public          zax    false    4077    238    282            c           2606    18885 9   promotion_channels_channel FK_0eaaf0f4b6c69afde1e88ffb52d    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotion_channels_channel
    ADD CONSTRAINT "FK_0eaaf0f4b6c69afde1e88ffb52d" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.promotion_channels_channel DROP CONSTRAINT "FK_0eaaf0f4b6c69afde1e88ffb52d";
       public          zax    false    226    4057    346                       2606    18505 4   product_variant_asset FK_10b5a2e3dee0e30b1e26c32f5c7    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_asset
    ADD CONSTRAINT "FK_10b5a2e3dee0e30b1e26c32f5c7" FOREIGN KEY ("assetId") REFERENCES public.asset(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_variant_asset DROP CONSTRAINT "FK_10b5a2e3dee0e30b1e26c32f5c7";
       public          zax    false    4077    238    276            4           2606    18650 $   order FK_124456e637cca7a415897dce659    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_124456e637cca7a415897dce659" FOREIGN KEY ("customerId") REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_124456e637cca7a415897dce659";
       public          zax    false    4209    308    310            .           2606    18615 (   surcharge FK_154eb685f9b629033bd266df7fa    FK CONSTRAINT     �   ALTER TABLE ONLY public.surcharge
    ADD CONSTRAINT "FK_154eb685f9b629033bd266df7fa" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.surcharge DROP CONSTRAINT "FK_154eb685f9b629033bd266df7fa";
       public          zax    false    308    300    4207            K           2606    18765 5   asset_channels_channel FK_16ca9151a5153f1169da5b7b7e3    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_channels_channel
    ADD CONSTRAINT "FK_16ca9151a5153f1169da5b7b7e3" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.asset_channels_channel DROP CONSTRAINT "FK_16ca9151a5153f1169da5b7b7e3";
       public          zax    false    334    226    4057                       2606    18395 ,   administrator FK_1966e18ce6a39a82b19204704d7    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrator
    ADD CONSTRAINT "FK_1966e18ce6a39a82b19204704d7" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 X   ALTER TABLE ONLY public.administrator DROP CONSTRAINT "FK_1966e18ce6a39a82b19204704d7";
       public          zax    false    4065    230    232            �           2606    18370 1   region_translation FK_1afd722b943c81310705fc3e612    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_translation
    ADD CONSTRAINT "FK_1afd722b943c81310705fc3e612" FOREIGN KEY ("baseId") REFERENCES public.region(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.region_translation DROP CONSTRAINT "FK_1afd722b943c81310705fc3e612";
       public          zax    false    4050    222    220            ,           2606    18605 %   refund FK_1c6932a756108788a361e7d4404    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_1c6932a756108788a361e7d4404" FOREIGN KEY ("paymentId") REFERENCES public.payment(id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_1c6932a756108788a361e7d4404";
       public          zax    false    4186    296    298            3           2606    18640 4   promotion_translation FK_1cc009e9ab2263a35544064561b    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotion_translation
    ADD CONSTRAINT "FK_1cc009e9ab2263a35544064561b" FOREIGN KEY ("baseId") REFERENCES public.promotion(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.promotion_translation DROP CONSTRAINT "FK_1cc009e9ab2263a35544064561b";
       public          zax    false    4202    304    306            0           2606    18625 1   order_modification FK_1df5bc14a47ef24d2e681f45598    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_modification
    ADD CONSTRAINT "FK_1df5bc14a47ef24d2e681f45598" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.order_modification DROP CONSTRAINT "FK_1df5bc14a47ef24d2e681f45598";
       public          zax    false    308    302    4207                       2606    18405 /   collection_asset FK_1ed9e48dfbf74b5fcbb35d3d686    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_asset
    ADD CONSTRAINT "FK_1ed9e48dfbf74b5fcbb35d3d686" FOREIGN KEY ("collectionId") REFERENCES public.collection(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.collection_asset DROP CONSTRAINT "FK_1ed9e48dfbf74b5fcbb35d3d686";
       public          zax    false    4088    240    244            )           2606    18595 3   order_line_reference FK_22b818af8722746fb9f206068c2    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line_reference
    ADD CONSTRAINT "FK_22b818af8722746fb9f206068c2" FOREIGN KEY ("modificationId") REFERENCES public.order_modification(id);
 _   ALTER TABLE ONLY public.order_line_reference DROP CONSTRAINT "FK_22b818af8722746fb9f206068c2";
       public          zax    false    4193    292    302            "           2606    18580 )   order_line FK_239cfca2a55b98b90b6bef2e44f    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "FK_239cfca2a55b98b90b6bef2e44f" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "FK_239cfca2a55b98b90b6bef2e44f";
       public          zax    false    308    290    4207            W           2606    18820 7   product_channels_channel FK_26d12be3b5fec6c4adb1d792844    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_channels_channel
    ADD CONSTRAINT "FK_26d12be3b5fec6c4adb1d792844" FOREIGN KEY ("productId") REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.product_channels_channel DROP CONSTRAINT "FK_26d12be3b5fec6c4adb1d792844";
       public          zax    false    4124    266    340            Q           2606    18795 5   facet_channels_channel FK_2a8ea404d05bf682516184db7d3    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_channels_channel
    ADD CONSTRAINT "FK_2a8ea404d05bf682516184db7d3" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.facet_channels_channel DROP CONSTRAINT "FK_2a8ea404d05bf682516184db7d3";
       public          zax    false    226    4057    337            e           2606    18895 9   order_promotions_promotion FK_2c26b988769c0e3b0120bdef31b    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_promotions_promotion
    ADD CONSTRAINT "FK_2c26b988769c0e3b0120bdef31b" FOREIGN KEY ("promotionId") REFERENCES public.promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.order_promotions_promotion DROP CONSTRAINT "FK_2c26b988769c0e3b0120bdef31b";
       public          zax    false    347    4202    306            *           2606    18600 3   order_line_reference FK_30019aa65b17fe9ee9628931991    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line_reference
    ADD CONSTRAINT "FK_30019aa65b17fe9ee9628931991" FOREIGN KEY ("refundId") REFERENCES public.refund(id);
 _   ALTER TABLE ONLY public.order_line_reference DROP CONSTRAINT "FK_30019aa65b17fe9ee9628931991";
       public          zax    false    4183    292    296            Y           2606    18830 >   stock_location_channels_channel FK_39513fd02a573c848d23bee587d    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_location_channels_channel
    ADD CONSTRAINT "FK_39513fd02a573c848d23bee587d" FOREIGN KEY ("stockLocationId") REFERENCES public.stock_location(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.stock_location_channels_channel DROP CONSTRAINT "FK_39513fd02a573c848d23bee587d";
       public          zax    false    341    268    4126            @           2606    18715 ,   history_entry FK_3a05127e67435b4d2332ded7c9e    FK CONSTRAINT     �   ALTER TABLE ONLY public.history_entry
    ADD CONSTRAINT "FK_3a05127e67435b4d2332ded7c9e" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.history_entry DROP CONSTRAINT "FK_3a05127e67435b4d2332ded7c9e";
       public          zax    false    4207    308    324            :           2606    18685 &   session FK_3d2f174ef04fb312fdebd0ddc53    FK CONSTRAINT     �   ALTER TABLE ONLY public.session
    ADD CONSTRAINT "FK_3d2f174ef04fb312fdebd0ddc53" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 R   ALTER TABLE ONLY public.session DROP CONSTRAINT "FK_3d2f174ef04fb312fdebd0ddc53";
       public          zax    false    4065    318    230            	           2606    18430 6   facet_value_translation FK_3d6e45823b65de808a66cb1423b    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_value_translation
    ADD CONSTRAINT "FK_3d6e45823b65de808a66cb1423b" FOREIGN KEY ("baseId") REFERENCES public.facet_value(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.facet_value_translation DROP CONSTRAINT "FK_3d6e45823b65de808a66cb1423b";
       public          zax    false    252    250    4101            6           2606    18655 '   customer FK_3f62b42ed23958b120c235f74df    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "FK_3f62b42ed23958b120c235f74df" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "FK_3f62b42ed23958b120c235f74df";
       public          zax    false    4065    310    230                       2606    18520 :   product_variant_translation FK_420f4d6fb75d38b9dca79bc43b4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_translation
    ADD CONSTRAINT "FK_420f4d6fb75d38b9dca79bc43b4" FOREIGN KEY ("baseId") REFERENCES public.product_variant(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.product_variant_translation DROP CONSTRAINT "FK_420f4d6fb75d38b9dca79bc43b4";
       public          zax    false    280    4154    282                       2606    18420 )   collection FK_4257b61275144db89fa0f5dc059    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT "FK_4257b61275144db89fa0f5dc059" FOREIGN KEY ("parentId") REFERENCES public.collection(id);
 U   ALTER TABLE ONLY public.collection DROP CONSTRAINT "FK_4257b61275144db89fa0f5dc059";
       public          zax    false    4088    244    244            C           2606    18720 2   zone_members_region FK_433f45158e4e2b2a2f344714b22    FK CONSTRAINT     �   ALTER TABLE ONLY public.zone_members_region
    ADD CONSTRAINT "FK_433f45158e4e2b2a2f344714b22" FOREIGN KEY ("zoneId") REFERENCES public.zone(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.zone_members_region DROP CONSTRAINT "FK_433f45158e4e2b2a2f344714b22";
       public          zax    false    224    4052    330            A           2606    18710 ,   history_entry FK_43ac602f839847fdb91101f30ec    FK CONSTRAINT     �   ALTER TABLE ONLY public.history_entry
    ADD CONSTRAINT "FK_43ac602f839847fdb91101f30ec" FOREIGN KEY ("customerId") REFERENCES public.customer(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.history_entry DROP CONSTRAINT "FK_43ac602f839847fdb91101f30ec";
       public          zax    false    4209    324    310            q           2606    18955 1   collection_closure FK_457784c710f8ac9396010441f6c    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_closure
    ADD CONSTRAINT "FK_457784c710f8ac9396010441f6c" FOREIGN KEY (id_descendant) REFERENCES public.collection(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.collection_closure DROP CONSTRAINT "FK_457784c710f8ac9396010441f6c";
       public          zax    false    244    4088    353            g           2606    18905 =   order_fulfillments_fulfillment FK_4add5a5796e1582dec2877b2898    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_fulfillments_fulfillment
    ADD CONSTRAINT "FK_4add5a5796e1582dec2877b2898" FOREIGN KEY ("fulfillmentId") REFERENCES public.fulfillment(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.order_fulfillments_fulfillment DROP CONSTRAINT "FK_4add5a5796e1582dec2877b2898";
       public          zax    false    294    4180    348            G           2606    18745 .   user_roles_role FK_4be2f7adf862634f5f803d246b8    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles_role
    ADD CONSTRAINT "FK_4be2f7adf862634f5f803d246b8" FOREIGN KEY ("roleId") REFERENCES public.role(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.user_roles_role DROP CONSTRAINT "FK_4be2f7adf862634f5f803d246b8";
       public          zax    false    228    4063    332                       2606    18400 /   collection_asset FK_51da53b26522dc0525762d2de8e    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_asset
    ADD CONSTRAINT "FK_51da53b26522dc0525762d2de8e" FOREIGN KEY ("assetId") REFERENCES public.asset(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.collection_asset DROP CONSTRAINT "FK_51da53b26522dc0525762d2de8e";
       public          zax    false    240    4077    238            [           2606    18840 E   product_variant_options_product_option FK_526f0131260eec308a3bd2b61b6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_options_product_option
    ADD CONSTRAINT "FK_526f0131260eec308a3bd2b61b6" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.product_variant_options_product_option DROP CONSTRAINT "FK_526f0131260eec308a3bd2b61b6";
       public          zax    false    342    4154    282                       2606    18460 ,   product_asset FK_5888ac17b317b93378494a10620    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_asset
    ADD CONSTRAINT "FK_5888ac17b317b93378494a10620" FOREIGN KEY ("assetId") REFERENCES public.asset(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.product_asset DROP CONSTRAINT "FK_5888ac17b317b93378494a10620";
       public          zax    false    262    4077    238            o           2606    18940 >   payment_method_channels_channel FK_5bcb569635ce5407eb3f264487d    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_method_channels_channel
    ADD CONSTRAINT "FK_5bcb569635ce5407eb3f264487d" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_method(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.payment_method_channels_channel DROP CONSTRAINT "FK_5bcb569635ce5407eb3f264487d";
       public          zax    false    316    352    4220            H           2606    18740 .   user_roles_role FK_5f9286e6c25594c6b88c108db77    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles_role
    ADD CONSTRAINT "FK_5f9286e6c25594c6b88c108db77" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.user_roles_role DROP CONSTRAINT "FK_5f9286e6c25594c6b88c108db77";
       public          zax    false    332    4065    230            9           2606    18670 9   payment_method_translation FK_66187f782a3e71b9e0f5b50b68b    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_method_translation
    ADD CONSTRAINT "FK_66187f782a3e71b9e0f5b50b68b" FOREIGN KEY ("baseId") REFERENCES public.payment_method(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.payment_method_translation DROP CONSTRAINT "FK_66187f782a3e71b9e0f5b50b68b";
       public          zax    false    314    4220    316            f           2606    18890 9   order_promotions_promotion FK_67be0e40122ab30a62a9817efe0    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_promotions_promotion
    ADD CONSTRAINT "FK_67be0e40122ab30a62a9817efe0" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.order_promotions_promotion DROP CONSTRAINT "FK_67be0e40122ab30a62a9817efe0";
       public          zax    false    347    308    4207            #           2606    18555 )   order_line FK_6901d8715f5ebadd764466f7bde    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "FK_6901d8715f5ebadd764466f7bde" FOREIGN KEY ("sellerChannelId") REFERENCES public.channel(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "FK_6901d8715f5ebadd764466f7bde";
       public          zax    false    226    290    4057            ^           2606    18850 G   product_variant_facet_values_facet_value FK_69567bc225b6bbbd732d6c5455b    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_facet_values_facet_value
    ADD CONSTRAINT "FK_69567bc225b6bbbd732d6c5455b" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.product_variant_facet_values_facet_value DROP CONSTRAINT "FK_69567bc225b6bbbd732d6c5455b";
       public          zax    false    4154    343    282            V           2606    18810 ?   product_facet_values_facet_value FK_6a0558e650d75ae639ff38e413a    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_facet_values_facet_value
    ADD CONSTRAINT "FK_6a0558e650d75ae639ff38e413a" FOREIGN KEY ("productId") REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.product_facet_values_facet_value DROP CONSTRAINT "FK_6a0558e650d75ae639ff38e413a";
       public          zax    false    4124    266    339            d           2606    18880 9   promotion_channels_channel FK_6d9e2c39ab12391aaa374bcdaa4    FK CONSTRAINT     �   ALTER TABLE ONLY public.promotion_channels_channel
    ADD CONSTRAINT "FK_6d9e2c39ab12391aaa374bcdaa4" FOREIGN KEY ("promotionId") REFERENCES public.promotion(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.promotion_channels_channel DROP CONSTRAINT "FK_6d9e2c39ab12391aaa374bcdaa4";
       public          zax    false    4202    306    346                       2606    18535 .   product_variant FK_6e420052844edf3a5506d863ce6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_6e420052844edf3a5506d863ce6" FOREIGN KEY ("productId") REFERENCES public.product(id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_6e420052844edf3a5506d863ce6";
       public          zax    false    4124    266    282            M           2606    18770 J   collection_product_variants_product_variant FK_6faa7b72422d9c4679e2f186ad1    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_product_variants_product_variant
    ADD CONSTRAINT "FK_6faa7b72422d9c4679e2f186ad1" FOREIGN KEY ("collectionId") REFERENCES public.collection(id) ON UPDATE CASCADE ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.collection_product_variants_product_variant DROP CONSTRAINT "FK_6faa7b72422d9c4679e2f186ad1";
       public          zax    false    335    244    4088            O           2606    18785 :   collection_channels_channel FK_7216ab24077cf5cbece7857dbbd    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_channels_channel
    ADD CONSTRAINT "FK_7216ab24077cf5cbece7857dbbd" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.collection_channels_channel DROP CONSTRAINT "FK_7216ab24077cf5cbece7857dbbd";
       public          zax    false    336    226    4057                       2606    18415 )   collection FK_7256fef1bb42f1b38156b7449f5    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection
    ADD CONSTRAINT "FK_7256fef1bb42f1b38156b7449f5" FOREIGN KEY ("featuredAssetId") REFERENCES public.asset(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.collection DROP CONSTRAINT "FK_7256fef1bb42f1b38156b7449f5";
       public          zax    false    238    4077    244            5           2606    18645 $   order FK_73a78d7df09541ac5eba620d181    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_73a78d7df09541ac5eba620d181" FOREIGN KEY ("aggregateOrderId") REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_73a78d7df09541ac5eba620d181";
       public          zax    false    4207    308    308            $           2606    18570 )   order_line FK_77be94ce9ec6504466179462275    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "FK_77be94ce9ec6504466179462275" FOREIGN KEY ("taxCategoryId") REFERENCES public.tax_category(id);
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "FK_77be94ce9ec6504466179462275";
       public          zax    false    290    274    4139            ;           2606    18675 &   session FK_7a75399a4f4ffa48ee02e98c059    FK CONSTRAINT     �   ALTER TABLE ONLY public.session
    ADD CONSTRAINT "FK_7a75399a4f4ffa48ee02e98c059" FOREIGN KEY ("activeOrderId") REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public.session DROP CONSTRAINT "FK_7a75399a4f4ffa48ee02e98c059";
       public          zax    false    308    318    4207            +           2606    18585 3   order_line_reference FK_7d57857922dfc7303604697dbe9    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line_reference
    ADD CONSTRAINT "FK_7d57857922dfc7303604697dbe9" FOREIGN KEY ("orderLineId") REFERENCES public.order_line(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.order_line_reference DROP CONSTRAINT "FK_7d57857922dfc7303604697dbe9";
       public          zax    false    4171    292    290                       2606    18470 2   product_translation FK_7dbc75cb4e8b002620c4dbfdac5    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_translation
    ADD CONSTRAINT "FK_7dbc75cb4e8b002620c4dbfdac5" FOREIGN KEY ("baseId") REFERENCES public.product(id);
 ^   ALTER TABLE ONLY public.product_translation DROP CONSTRAINT "FK_7dbc75cb4e8b002620c4dbfdac5";
       public          zax    false    264    4124    266            =           2606    18690 '   tax_rate FK_7ee3306d7638aa85ca90d672198    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_7ee3306d7638aa85ca90d672198" FOREIGN KEY ("categoryId") REFERENCES public.tax_category(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_7ee3306d7638aa85ca90d672198";
       public          zax    false    274    320    4139                       2606    18540 :   shipping_method_translation FK_85ec26c71067ebc84adcd98d1a5    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_translation
    ADD CONSTRAINT "FK_85ec26c71067ebc84adcd98d1a5" FOREIGN KEY ("baseId") REFERENCES public.shipping_method(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.shipping_method_translation DROP CONSTRAINT "FK_85ec26c71067ebc84adcd98d1a5";
       public          zax    false    284    4159    286            k           2606    18925 =   customer_groups_customer_group FK_85feea3f0e5e82133605f78db02    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_groups_customer_group
    ADD CONSTRAINT "FK_85feea3f0e5e82133605f78db02" FOREIGN KEY ("customerGroupId") REFERENCES public.customer_group(id);
 i   ALTER TABLE ONLY public.customer_groups_customer_group DROP CONSTRAINT "FK_85feea3f0e5e82133605f78db02";
       public          zax    false    4073    350    234            >           2606    18700 '   tax_rate FK_8b5ab52fc8887c1a769b9276caf    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_8b5ab52fc8887c1a769b9276caf" FOREIGN KEY ("customerGroupId") REFERENCES public.customer_group(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_8b5ab52fc8887c1a769b9276caf";
       public          zax    false    234    320    4073                       2606    18475 &   product FK_91a19e6613534949a4ce6e76ff8    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_91a19e6613534949a4ce6e76ff8" FOREIGN KEY ("featuredAssetId") REFERENCES public.asset(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_91a19e6613534949a4ce6e76ff8";
       public          zax    false    266    4077    238            B           2606    18705 ,   history_entry FK_92f8c334ef06275f9586fd01832    FK CONSTRAINT     �   ALTER TABLE ONLY public.history_entry
    ADD CONSTRAINT "FK_92f8c334ef06275f9586fd01832" FOREIGN KEY ("administratorId") REFERENCES public.administrator(id);
 X   ALTER TABLE ONLY public.history_entry DROP CONSTRAINT "FK_92f8c334ef06275f9586fd01832";
       public          zax    false    324    4067    232                       2606    18450 ?   product_option_group_translation FK_93751abc1451972c02e033b766c    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_group_translation
    ADD CONSTRAINT "FK_93751abc1451972c02e033b766c" FOREIGN KEY ("baseId") REFERENCES public.product_option_group(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.product_option_group_translation DROP CONSTRAINT "FK_93751abc1451972c02e033b766c";
       public          zax    false    260    4113    258                       2606    18485 *   stock_level FK_984c48572468c69661a0b7b0494    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_level
    ADD CONSTRAINT "FK_984c48572468c69661a0b7b0494" FOREIGN KEY ("stockLocationId") REFERENCES public.stock_location(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.stock_level DROP CONSTRAINT "FK_984c48572468c69661a0b7b0494";
       public          zax    false    4126    270    268            ?           2606    18695 '   tax_rate FK_9872fc7de2f4e532fd3230d1915    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_9872fc7de2f4e532fd3230d1915" FOREIGN KEY ("zoneId") REFERENCES public.zone(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_9872fc7de2f4e532fd3230d1915";
       public          zax    false    224    4052    320                       2606    18480 *   stock_level FK_9950eae3180f39c71978748bd08    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_level
    ADD CONSTRAINT "FK_9950eae3180f39c71978748bd08" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.stock_level DROP CONSTRAINT "FK_9950eae3180f39c71978748bd08";
       public          zax    false    270    4154    282            I           2606    18750 -   asset_tags_tag FK_9e412b00d4c6cee1a4b3d920716    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_tags_tag
    ADD CONSTRAINT "FK_9e412b00d4c6cee1a4b3d920716" FOREIGN KEY ("assetId") REFERENCES public.asset(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.asset_tags_tag DROP CONSTRAINT "FK_9e412b00d4c6cee1a4b3d920716";
       public          zax    false    238    4077    333            %           2606    18575 )   order_line FK_9f065453910ea77d4be8e92618f    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "FK_9f065453910ea77d4be8e92618f" FOREIGN KEY ("featuredAssetId") REFERENCES public.asset(id);
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "FK_9f065453910ea77d4be8e92618f";
       public          zax    false    290    4077    238                       2606    18495 -   stock_movement FK_a2fe7172eeae9f1cca86f8f573a    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_movement
    ADD CONSTRAINT "FK_a2fe7172eeae9f1cca86f8f573a" FOREIGN KEY ("stockLocationId") REFERENCES public.stock_location(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.stock_movement DROP CONSTRAINT "FK_a2fe7172eeae9f1cca86f8f573a";
       public          zax    false    268    272    4126            /           2606    18620 (   surcharge FK_a49c5271c39cc8174a0535c8088    FK CONSTRAINT     �   ALTER TABLE ONLY public.surcharge
    ADD CONSTRAINT "FK_a49c5271c39cc8174a0535c8088" FOREIGN KEY ("orderModificationId") REFERENCES public.order_modification(id);
 T   ALTER TABLE ONLY public.surcharge DROP CONSTRAINT "FK_a49c5271c39cc8174a0535c8088";
       public          zax    false    300    4193    302            X           2606    18825 7   product_channels_channel FK_a51dfbd87c330c075c39832b6e7    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_channels_channel
    ADD CONSTRAINT "FK_a51dfbd87c330c075c39832b6e7" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.product_channels_channel DROP CONSTRAINT "FK_a51dfbd87c330c075c39832b6e7";
       public          zax    false    4057    226    340                       2606    18445 -   product_option FK_a6debf9198e2fbfa006aa10d710    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "FK_a6debf9198e2fbfa006aa10d710" FOREIGN KEY ("groupId") REFERENCES public.product_option_group(id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "FK_a6debf9198e2fbfa006aa10d710";
       public          zax    false    260    256    4113                       2606    18455 3   product_option_group FK_a6e91739227bf4d442f23c52c75    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_group
    ADD CONSTRAINT "FK_a6e91739227bf4d442f23c52c75" FOREIGN KEY ("productId") REFERENCES public.product(id);
 _   ALTER TABLE ONLY public.product_option_group DROP CONSTRAINT "FK_a6e91739227bf4d442f23c52c75";
       public          zax    false    4124    266    260                       2606    18440 9   product_option_translation FK_a79a443c1f7841f3851767faa6d    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_translation
    ADD CONSTRAINT "FK_a79a443c1f7841f3851767faa6d" FOREIGN KEY ("baseId") REFERENCES public.product_option(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.product_option_translation DROP CONSTRAINT "FK_a79a443c1f7841f3851767faa6d";
       public          zax    false    4107    254    256            m           2606    18930 8   customer_channels_channel FK_a842c9fe8cd4c8ff31402d172d7    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_channels_channel
    ADD CONSTRAINT "FK_a842c9fe8cd4c8ff31402d172d7" FOREIGN KEY ("customerId") REFERENCES public.customer(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.customer_channels_channel DROP CONSTRAINT "FK_a842c9fe8cd4c8ff31402d172d7";
       public          zax    false    4209    310    351            1           2606    18630 1   order_modification FK_ad2991fa2933ed8b7f86a716338    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_modification
    ADD CONSTRAINT "FK_ad2991fa2933ed8b7f86a716338" FOREIGN KEY ("paymentId") REFERENCES public.payment(id);
 ]   ALTER TABLE ONLY public.order_modification DROP CONSTRAINT "FK_ad2991fa2933ed8b7f86a716338";
       public          zax    false    4186    302    298            S           2606    18800 ;   facet_value_channels_channel FK_ad690c1b05596d7f52e52ffeedd    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_value_channels_channel
    ADD CONSTRAINT "FK_ad690c1b05596d7f52e52ffeedd" FOREIGN KEY ("facetValueId") REFERENCES public.facet_value(id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.facet_value_channels_channel DROP CONSTRAINT "FK_ad690c1b05596d7f52e52ffeedd";
       public          zax    false    338    252    4101            �           2606    18380 &   channel FK_af2116c7e176b6b88dceceeb74b    FK CONSTRAINT     �   ALTER TABLE ONLY public.channel
    ADD CONSTRAINT "FK_af2116c7e176b6b88dceceeb74b" FOREIGN KEY ("sellerId") REFERENCES public.seller(id);
 R   ALTER TABLE ONLY public.channel DROP CONSTRAINT "FK_af2116c7e176b6b88dceceeb74b";
       public          zax    false    218    226    4044                        2606    18385 &   channel FK_afe9f917a1c82b9e9e69f7c6129    FK CONSTRAINT     �   ALTER TABLE ONLY public.channel
    ADD CONSTRAINT "FK_afe9f917a1c82b9e9e69f7c6129" FOREIGN KEY ("defaultTaxZoneId") REFERENCES public.zone(id);
 R   ALTER TABLE ONLY public.channel DROP CONSTRAINT "FK_afe9f917a1c82b9e9e69f7c6129";
       public          zax    false    224    226    4052            D           2606    18725 2   zone_members_region FK_b45b65256486a15a104e17d495c    FK CONSTRAINT     �   ALTER TABLE ONLY public.zone_members_region
    ADD CONSTRAINT "FK_b45b65256486a15a104e17d495c" FOREIGN KEY ("regionId") REFERENCES public.region(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.zone_members_region DROP CONSTRAINT "FK_b45b65256486a15a104e17d495c";
       public          zax    false    4050    330    222            l           2606    18920 =   customer_groups_customer_group FK_b823a3c8bf3b78d3ed68736485c    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_groups_customer_group
    ADD CONSTRAINT "FK_b823a3c8bf3b78d3ed68736485c" FOREIGN KEY ("customerId") REFERENCES public.customer(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.customer_groups_customer_group DROP CONSTRAINT "FK_b823a3c8bf3b78d3ed68736485c";
       public          zax    false    350    310    4209            _           2606    18860 ?   product_variant_channels_channel FK_beeb2b3cd800e589f2213ae99d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_channels_channel
    ADD CONSTRAINT "FK_beeb2b3cd800e589f2213ae99d6" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.product_variant_channels_channel DROP CONSTRAINT "FK_beeb2b3cd800e589f2213ae99d6";
       public          zax    false    282    344    4154            E           2606    18730 4   role_channels_channel FK_bfd2a03e9988eda6a9d11760119    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_channels_channel
    ADD CONSTRAINT "FK_bfd2a03e9988eda6a9d11760119" FOREIGN KEY ("roleId") REFERENCES public.role(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.role_channels_channel DROP CONSTRAINT "FK_bfd2a03e9988eda6a9d11760119";
       public          zax    false    331    228    4063            p           2606    18945 >   payment_method_channels_channel FK_c00e36f667d35031087b382e61b    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_method_channels_channel
    ADD CONSTRAINT "FK_c00e36f667d35031087b382e61b" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.payment_method_channels_channel DROP CONSTRAINT "FK_c00e36f667d35031087b382e61b";
       public          zax    false    352    226    4057            r           2606    18950 1   collection_closure FK_c309f8cd152bbeaea08491e0c66    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_closure
    ADD CONSTRAINT "FK_c309f8cd152bbeaea08491e0c66" FOREIGN KEY (id_ancestor) REFERENCES public.collection(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.collection_closure DROP CONSTRAINT "FK_c309f8cd152bbeaea08491e0c66";
       public          zax    false    4088    244    353                       2606    18390 &   channel FK_c9ca2f58d4517460435cbd8b4c9    FK CONSTRAINT     �   ALTER TABLE ONLY public.channel
    ADD CONSTRAINT "FK_c9ca2f58d4517460435cbd8b4c9" FOREIGN KEY ("defaultShippingZoneId") REFERENCES public.zone(id);
 R   ALTER TABLE ONLY public.channel DROP CONSTRAINT "FK_c9ca2f58d4517460435cbd8b4c9";
       public          zax    false    226    224    4052                        2606    18550 ,   shipping_line FK_c9f34a440d490d1b66f6829b86c    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_line
    ADD CONSTRAINT "FK_c9f34a440d490d1b66f6829b86c" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.shipping_line DROP CONSTRAINT "FK_c9f34a440d490d1b66f6829b86c";
       public          zax    false    4207    288    308            R           2606    18790 5   facet_channels_channel FK_ca796020c6d097e251e5d6d2b02    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_channels_channel
    ADD CONSTRAINT "FK_ca796020c6d097e251e5d6d2b02" FOREIGN KEY ("facetId") REFERENCES public.facet(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.facet_channels_channel DROP CONSTRAINT "FK_ca796020c6d097e251e5d6d2b02";
       public          zax    false    337    248    4093            2           2606    18635 1   order_modification FK_cb66b63b6e97613013795eadbd5    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_modification
    ADD CONSTRAINT "FK_cb66b63b6e97613013795eadbd5" FOREIGN KEY ("refundId") REFERENCES public.refund(id);
 ]   ALTER TABLE ONLY public.order_modification DROP CONSTRAINT "FK_cb66b63b6e97613013795eadbd5";
       public          zax    false    4183    302    296            &           2606    18565 )   order_line FK_cbcd22193eda94668e84d33f185    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "FK_cbcd22193eda94668e84d33f185" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id);
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "FK_cbcd22193eda94668e84d33f185";
       public          zax    false    290    4154    282            P           2606    18780 :   collection_channels_channel FK_cdbf33ffb5d4519161251520083    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_channels_channel
    ADD CONSTRAINT "FK_cdbf33ffb5d4519161251520083" FOREIGN KEY ("collectionId") REFERENCES public.collection(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.collection_channels_channel DROP CONSTRAINT "FK_cdbf33ffb5d4519161251520083";
       public          zax    false    336    244    4088            -           2606    18610 &   payment FK_d09d285fe1645cd2f0db811e293    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_d09d285fe1645cd2f0db811e293" FOREIGN KEY ("orderId") REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_d09d285fe1645cd2f0db811e293";
       public          zax    false    4207    298    308            j           2606    18915 5   order_channels_channel FK_d0d16db872499e83b15999f8c7a    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_channels_channel
    ADD CONSTRAINT "FK_d0d16db872499e83b15999f8c7a" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.order_channels_channel DROP CONSTRAINT "FK_d0d16db872499e83b15999f8c7a";
       public          zax    false    4057    349    226            
           2606    18435 *   facet_value FK_d101dc2265a7341be3d94968c5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_value
    ADD CONSTRAINT "FK_d101dc2265a7341be3d94968c5b" FOREIGN KEY ("facetId") REFERENCES public.facet(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.facet_value DROP CONSTRAINT "FK_d101dc2265a7341be3d94968c5b";
       public          zax    false    252    248    4093            `           2606    18865 ?   product_variant_channels_channel FK_d194bff171b62357688a5d0f559    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_channels_channel
    ADD CONSTRAINT "FK_d194bff171b62357688a5d0f559" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.product_variant_channels_channel DROP CONSTRAINT "FK_d194bff171b62357688a5d0f559";
       public          zax    false    4057    344    226                       2606    18500 -   stock_movement FK_d2c8d5fca981cc820131f81aa83    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_movement
    ADD CONSTRAINT "FK_d2c8d5fca981cc820131f81aa83" FOREIGN KEY ("orderLineId") REFERENCES public.order_line(id);
 Y   ALTER TABLE ONLY public.stock_movement DROP CONSTRAINT "FK_d2c8d5fca981cc820131f81aa83";
       public          zax    false    272    4171    290            7           2606    18665 &   address FK_d87215343c3a3a67e6a0b7f3ea9    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_d87215343c3a3a67e6a0b7f3ea9" FOREIGN KEY ("countryId") REFERENCES public.region(id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_d87215343c3a3a67e6a0b7f3ea9";
       public          zax    false    312    4050    222            8           2606    18660 &   address FK_dc34d382b493ade1f70e834c4d3    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_dc34d382b493ade1f70e834c4d3" FOREIGN KEY ("customerId") REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_dc34d382b493ade1f70e834c4d3";
       public          zax    false    4209    312    310            L           2606    18760 5   asset_channels_channel FK_dc4e7435f9f5e9e6436bebd33bb    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_channels_channel
    ADD CONSTRAINT "FK_dc4e7435f9f5e9e6436bebd33bb" FOREIGN KEY ("assetId") REFERENCES public.asset(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.asset_channels_channel DROP CONSTRAINT "FK_dc4e7435f9f5e9e6436bebd33bb";
       public          zax    false    334    238    4077            '           2606    18560 )   order_line FK_dc9ac68b47da7b62249886affba    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_line
    ADD CONSTRAINT "FK_dc9ac68b47da7b62249886affba" FOREIGN KEY ("shippingLineId") REFERENCES public.shipping_line(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.order_line DROP CONSTRAINT "FK_dc9ac68b47da7b62249886affba";
       public          zax    false    4163    290    288            n           2606    18935 8   customer_channels_channel FK_dc9f69207a8867f83b0fd257e30    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_channels_channel
    ADD CONSTRAINT "FK_dc9f69207a8867f83b0fd257e30" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.customer_channels_channel DROP CONSTRAINT "FK_dc9f69207a8867f83b0fd257e30";
       public          zax    false    226    4057    351            F           2606    18735 4   role_channels_channel FK_e09dfee62b158307404202b43a5    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_channels_channel
    ADD CONSTRAINT "FK_e09dfee62b158307404202b43a5" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.role_channels_channel DROP CONSTRAINT "FK_e09dfee62b158307404202b43a5";
       public          zax    false    226    4057    331            T           2606    18805 ;   facet_value_channels_channel FK_e1d54c0b9db3e2eb17faaf5919c    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_value_channels_channel
    ADD CONSTRAINT "FK_e1d54c0b9db3e2eb17faaf5919c" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.facet_value_channels_channel DROP CONSTRAINT "FK_e1d54c0b9db3e2eb17faaf5919c";
       public          zax    false    4057    226    338            !           2606    18545 ,   shipping_line FK_e2e7642e1e88167c1dfc827fdf3    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_line
    ADD CONSTRAINT "FK_e2e7642e1e88167c1dfc827fdf3" FOREIGN KEY ("shippingMethodId") REFERENCES public.shipping_method(id);
 X   ALTER TABLE ONLY public.shipping_line DROP CONSTRAINT "FK_e2e7642e1e88167c1dfc827fdf3";
       public          zax    false    286    288    4159                       2606    18410 5   collection_translation FK_e329f9036210d75caa1d8f2154a    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_translation
    ADD CONSTRAINT "FK_e329f9036210d75caa1d8f2154a" FOREIGN KEY ("baseId") REFERENCES public.collection(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.collection_translation DROP CONSTRAINT "FK_e329f9036210d75caa1d8f2154a";
       public          zax    false    244    242    4088                       2606    18530 .   product_variant FK_e38dca0d82fd64c7cf8aac8b8ef    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_e38dca0d82fd64c7cf8aac8b8ef" FOREIGN KEY ("taxCategoryId") REFERENCES public.tax_category(id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_e38dca0d82fd64c7cf8aac8b8ef";
       public          zax    false    4139    274    282                       2606    18515 4   product_variant_price FK_e6126cd268aea6e9b31d89af9ab    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_price
    ADD CONSTRAINT "FK_e6126cd268aea6e9b31d89af9ab" FOREIGN KEY ("variantId") REFERENCES public.product_variant(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_variant_price DROP CONSTRAINT "FK_e6126cd268aea6e9b31d89af9ab";
       public          zax    false    278    282    4154                       2606    18490 -   stock_movement FK_e65ba3882557cab4febb54809bb    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_movement
    ADD CONSTRAINT "FK_e65ba3882557cab4febb54809bb" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id);
 Y   ALTER TABLE ONLY public.stock_movement DROP CONSTRAINT "FK_e65ba3882557cab4febb54809bb";
       public          zax    false    4154    282    272            \           2606    18845 E   product_variant_options_product_option FK_e96a71affe63c97f7fa2f076dac    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_options_product_option
    ADD CONSTRAINT "FK_e96a71affe63c97f7fa2f076dac" FOREIGN KEY ("productOptionId") REFERENCES public.product_option(id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.product_variant_options_product_option DROP CONSTRAINT "FK_e96a71affe63c97f7fa2f076dac";
       public          zax    false    4107    342    256                       2606    18425 0   facet_translation FK_eaea53f44bf9e97790d38a3d68f    FK CONSTRAINT     �   ALTER TABLE ONLY public.facet_translation
    ADD CONSTRAINT "FK_eaea53f44bf9e97790d38a3d68f" FOREIGN KEY ("baseId") REFERENCES public.facet(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.facet_translation DROP CONSTRAINT "FK_eaea53f44bf9e97790d38a3d68f";
       public          zax    false    248    246    4093            <           2606    18680 &   session FK_eb87ef1e234444728138302263b    FK CONSTRAINT     �   ALTER TABLE ONLY public.session
    ADD CONSTRAINT "FK_eb87ef1e234444728138302263b" FOREIGN KEY ("activeChannelId") REFERENCES public.channel(id);
 R   ALTER TABLE ONLY public.session DROP CONSTRAINT "FK_eb87ef1e234444728138302263b";
       public          zax    false    4057    318    226            �           2606    18375 %   region FK_ed0c8098ce6809925a437f42aec    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_ed0c8098ce6809925a437f42aec" FOREIGN KEY ("parentId") REFERENCES public.region(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_ed0c8098ce6809925a437f42aec";
       public          zax    false    222    4050    222            a           2606    18870 ?   shipping_method_channels_channel FK_f0a17b94aa5a162f0d422920eb2    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_channels_channel
    ADD CONSTRAINT "FK_f0a17b94aa5a162f0d422920eb2" FOREIGN KEY ("shippingMethodId") REFERENCES public.shipping_method(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.shipping_method_channels_channel DROP CONSTRAINT "FK_f0a17b94aa5a162f0d422920eb2";
       public          zax    false    286    4159    345            b           2606    18875 ?   shipping_method_channels_channel FK_f2b98dfb56685147bed509acc3d    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_channels_channel
    ADD CONSTRAINT "FK_f2b98dfb56685147bed509acc3d" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.shipping_method_channels_channel DROP CONSTRAINT "FK_f2b98dfb56685147bed509acc3d";
       public          zax    false    345    226    4057            h           2606    18900 =   order_fulfillments_fulfillment FK_f80d84d525af2ffe974e7e8ca29    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_fulfillments_fulfillment
    ADD CONSTRAINT "FK_f80d84d525af2ffe974e7e8ca29" FOREIGN KEY ("orderId") REFERENCES public."order"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.order_fulfillments_fulfillment DROP CONSTRAINT "FK_f80d84d525af2ffe974e7e8ca29";
       public          zax    false    348    4207    308                       2606    18510 4   product_variant_asset FK_fa21412afac15a2304f3eb35feb    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_asset
    ADD CONSTRAINT "FK_fa21412afac15a2304f3eb35feb" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_variant_asset DROP CONSTRAINT "FK_fa21412afac15a2304f3eb35feb";
       public          zax    false    276    4154    282            N           2606    18775 J   collection_product_variants_product_variant FK_fb05887e2867365f236d7dd95ee    FK CONSTRAINT     �   ALTER TABLE ONLY public.collection_product_variants_product_variant
    ADD CONSTRAINT "FK_fb05887e2867365f236d7dd95ee" FOREIGN KEY ("productVariantId") REFERENCES public.product_variant(id);
 v   ALTER TABLE ONLY public.collection_product_variants_product_variant DROP CONSTRAINT "FK_fb05887e2867365f236d7dd95ee";
       public          zax    false    335    282    4154            J           2606    18755 -   asset_tags_tag FK_fb5e800171ffbe9823f2cc727fd    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_tags_tag
    ADD CONSTRAINT "FK_fb5e800171ffbe9823f2cc727fd" FOREIGN KEY ("tagId") REFERENCES public.tag(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.asset_tags_tag DROP CONSTRAINT "FK_fb5e800171ffbe9823f2cc727fd";
       public          zax    false    236    4075    333            Z           2606    18835 >   stock_location_channels_channel FK_ff8150fe54e56a900d5712671a0    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock_location_channels_channel
    ADD CONSTRAINT "FK_ff8150fe54e56a900d5712671a0" FOREIGN KEY ("channelId") REFERENCES public.channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.stock_location_channels_channel DROP CONSTRAINT "FK_ff8150fe54e56a900d5712671a0";
       public          zax    false    4057    226    341            c      x������ � �         C   x�3202�50�5�P04�22�22�3145�4�4�-��\Z�Z�阒���Yb'�����\1z\\\ N�V         �	  x��Z�n�}���� #�/}�CQ�����6m+�%I���_�Q,�)8 ��hًά�S.	�ٿ1�w���S�8��צ}��ݙ����I�U���������~=n����럛�⏡z���iJ7�H���ݭ߅j��,ֵ�:��[�������?��a?P��pr�94���9\<�VqǊ�Qm6�&v�Wy���֮;'�8��2�c��;ߓ��[��n�=4��c���3�����a�taK��w��}��d%��r&5��i��>���W_��*�����
p
;��۪ n!���92'��9>L�	�|��o��´�Zi��8E�'GØ��`�����e��
�(�R��05���m_�!�#haO,aչ���,��O�U߄���J��������LtM}��C����'��EU����wBР%��E�Φ{��B;�m7���]�a�&�L�&�Uy��z�9�gq~��������ᱻ��D��,N��T>�+ԇ��τ��i)#�Z�x�.~ ơL�s�'��,
�'��j(V��kǴ�S����pR��O'���a	�)Q|ؘ�&�J�/��P�r�7e�+i-wx.�M���9��Z��Uw2n�W�@QѨ׎))\�(j4�=�m�&}��	��IZD�1�C&�x,��U9��8�k�)1\�(R߭��޵~<�9}��H�3\��x��2�?$���%p�?���%)U��0����s��H.
TXd)un!�x��Z�������pq��I<MΦw�ځp#�(�&D���v�*�k�v�5�Ke��/�=LW?~�c ���0�,ZPYZ�`�����0��]�?���(���_1�N�q���+�����dc������a�D��\Sn�@ќK�����w��{8��p'
���Ph���.Ty�Ho��ĥ
�R�"�̦�	=��������fg��ZI��!�A��h8�H�{\�@�3��}X.��!۰;#!�C$��QJsW�b&=����p��!����0cW�<��64�(A�.���+��:�*�\wN	�J�0�Np6��k?�T#�l�����_N�`xJ�u���<�vLY�2�H�b��\���Cho��2��S�,��!���o�<ڗ�n�9�kG��-�l��_ !�󩻓�1r���4Fr\�(Aþ�aŘTk�)7\��z�y��)97�?�-��D�p���T��{�Ty�8���)C\�X�5Ç��iZr�{
"R�l�7?��@D��;�*7�����p�bam>��Mcw�|@N�v��ȏ裦�/D̖~We��������՚r\vΦ��HY�X��äŠe��sZ�b	߯���p��}!T��mMvMw������9����Pe��lښo:lǅ���N����HO��	]eu	_�1mԳ�S�*���}���d	�����h��RC��$�V������f��b��꛲�4	PP���-���M�!8 ]�PPC{��΁�+��Js ʪr���졔8&[��1�A��z!�@�m%�
�|�FAI�1�L�%�wկ;��0����XG�=,���&d�۽�L��wR���X�9r)��c\�sOIb���WX���֏�� b�Y����Tj�ݲ��0c�c�	�+�ťE��ej#I����x���۱����l	�[y�=	�E�<�r�/����5��0�����0us�U����'�eJg�b3�h�8�ث� .��.㝒�D0�rϰ�o4�`a����͋�"?�xVL+�~JS�99�x�_�M�aB��q:]�������Gbl�̐1�ܲ�R��rX5��޷c2�?3�b:'�����@4t��|fo �b��ʃEzv�9%��r�t��$�1�9�ְ#e/�Lj�U�)Х����c�{�q�Õ0/��i�n�Q\I^>� M��Vb��A�i�\sM��[�_FS���nu���졹�κ����7J�W1W���>���%�>k_l�ô��pn�2��,�.A
'YF�]���2�]uN���F0���G�|7w�X	�� ~C�2aU���h�D�u�!�u���{���o��}Z��5[~���f1��0�bŞ1����p#��{g)��З��?���m�M'�&�
��u���Y���Eܡ���>�nh��f6�-|��u����^�,�]*���+u��)�����pu#�4�'�ξ��p
�g��Oޤ����ܘx
 y�֑b�n_;�����Fr�[���M�WWy��Ё��V��gz@�:n�O�e���ʹ���u�����K��߆����{�% ,x�a|�|y�ɩ� -N�i�;����1xјM�о��{�w�-<������
���Wp���wJW8PN��s�lz���S���k����O*1����Z����9�����R`�ϥ+ ����Ǐ�<��c      y   o   x�Ϲ1E��*�X^>zq�u���c���'��z���������r�1�0�0� �H"�$�H"�$�H"�"���9DEQDE4�D}��h��&�hb�!�b������"�      x      x������ � �         �   x�mɽ�0@�}
V���*�F4� E�2� 4��E����� $g�rP �B��Y��"�0����X�����Z����R���|�.��]��d+m���S_�2&5�$-3���쫥�zV����ҵ/O�1ֵ�_�M�k��/��/�0�         s   x�3202�50�5�P04�22�2�Գ44771�4B�22�34�015㌏OIMK,�)�O�H��K͉��2-7,�,���55�(�HΪ�H��L���`0.�4�L�4B#N#�=... ��         <  x���=k�0�Y�Es�;}z�إc�ăq�H��B)��=[:H�@���=����Y7X�"���0 �A:ZX�<;tt#��*^�6�m�����_>�N#o��q�����X��e�|�����[*����c�y;͔o��� :��=ˆ۴��i~�~���2���=V<�煎���M�CT��vjSq:j������rt�K���C�.Q9�����\���Kǫ�:��CTvfP��5�eb���Z%�[Tx��VCxL�� �y�%O����y�q��3��Ǥ��;���V:�q|�ʎ`.^4�G������ dN�         �   x�u��!E�5V�f�|Ppj����,a����C�.���?�= ]���N n�p7��I#t���%Fp%ɹ���ԂҜ�Μ����F���~���F3�s9r}�v��w/��O|��ܽ[q��d�;�	��[k_��f�      {   (   x�3�4�2bc 6bS 6bs � bK 64 1z\\\ �@�      �   G   x���� B�o��hLt��?G_?�K(<5diᅗS���6�]*\��jܸ}t�㫋/&C1xT��>�?�vr      z   C  x��э�@C�落U`�0����X.c%��?����μ���4����;�>��Q5�F�hu�o C8��6��p�#�G�A���8�xf�����?�i^��y��G�4�F��6�F� �p��m�#1����``00�����&�D}�N�^%!Q�B4��hD#шFt��8 ��8 ��8 ��@1��[�-�s����bn�����~�ĝ��0C�D �D$"�HD"��D$B!�B!�����������>����ڬ�޼��$msm�͵�6���\�k�Vk�Vk�Vkg���}�ntz�         P  x�u�Mk�0���+<��b&�{]����� b�]a56F��������L��8�5���3%�{d{ĝdJK	Hi�M��M�W��ޏMC��.�\��?�1������� ���J
�SX��:�q���n�/�U���E�Ճ�%�0CwO���"FZ䊳��C;�Ж��⣇.�Ք hY ZM˂K�V��.�Om�H�%U��-���Za,���X\��%�}\���=�E�R�vc�R%W�tm�8�t{�M[iglc�J�����C��w�,��� snT�����4(h]+�y�ǯ��7Fp�,-�-��M�e���]�����)�wEQ� ��5      a      x������ � �      �      x������ � �            x������ � �      �      x������ � �      #   x   x�u�;�0D��Sp[ޏ��,i�� �,7�>H�Rm��޼�p`uA����t�s�f����3�e��B�G�X�*�hy�~��j�_t]�[m �ϞHe���C�-����X@���7�      |      x�3�4�2bc 6�=... c�      !   �   x�m�;� �z9�/`�~0KΒ�$(�r��Ǥ^i�=�5��� ?�x
B���*R�P��Y�}\��Μ� '[AQ⩼Fi  �Ф��G4�(�?��>���<"k�1+�-N��K;��:*�{z����:      '   �  x�u�M��0���)z�"�߳t�����re��ܾ�D�����R|�L��Q�#����D*��d��|�j���
x`CZ^���<�\W Q�눂�7J�2e�@|~����T��ϟ`	��Q|	��>�+XI�`$�+�ѹ�5�����FGi����t���M�h�隶AR�X��h�,[�(��D��7��R�T�8 *��B��1v4��[�QR �-_EG�zI�$�T�?���i�Բ��@ɒ�)#X��[�P2�D��o���P��3=�EG�LS/S�(Y�9���v�.�n�<���
�o8�Ղ�7ʿ�r��$��𷴣e�S���F������X�?�Ni�Z���#�騹4I-F��=ǩHrip�z�]Jٞ9U -g��k~&�aR[ܒKC�>�oHGӣ����G���EGm�7 '�G#�.��cJ�&�%�P�t��l/P`�Z���������6ޑtBT��"v�Y��xMu�3hŎ���q���2�y[A��+�i�=!;��kޖ��4��.Ǝ�o��.^��|ory�y������sw�vt��4oK:i�����G-�6
ޗ-ʇ�9_��Y� ��%��Ҩ����k�=AK��Jv���Z��M�	�:�7��      }   W   x�λ� њ���w��ť�E㖶����jw{�6�8L�V��Z��^ !�0�#�0�#�0"� �"� �"�w��0-�      %   <  x�u�Oo�F���O�SoY9�8�i�mZ�9�ҋ�ׂe�V���߾O��x�񄟇�#iq�9�����{a�^�J$��\�}��e���x&&ޙ_3��9A�C}=]�~>��lP����ɾ���?�ƞ<y���0Vį�8,��3
&�;�8�H���|�^ϗ�H��	��!���[Q�s7̔(ِ�t���CK���/�)S6�y�l ��-��;vKOJjC���)DY!�u�T�؈�N��@��2y�c7��@�&':��@*�U����Nİ���(1�xR����:bA،�2���|+ʗnz��°GؠXJ�H)�p��/�н�Q^�ՖDJn}��a�vl
��]�<��u��i��%N��P^�u)Ew���S����w�_�C�3a��vqJ�]kH)�������~Zma��)s���!ih��0L�܏#�V6���F����������؝|�09�������*���=�G�݌��)�-��0�1��~֔QJ��4��O�.׾�I��l;k|ms�Ͼ���0:\�����9j7J5gm���xA]pxl?ckm=�H,�E�az!Aڶ�K�z�/�"r{F����ޢ.�!��[.�g�$|f9W�.+�j@����9�`�38��e\ٳ+9[m�Ď]{�����`�����ẋ�Y�Jj�~�i9�g�k��M�ݨ�S�X���/>���y��&��Uz˾��q2M$m}��Ӱ\f�t�2�*�m(�s�F>"L��Y��d�Tr����^ѣ��!�>����\k=�����n3�ye���J^&%:��dgIoK�8���
b��~�����:�      Q      x������ � �      m   4   x�3202�50�5�P04�22�2�Գ406�4�4�-���Y�i�i����� ���      o      x������ � �      t      x��\is�H����+x��0�+ܺOtl`���6������I�������:$���ٙݙmMO`UVe֕�Tf*�gy��
N-q�9ϝ���$p�*��s�M�$���Φbx�c������DV��T6�u��Sy���`�[��n.l�̔G�Lw]�AՑ7�\��J+�����B���xݮMhj�Yf5�&�aX���4Ny�f�o�n�sg0���L4��ȴ&z�D�@F#�4��l��`n���i�O�a����n;�ر��a��_���������Яgy����s�Ƽ�.-7�M�<
b�){qԛ�#Ϙf��<�,��L�l�
[��Ħ5�a�'���S-؛�E
t\�����;}�\m�W�g�$E��UN�����2<�v2�s�9��?�/t<
�0�����V���ձMXe{b#b9�}+H�ti�n&�OU��
6����Ϥ�R�b�Iz�&֩D��1��־��G3���819���V7f�%j	� gRRd��������S��V�h��v7�����ao�ZA�u6T�>�#�행f,���]�׹m_.��8�}������Y>��w�;��C^= �&H����ȒP�N;�|O�#~�h�z
;(���#i
`�q�p&s�*���S���;�WÎp&iy���C��#��/���X��Jj�:���=��Ǝ$��
:\>�(M^��(qr�:���=��������I�v�\ؑy�ͷ�XYa�wD*��Ƭb�������ʥغ���bc$)਀����pdc�����Q���e8��x�Nd8��d�SNe8��Y����^bx���W^c�8F �#��>�F��a2F8�ي�E͋]PA�����x}yM�|:ڝ�F�&'�{�S�<P�X�c��,�����i�;4Ŵ�6� #���;(�'���*��%�
��S�N�:����� 
Z� �H�)�E�ͷ�4N��.``aB��T@�_�~�?��{��"'�1�0��)��N��EY<�Q<+�Eh������a��2���2�r��c蠰#棎�jB�+ǋ��Y;�|W�ñ���<s��-w�c�N8������8VS��r"��}"y)�H��0��(����1*Ϩ���*1�̨
��|�;�	{�ǋy�#�8щ�T���E��3U���fUY���
|+��{�7Ab�FPAcD�9F�Q`D�%F�QaD�5Fb�c$��FIb$��FRIcd��9F�Y`d��%F>�M���w��'�QR�7�MS@�TQbs�*#�q�R~0��}㿝��[����mB)�H(_�KC��@_�7��3VT)�_x^�
������k��}�H�?�=�i�]�I\J0-�������q �ʪ$�b�i���=c��0�������1
�(��
��T��?pe�S�����N�W�}y/O�3Yִ�$a7XTEM)�����
��þ��;���ܯa��#LKp)���߅�X��Լw��*_�, �����N���-x��ܸ�x�iy�0&%x���#��d���3A@+�7�V �wh������9A9����N�X���T;���h��LSU^�|� �BQ?Q��wM������	}B�
n��ޏ@�Q�̞Ξ�9����#�ȗ��d�T�_�$�-�u*t�˝F3r�m#��W���v���|�Ǝ}� V����u�)(�f�y^���:�JD�Q/�����7u�t@�>��8ު�;���6��Y��6�Jx�z���)��P�#D���jf�E~�<�D� `X>���rm"+��e۟ee�X/���`�*��s�z�/l�����RN��^ �D���r{��rc"i&�^1�P���n����EêpV��>E�)"l��#��SGE���m����u�ﲅ�XH�Ȫ��	��5�_�&�E:L��x�@�Q��L�-˯莽�H�.����1e^��eT�ҏux���\������|r<�L	>�^�c��" UI�y1�mx�ԱJX�u������ƶ���O�� v�:E*ʔ;��v��tƖ~��Wd8��Ԃ�;% �z��s�cG�4R~*U��ZO��Ǝ�K�r&ȥo��N�)9��*5,c��D���rƢ��>s����&��MP{k:Z���!^K`�GC����� ^0!x���5q��h����1T�+�9e ��w�h��������{��,�&����6]���Aƕ*Y�T �pSVB����T(K�[X���m���`u���PQŋQI�6S�nm�)� ����8`J�02wmC
u�V|>�~� �-<���7�Q����G�x���>X��ٸa�=����mq]�Fѽd�Zrk�??֮�3h4y�Fssq=�8��>���n}�^_�3�\w��������a��-{e�Ow��u�p��{��Vsڭ^��/���z�P�v���f��>���91Z��$"9�9\��T��$yC��
Cn���b��_V]�ef.�����FK2��rٳ�&^���(�;�֘յV+\W&�F3l��b��Ɠ�����n�����?���7�p��7��IWV�󪹕�����7��`�ͷFCU���Ŷr�بĉo\m�/�$V�_��^��k_��O��T�[�n6��W��^|׼�8O� T*�v�����+�:ߎnkN�X>Wg\���t����6��	���f�4v�b_�+��"��7�t�.����5��4��9���cx-�7�bZ�|���_[�����������˅�ݰ��s��|�_�܃.h����iy?��@�ɬ�we��??O���ϥQb��Ѣ;3�-��3�^��w���u���⮏�#��;����G�>Nŧg�ի;w��?��$�k��{}��v�v�Z�U���#wgO�r�,�<�y����r��^�Oko,t��kgթW�c5���ЩO���^�a8x���������\��@y���֫g��{�hv��Fۼ<�ܸq�i?;3}�
������7�l�w���	�/.������s�d�n�1�����pܼr�}s�-�,w�����;�z|��m4��u3���_^{����wE}~�7;��n�Ν��f-Ow��n_�Nn�b����r�e2�_����~��{`1�[��{Q�_��rs߼{��v�f�o��� ��x6B��v��֏��ۥ�8�y�����{Yw�[�?1��Wk:i[�K՞��ڰ�=����t;3�:
���s�0�����q*����E��e(\	�`ɮ��zp�x��?6*O��h6��Ik�T��Kc3j����|#k�Q��ꌷk��iJ][�&�m�~q+�`��t'��7���۹ŋۡ�qg��ڲ__I��0
����7/ĞẓY4�E�s���]��1�n����带/�f��*�}ñ�n�z�S�6DMe.e�;�#gl#�z�_����6�__����b8�����vg�a;пש�mܭ���5�$�{z���G��4�p���������i�g�=�PcG�wy��z�0���F��0�V�Gkg ƯC� �B���\�Vj�Q�喱*c
n��+�U���u�>�Kya�s����^�.N0��xUD6���dE�Oo��`�x�'OWu?3}�ZGė��@4�*�oC���t�*G��>��▟�~�Ex��&9z8�vJ#��<g��K����-��T���r�[(�P>��e��8�{Z<q4f`Ҟ���̭��$��z�t���1��H1?�|/��8"��N>)����}��1�5�z�M&����k�bwn��3@��̋�<�*v�(�B_߃M2Þ�s�@���%��ƺ���h��{���IۤI�����:!K�̸ni7���m����D�mD�ɣ>^���'�eNS����LC���@.�����,��3��}�d�����7����ǖ�a(�n>~>~t�+��
\�r�9/]�}t�IU�*h���T��*��9/�!��Q@i�I5��a9�Kh��maD0�
�\�K��N*q� �  [�IS�>/%58�W1����U���}6,?/��?��B��CM*�AOx��Kh�H��@�����#[��?����f����p��D�쁫��
+\&<H��Kة��3�P@��*$JVjti�T�K��C_�*+I���"�H��ɱ�_$`��>k���ڇ����n���G��xJGc^��ͳ��]�� �"��SV8#�G����w�Ė�H��7[��B���()=� �سF��~	�^�p(=�`Ѹ�9���}��ٱ ��ؘX�D�蜩�cNYS�UM49��DQ֬�$��	'NxI� |�*B�1>���
c�It	�?���m���e�G�Yi����] ��}j���)����i�aDW�D�<U�T�[^*�{P����I�tvvF[ԭ���3��%=�c'�T��_��rV8e�n4Bqt�����S�E����aJ:j��>�@��X��I�O�l���`�)��6���Hf��ȇ덴�^����:�?d^k��$j���$���pz"�������vޟ���1g���gfp<���h^�9Z��UI�D7,P��x�F�P1KV���qO��EqJ%���ˣ���^Y\ٖc��$.{�k�xBo3k�Q�,���8��i%�w��ۧHN�*{4�b"i0�����
:#I��Y�֊Q/B^�f4�O3���8����N�������G
��=L(�3���T)w�$wUOv4�d^!z��s����2�АOo&�y7NN��q2��j8�Xwz'D`B�`����c��(����N_�@��EA���<���i��K��_�~��1����8W̜"n����Oٜ�q�A������9Pڞ7�}j�b����Ő��N8l��4�!�a9�e��g�IS;l�6���m֥ϑ p�9�(�OKȘ�4D�>�~`ǈrS����ܱtt������=%����c����'y����E>u�X#�j�Gܣ�w��C%DP��G�ȣMYv�4웑צ�,�\(?�#�>��������r�ٸ��:�x��#Q�wQ��l����~m�Bi4��t�$ф��&��'�����خ�HGK�/<v��~�Ǝ�b7�ٓ(Y�[����h/wCG�'	��;�h�L�b��h�@�Ӽ�$[	7{R&�0^���"�� Qh��G^�����dL��U�P��``�a�U�����9��:�"i@O�;�z�	��"�ȅ���B�r
Ǫ���2m��~���i�����8Uz�94���z�I�����QN�u�RD�Z탒��"Z��l��7�3��k'�Kg��Y���`!�>U����ވ�ҷ�߸L��u��8G7w%´+�-��+�8Ğ)��8�Ў 1sH#��D�!�JE�~"�>S)�D�i��EO�i��EZ�k��)w�ϙ���,��ɒI���&��I9��)7��X�bf��G�v�}	8s &���J��*�z�<D*-y&R��NJ�`ʕ<��D����7�U�7���F#�T"�J��Ao,/-�ĩ���r/��zd˩����H)���fojGDz�����䁞� y"2�3a$�I�4F�re)	w��H��Ri(z��DK�ZN%�r�B�&N1���h�r�k���OШ�*w@�R�#����@�$E* )N|>�H�h����/�����?��ڜ�
�����$��ٟ��O��I�<��Tϫ,/���,�_��"?=�E������!e�A~{�O���g��y�(�ъ��"��H�/��Ez}�^_����Ez}�^�gL��_���,�/d�gg��b������/.M�?�濜i���"��WR�H��D��2���`�j��&��?�r��]�ĥ���"�:!������"��H�.ҫ���"��H��#�"��H�.ҫ���"��H�.ҫ���"��H�.ҫ���"��\�W��Ez�_4��f$��RӨ��S��\�������Dj���g?�����]�      r      x������ � �      �   0   x�3�4474�06227�4��LLI�N�,�/J)v�L�IA������ SJ�      _      x������ � �      �      x������ � �      �      x������ � �      M      x������ � �      O      x������ � �      Y      x������ � �      �      x������ � �      U      x������ � �      g   �   x�uʽ
� @�Y��ܹ5�ѥc����	z-��w�:��-���|P�ժթ���0��
ar���q�>#6\�
��<Xp5��g����3󳀽��0�V�"�{�z�����Pwy`(���:����0;      �      x�3�4����� ]      e   G   x�3202�50�5�P04�22"=CScCKN#�R&&&��y��%�y)�E)
����y%�����\1z\\\ ��j      5   k  x�}��q�0DϻQ(ma~�@A8E`_���a�,.�i��+�jSo�.�&����RՌ��3����z�O��.�~���k�vz��:�շ5h�ZX���������t�c�w�䗿���k��������X���Ő����~����_�>�՟k�~���>VO�pÈvx� n���p@0h�B�t>��`�
7��ҹ�p��ԃ��pC�\�� z�2�<��Q�������`�
7�+�@П��>O �H�����No�T�a�|En�V�a��j��p����F0x���8���p�r�
 z�Re8���`n��` �!+�0�����B3�Q���F8�Z�f��s�������9��pC�ѣ�F0X��ue��F0x�DߡnCT����M�/A�Wx?�:�� �Q�>���q#���G@0�
5h3q�$6�wS�p��u4rR�;�W7�A+���#n ��*ܐ]'۩o�W��������p����9lC�p�K��0*�9wr#��k7�;��`�j�$7l�o�V����� A_*���y�0 ��=��^m�U�a-����&ZȬN�]����?�������s��      1   �  x�u�ۍ�:D��(6�5�/>n,7�8�ʤ�U8e`�-�G��y�m������0���}^���j������G��P���Y填7
T#eu�nS�A�j��v�z�Bu]��3W,]�QGu�����7�א��z7��MT�k��4�Y]��B������B߳��Q�`�۷���\�l�6��az�2�0-\��+�� �q�ΕOȡld��W����ʗ+����S7�1���C���怡��FF���m��dTaZ��=��r2Z�0�aO,���A�v8t����\�A4��ľ����F���6q`s��F4�ۄ6q$d��x#��pm�諵��D�kǚ�e�MD�6qzD��x#��F�ęc��	7��<޴�s�z9�nD�H��*�e
�����{�I�CD(��yS=(�!"���U��O7�(~g0)1kZ��l��C��;��[𠠇�PbV$6>�`����PbVY���AA�<Ĭ>�՞������!f�ѻ:���C�b�W�+8(�ar���r���l�=��/n����B��3�
����B�]ځ���2�F��h�\k|P�BDj��(_Fo�t���HLSɃ�"R;��˃|P���n0G��%D�v�j�C�AE�C7��-D��0�^ă�"J{�}����=D��0)�~�*z������|>� � u         o   x�Ϲ1E��*�X^>zq�u���c���'��z���������r�1�0�0� �H"�$�H"�$�H"�"���9DEQDE4�D}��h��&�hb�!�b������"�      ~   A  x�-��m$1��`#�z0��?�뮽
5c�WX�1c����%_�%Oy�sT���5vl��o���'������O�Ƌ������|��Ӧ�s}�����I}�И�� ����Bc�C��vL��z�б�F�ى�M>��(����b%%)I)JQ6����tԥ\��J��(��(Mх%,����T�SsB���.�H����ͤ���,��&O��'�ņ*{�'�w�PEL�~�~��(�w�Ҕ�;�����6)����'.�QE)����S�?כl3�(��*�2~c��,�� V�e�f6�̂*,�,u盅f��?���}�      +   t  x�u�Knc!E�x������e��L�N���E�3���1�+yvx�p)�س>T(<2��̜�1O�������#G'{\����&�C�H|�bKRIyq�G@@L��6����>�����j�. �Pd`�́�"P�l�D�P֣�N�$p�@�Q��!)H"�2��ѥT��0447�<4d�	:��S"��Q�]U�⒏��׭q	X3��@j�惻%@K�d���������v{u$.O���Q/���#�T/�g��k��`�9�[<Q[Q3dd ��}�&j��
4P�n�V��P��E@�!��=0T	ܡ��v�~;�;&W�%�Rd9t�5U{G&Z]q@�@�]:Ѳ�di���u�=��� ���h:ڃIX��u6ȞKƒ��#3�L������hO����4U�lڒ	k$�7g�-�@Xc�;ЖM`[�gϱ$kQm�hkA�k�ƦT��Yh�F�&KF���l"�6#^h�&AM���ڳ�*���>��9[hϦ`�DoU�B{6k���@[6⡦hgc��mوV��������h�FP�=�u�,�e�j"�=�B{6�4R���~�J�}����W'Z�V+Նjn�DMs��;�t_�ʛH�o�׿Nr�<�O������      /   �  x�u�Q�� ���{:{�=���J�fT�dwN?`o6�I���X��*~TRi!I����Sa�nJ�,(��Q������i[�c\�6~F@��b�3�{���o^3�+�U�(�i��:{�Oq۞rxF P�U��K#|���juG��#洌E�w?{�`xW#�ّv}u��9�5�G�sX�X�~�Z��e��Y�Zy��0��S����Z��Eѹ������`/(-mKi$Ix6r/�<~��r�X�Kt�Yˣ2xZǴ�pOi�E>��~�6���]��iC�x��U�QR\DFE	$y֫_��-Jzm������=��0M�i⒮n呷܉�%�Z]����je�~Yo�e�_KF�s���S	�xա7\jɘ��E�~�C9@K�1oQ�YT;��y/%O��m̩�y]xD�a̢KSʀ�n�nM�|�u&�      -   "  x�uӽN�@��y��@����lHXX�YP�JР����H�)>�t�9�H������̎HɁ�S����yO���w����+P���<>Հ�v�#W���{:�����%�5��h6#����ҏ�Ԓ(���%m�`fAAk����Bo1��0�����c\�y��C/iQ�:��^њX�B4t���r��+���-S����F1ݍ\�j;i���U׸���ݠLm(�@kC�/����G��1T�dJC܉�4���0}Lg@���a� H>��      )   �  x�u��jW1���?E_�%�ɸ��u�h��-Ru��{��m/���N��̙�pg��rM���y��Ʃ���������]�u��1IdC�p�"]�r���sA���M� �@vlb �Ms����!� � X�
�A�xo��!F)Bx#E@�����޼����!,�����m����0��|CG�`����4��7�:�@8�Y \m���QNqc)�pӹs����;���
�P.��|�k�A��R���_��~hH�a�ڣ M?@�/ C� 퓊�B���T���bHnG��Q9�:�<,��8�o!&�@y�d���B�@p/w��ۋwT��.��������+���6::�wґك��tUA�>��Ba� ����D�W" N��05LW!ͩ'c0!yZ�l�}!M��3X�'6lHqCB�18|�0�".�����=�7�=�f���,�Ë��� ��[k��
�j�����7X(E��X��Sc��F��,�|��,�͖搷��!Y���!Y��2������N#����d��*Ld�R&�5ά�)�%���$z(^��#�V���3UP�=��-Y��3��03}�-ɺ����4�0�N��>M�N����য়�>��4P�
��g���A��#�E��Ƭe~��<ú��n4�x�=������[SC���[���Ǉ��mm&0z዆��������GSG]��\.��+�      3      x��[˒�F�]�_���6���C*Y�n��P�vO�l@0I�	 �H�(:zᏘMG����dι7A�dhbB�L ��y���d����xe��o&c��d�ZM�ޡ�j��r�]Z5������d�?[WUvkN�9�`m���-m�6Η�M�����ښ�������蓌&�iU9[�搖���e��M]~6M����hM��evp����`�rk|eK^ع��xS�E��1-3,*�E�6�pgξ5^P���������5^t���	�44����B_�7�<�>4��ƶ���p���/��x0���t��h���b<����Mn�A���W�u`�ָ�tņ��ޙ�!m�ɷ�ָ����B1o���;ݵ����u�klH):4��dS��MM
*�d��t����H<Vд�q���� ���HȁS*�����R�h|��Lj����i��3X������C����3���-d��M�������6�!�Pj�ؑe��'[U������|��g�j��Nɇ�\m!E�|_5.Ks��c����夐�`�w~�����jn��h�f��7fk]f/����;�4\����}�7xZ��G&�tk� �(^�O*ڼ)���}��d��n���"�0w)x�3jd#�����/���a0L{	8�G�q/14]�u�N�7%��K����� ���t?�u�V��!o�Լ~�%�2i,����rm�ߙ�m�c�6�C kj��y�jA
U
�
���BZr���W�{��U��i.���ٓ���-�\��'��8_�(\�[|���|��`!A�=�Ԣ�WA�N����>��>ߤ4w<����l��o<�<���:m�x��N��s6���g�*����X��ce���fy����`6���k2�����®��~<_����ª.do�7u�M����Q�I5��~������~������Zm��r��"���C�SM�OcS*�)�9��]�@P�w��ȼ��ΨQ��u��aOw �?��%f��G)
W���s�ۺ Q�8K<��NO"$\9^�બ/�P��f>��~6]����t6�� �_;��w0ξ.�Z�������z1��b�m
}�((�ms1*��卒&��o���0Z�P�b+�TDo&�gp��e#�xb>T}��|�ԣ��}g&�}�zW>nc>����>;��s/�T50�D�?�( �u�2�ݕ���c�^ߙgo_<���r>,�~�/'��g��r�ԫ��Խ���WRe�L l����B	��~u��:-��银g�{�o�4��~�����+�>O�;O(l
J��J�mE!�:�(8XCـ5z��p�,{7?�'�~���怒l^�X�����V~*�w+���\����%4�����8�==��-n&�p�HP'�8�a��<,[V����Ɵ��u��y���oC29O:L1��/�T4��ܷ��c	����w.�9��˂�ُ0�A��ۼ��c������C�M`'��o�����I�2@a�ҏ��"�ݗib���xl�?��`=X�Sd�����|5]MH�oiCKl���g`�i���0_����Ƅf��\5�d�|�V'�)�	���_"����~m�eޥ����e&��_���Ty�ǩ���Xl��Ed�����"� U
�O-��mwD�C�^#��Q�^TA�d>2o_�b���u�.x�����O��ۀ���>�Fw~@>��O��l9�'�r>R�����H�6l"Q|�h3�m�AC�����32t�65Q?"> �3���]���h>����>dfG�B�	���hkXR\�H�(p�Ɩ`�,��8qܜ�s�z������Y/Z���ռ/�-UU7�C(���֓���z����)C! � ҁ�SPPN"��V	{��{�E+"4
� ��<蘐���v:K(pH���-�GG""�#T��C=0�n��4�F!���p�~'8z�;����ch=S�K�`��Lr���_�p4=V��@�0[�EP(�ND�I�UQ.���7�[��y����'�����Ew������d9�����w�#XC����[�*��Q/';�ܱ[h�L�K��߃�Еȶ3�@�ĸ��� �>�Zp� ���������~TT��@0+0�q��"�K%����%��˸��vPPi���J���3�$���� K�4��>���G�'pʊQL�$4gJ��[9ؼ�i�z�6�9Y�o��
=�-]/�69܎ƭ3�OÙ��r LsZ���e�����ȳRR DX{/�S�BDB�� �hz
D<���'�b2�G#Z�ڝ�(����+Oʕ�<J�E>�Q�Z|�=i|��tkƓE�	5�����bi�m��� �S�f��c�
5-=��t�M8"��r8� �X�ǋ�`5_�EjE�|�������$�yG�J��X)=�8ܭrDg"���|֥�v�U�K�o��x�&8���/��۳5�^�81����f�]g}��Ӑ@��ӗ�ɕ�o�&���2�}��=nI7���{���.��n��K�İ��9:T��3���#z ���_7?�#H,NAf�w�c_2f����h��s�����PB��d�G/kD��!��Ka����H�7b�#c��b��*��\g�|0'pd#��Fқ�ڜ9�B���\�vu7�QQ�s|�3f�� Y�}н�0HfC܌��/�?�H����$}%�R�軲�T��#��A���p��m2],�}+��dz�74��b�s�dhHi]5)c����u��c�!��E����S�4�g��{s����x/����k�k���5.���ѓ\�P�>�ʷ@�:;Rߘ͊@��8��2Oҩ�ἁ�2i�x�W�
�I��HLh/�U.�`DG,�xu�����bW�ͼ��6j�M^��|�qf�e��R5(���	�K�L����W�a�.<q}�����+�!��~�w��MC	Z�藠�b�t������(�f� 5�  �I%-��{��n�ۏ�� ��9��y+�s�K�
,�t@�6&f�>Q���1C�ۯ��E���� Z�RI�2������lqFb��ݚ�G+V�"E�9s��R��T�� �Lq�|JFL�4f` �����ET�k"T�ą]C���'�r:-�I���4������;�A�_Ɇ�^����W���`����&��*�ٙɥ0 �u���&� �.�Q�bǽM똸�L��YSE2Wg�V�$���+}s2����t!$�:	NŊ�����S�s8�/�&m$�j��ij%��~��	�Dd�X/G��I1�ZJh�pt�/}@<�,�y��W��L�oO���.�lj�Ӕ������U��ƺ�;�ð���"�ٮ����� ��x>�Jrˉ��8�v���X���<����B���J��E�V��rZ�z��O&8z�7N�ɴ���z4�¥@ڇ�쁀7X<�~sWCB�J ��������� hn�r��%]��C&�8�XX͒9�\]��ۺ|����LI��'���-�B0�'�X��X��T� ��劲%EP��<-*�4�V8zk9^�������I6������v��FΒ���9��z~C�9I�bsM�44��ƙ� +)�2�Pu�[��J}�������2QoJ������k���ͻ[�k���Y�i�����5\\v��X��(�X�*�n/Y���wf���~�B#��{K�)�~V̀x�91�Mb�S6 ��LI�zv�.�C؎�*������|}��8X��.TA#�=1*�á��Y"�ii	 ��U6"����I=� .�bW����/�Y��Xbd.�w_��ɨ�c�ؘ��KI�^z�R�r�%LD&h$��).ɠ1օn�{<s��
�w]rq�L���^��]��^_D 5Ժ��FJ4t�i�yO�{� ������5#%��<O�	e{T����0#"��'��[/Ǫ�/���:�u?$<�ή�R�� UcH�L����[��U�M�`��`��D�ָ&;P?+�i7D����EdnBMl��&�Ѥ�a� :  ��[j�s{��Nd�44[�7jk�{:n8���a�Չ@-a���|�4���a`�4!0m�=3��=��!ha�c�H���`�T��ĻV:D�T@����b���9�*WЎU��X��`4�i@((��\����r�����N�Awz+��.�w�+ַ$�ջ���QJp��Qnixo\@	�Y��վ�J���Y��]�G����I #a�.�I �����FSVI�=c!p���O��|��
�
�H�(҂�����Xy8x;h/דZ�3@����LHrŌ-��`���eaj���{���v�ڥ�H�#�%�%�s��J��
Ig�A�[j5�A k�^�!�XB������N����gRT��d���K� �Sb���SJQ��om	����5(� �L�"R���1DU��2?��k�B�?��?�Ef �t%�"�42LG8�7�¿~][�G��D��_�����.i|�\I7����p'��?B�o�o0��2�����ݶ��O_���'D,\�jo�#h�f�2t���	Lh&S=��hS�WĜ�f{.S<�!^+��G_�S+[M������v}3���Ng���,��5)>���G@;˾���c�wxi�fV����\�	���̲�dXӭ�gsum)�b�S�C��;��G�H��h��+�k���aE[��`�Wu��Kb�	�[	�0��͍PGɍ�/���O'8��8�{��C�v�t�xJ?����4Tx�{b���� ��v����Th����C:�ghS�*�fAQ�Y}�VQT�2�V�Y��jE�J1�Z�2S��Y��� dh1���I�;K�� �I�.<�rJ���#�P�N�Ơ�D�9�4�ؾ�����(����5�Ó2���Q���:��
$5w�ˁ}�L[f���F��wR�qK�nݾP��K�x�KģA;�5��K��x9��0������枥�0<I2=yf�Ԝ�-��G��P'��	�詶��kp-;?@ ���Ƽ��F��Q!do1*q��� ����h,:Ehտ��l$U�m�*��#�⯤¯�Z��jWF�C��"Д��� d�`-?T�Y�w9��,�1�[���E Mh�����?ƥ{�yD��`�V��"�h�{������Q}f���t9�Ɵr/mO0d��gI%g��r�I~�2"ui�Y�&�\xV �f���`�ܾf�c��65��Ay�f�3i���Gu��<9�%�#�epm@�˕�vn:sBp�0]_����-��k�lF:=	xyÃ��^���.h�@�%�~�.��E��L�X���BN�+aw��ŵ�,üxI.s-R�n������f�����w77c'R��R��h�w��\�������a�(*o�PmY6T�-�]F�f>��Y�h4.v�ҥ��H��jf|�D5�D��M�B>�2Pš�q>d|�"JN(%q��L�OW8�	�ZL�}�*Z΅�/��{�3����l�b��L6�b�׋��Hk�_"nJ��Z�C��fN���b
��#Ůr�7���m���U ����~*�V�#|�Q�I-�G�qm���'��x����M0�zSn=8��f�l[�q(	�k�Իs�p��J�c
�B��?[� �j����cC�D�n�vLڞ�=��f�b��uQb�G�]�ɋA|CRo��^iR�����!��8�B�?;�0��p��r�\��s���z<��������^列��L �����ܽ���徃A�k�71�M��ۦ�b`��.�p�Ef��<�VV,v0q u��|@�608P'oҘM3ѝK�%]�Ҝ=a�us�N��8�I2��Z9�������|��6�;�
���!��J��.TAt�0JcoKOk�!KP�"�ni�ru,�6�@�P�1=�J)��/-W��H2�2�pI�]�����iጪy*A�	�~2-&��g� Z�*«^����q9@�Mk�x�ߗIЋ�bt��c�O���� �icPR6���M��Y*��辶�l��މmMq�ok5_��2����M���	ks"�-�=�u����Q��GmK;��.��x��<K�+��F��:����B�k��;��{�C-�ג�|-�����.�Ng8��@���3�>��ct&���� �`�gI&g�X���7��YS%<y/�欘U��{�#d��W,Ί���~|��F�^U�b��&�$�D�]��@!��| 1x�~L�#R
>��L�F?�)�s����;'��c�����ټL!��y�t �>';��^x���q�4�]ZO���\? �$�X:�����mX���i}�~4c/	�Sd|����L��_c��wu� �b�Sr�m����pH�����W36�Gy��6�1����|L���O��hՏK���|�%FP�<Z�z�tT@�%���c�5�������xc �9��R�_b�y���s���v�>�qN&�(��Q[��O�V������Q*��PH3�3���H��nK�Q���J�w�J���K]Pn�}����P�m|�R���(>Cv���|��2�D��VG�J��"�a�n���u��l����j��2�O��,����8P�O�-J�Y��E���� Dxɲ�&�e h��&����D��y~P
����4Ԯu l�K>D�Yȴ��1-�,�aP�O�}ߩ6"`�k�{�w�~h9-� b���l�)K�0�u�ȥh�ZX������ͬh��2&*�̚���wm:'�%'	h)0�K u��"%�Ja��#������~�����K���`�h�y%7wc��`�d�'���ӻ�G�M�B��q)P�L<���{�	�&Ժ��` ���utү8EG3~�B�x��]��Rb�|�('��-L�����Rc���M���6�F�'Z�5_4@N.<Sf���dS�2��j4�A���M���B�}���ټ�ŒC�Hρ:���%�`�g��t���b_`��K,
#
�b؞=���K'Mg�}i�]���vo�� ��B��G�VV��?U3� 7��ܧ;%��+I�+�ou��ɑe]y�k�����>INw����f�;I�i�y��dѻTk� r_~ϓ���F�����?�_|������      E     x����V#7���S�HmI��	K7��$@{�1z�ǯ<v��Xb��w�A#ɒ���K�9��� "Q6 �_O�_��m2�yx�����h�0uW�O���sqEb?�A#:�+�xb:1���]<� &U���-��v�Z���h�Ir�u��8����
Z̉���F��m�y���>!��=�uz����!E����Z�;�;̶�f���@I�.�y�'�����w���*~��p�N�p��}��3A�{�i^�}�%�߇���>���q��c�A�OE��d__��ۉ�Q�'N
!:��!�^�s���h��=�� D���>�=jvr����b�~�Uut�9���C�y�6ti�;!wv՜Qz�B.�}��U��� ����g8�LQ�]�������}ssE����?�7,�>� MV�>si��U9�H�a��JK��1΋���}:lwO�m��C���#��Le�QP�������W��;��g|C�z[�������8����"��gCg���.[ΜN�J#��DVh����)�xF�\��,�<�j���!���׬q���S�$ļ���6gk�oT�J��&'�m�r�-�z/�C�syE�<�W�C/G��#�>���������S�ѓ�ZZ�/�.6}��/MQ�Gk���+9?�������ثC銲0���+:����������e9J���E^�{�]�˹�h���_g%������`Υ%���ۆ��Z܇:���;�5�T'�PAhZ-򷗣s��s�v��L��p(7T�ǭ#�޷vxr0�Tgv�a���?��ǻ,�Jef�Q�wC����-K����k�C�$y]�I�qE�!�A�ґ����B>��1̱��{h�O(u�!��w��}IC�{v���"	�QQ�������B��j�S�1��{6lʕ�"���=�n�nr~v��s���NwG��"+��C�IwC�Y9��|�>�0ۗ�Ac���.�C��j?��;�K����8�8K�]��8']�y㘵�5u(���lP<���y��aE��>�����e!<uE��>��}�� ����Kuk�QTu
0�.YQ�r�9��X4(N8��i�TWt�bM��ס���.�C��j����]��XU�\�n�|���:�e��eʖ�<~Ng�ն�qev�TflY��Zl�]:@r��eqHR7m�,F��F��9�?�N��U�-w����� C�Ĩ�i��} "��Z����7T���/<?�nDCʁ<����m�mG���n:��r2�ti�@���+Y��{������)=	�;L/*W���;���w�ߋ�`H�A��>���ōt���B3~�h-�EyE�w|/��vC^�2^�r.���:�p�3)Ո������)����[���5�$&�7�j�-q���'o٤%�2�i��
�Cڸ�}&(�,�l㼕4��y�k7C��'q�B�P�]��3n�+�Deʖ�!M�":�5(�g|
�7^�N���L>⍉��^�W��[��oWV�����ݐ*O���������4�      ?      x������ � �      �   �   x���C!�s~1��
���_G\����xœ'�d���:�}�=���j�rh�z�DI$�DI$�DIb�>�� 1�Ab��ļ���$&1�E,b�Xwib�X�"�(��"��{'��"�h��&�h����%�hb���&6��M�����<��:E      �      x��0�4��0�4�䲰�4������� ,+p      �   �   x��ˍE1C�>Ō�7������-��0.�
by(�幽T����fz����{�2�0��Ň;��/v?�~��{����&{�Z8dȍ�����A�|�\y�#o��/u�C��Qk�P�0*N�"�Vl��(jM=ť�b��hWzC���.eЭLf���lf����D*,Y      A   �  x�u�=r&7Dc���n� ��}�3�����QR�RO=q8o@pF��_}��������k/�u��?���}�oz�ݓcN����	�(0�*J&	��Y@��VP%FsnI8��4�%F3GR�SVkZL�DI���hP�S�nssʉ��ry��ע�ټ�E!7J���-��9e����%�s*2�|yA�6{AA�Zb�=V��x�7���񴸿S�W1����f�x��"p���;g�9���u"pR����P��%�� ��c�E�{�(��D ��>{N��<�����NN�����6KWWn����+މ�u���o���I�5u��g]�������k{�~����F����+FfM���F��r,3��m�������I����\f1�X��2��#�&���c �ņ݅;,ns�D���}I�/wX��b��8��Mr>�a�-����4k��k쎽 ��S��n�����F؀�⑳��b����w#`��حb�'��z���F���s�\c�}��F�Ʊg$�{l:*oNz�N�M��v�͍�I���yE�,�F ٙP8e,��r"P��9�Ĉc��������M|Ɛs�@9Z7���Ĉbv#xѹ��tYW�>�]�={Y�90�A�U��[ŜW��*O�#����O)�F���x���/�/֍�����������-�9U̉������b>	 (ɖ�K��n��X���?n����������k�kx�A�3H{�ǲI�������x�nmZ_��p��y�)=D����0����:mt^�|8��8����k�ƨ�Ȧ�΋���a&�Y�
"`��0���<8�	 �A��q��5�>0�lb��y��c�O�Cp���8.��VA90�a
�MT
�N�x����|_L:l8�
{c-�����)�.0��ч)v�拀�������� �J�Q���ۧ��*ߋ�Im�C��v~�|((���7�M+&s"|i8x8śҳ�@9}�ƀRb�d��@A+�v�8f�9��ҍ�y�.��aV��D��Y�X��XM6�n>S�����h<:/7��r6\�ٌ~��I�Xoe����^�)7�����bJe/
|C\\�i�u�w�F����ݎ�ms��ټD����t6�8����I@9�(�5�k,s�b��8�D�8
}�b6'槑�Ǭi���F��箸�����]�|�h�p��Y����>�F3E/g8���������
��      C   z  x����r�8����8��a�"g�I���<����%�b�"U$������8���U}�.}i6�ot�J(s.��\�)	�����3E��1���]7�y8���~���j�$�g�3��!�~ͳ��S4Ϩhl�����@�t�T->�"�+<��s��@�����̵�2[y�j �+�T9e�9l�'�ˤ��1ui��/ǹ�4�2���<�$S�"�p�X�A���9__�����h�2�W`�X[�8���Q\�r,�XA��e�	�/H)`4��+P�,Пۇ�I��a<4�&�ۏ_��
�Dh�h�K��Z僮r���µ8�
�� ��R�R�h��N�Wt%W͡���o�y�B���Պ�ן~,i�蠔��8����[�~@[XmUE�pYg訥zA;X�c�/
tԯ�F����F��K�5��o��;�\�UhNY����;��4�iV�EQiQp�CӀ)�aJ�H�<5��LC�К2*�U�_��+��0� ZH�	��4(�R�]��?����`��hZ>�ƚ.�03�y����"�x� 7Z1�C��b�2������3�'�q!W�2-�|�sT�46,=-	+�tt���n�Y����OL��i	X��������~n��m��s��-kt�Z�ƈ��ݍ�q�Y��h	�m��gb��%i��sXZ�h Z��e`C�f��p86��j���3U�H��+:L'�\�����}�f���}a*�T^�چ��#^E���Q��3Q�J�&zU�w�}�����<oE-Bo͢�ۡ��U�OL[�D��v�>n�����x̕w;�r0��1G�r�'@�`���2����a״2|��2�q&�]�g�f�ix���\Nq<�S�z��iioH��%�' A'+�E!^�|�t3Fr0l�f8Ln�=>�o'�*(	�Q&�P	�D��-�fڧ���$E�e�*�+���v����4����Q�wC���o�[�`��
�DW,\~���x��݄���sZ����h���e�����;V��[�4�F!Jg�SO}%�F��ҕ�.t�w�Hz�U�NE�����J���
b�ԋ��w؎Y����<i6_F�����?��>�8.K+5�3�� �$t|����F�3B��#{���]�a�4,�ь@Ǥj%��V�'Y�@Iy�)���4�7���RA+Y�\��]82��)yf;�5����&9�
�;O�E�������[�����bK��J�#��1P��.,��-�bN�h���d�K�7#6�(a�_+Mv��rJ�v��U4����JK}|�:��4����8���iX��M�x��k�X���ў�u�����
P�pu��0b.o],����J���rQ�-6��㧉a>w�֤6��,Q˸{w��#�f�M�Ѳ��Rd�Zd�s�?�w�{%sF�\��5Z\O��c�Z�-o^�h6�(�lX�X���K�]:����t`�S<��=#�]���8M�8�-��o��{�lN��y���Gr:/�ܴ@�e���-�FStp�`Ȇ��������aZ`��<�尃�]�(r�:aCh�i������' -�F�ʻjq��'�~�؆?SǼ��(,�ϳˈ�A��v�kڑ���t.Q�|��O��1=���~�r�������si�Q��|�����Ċ0�夨�i�ܲ(\�;�޻f�X0���;<!���}�	G�n���=�jh) �(L��SC�_�M��B�9���PoVW�yZ*�]��7�S����a4��G�.�{��y:mZ�+,���U�N9s��5�L�p�.b��v�Q�5]4_���pʗŖ��ZV(W)d��|y�&�-r�
�YI���#����ԌHh��������� �	i�      ]      x������ � �      �      x������ � �      [      x������ � �      S      x������ � �      	   �  x���O�9��ɧ�/0��K�����v�r<]�I0������~�U������"l������~1�[�a�����̗��3������_���?���?���~�������<\���4����G��x%�����]<��)��e����`<JI���.^D��)�a��O]���4�xLߺhF��k������+8?Ζ��.�x�;�����l68`�J�4t���P�������>�G�PP�m�����H>�<�[C�G
$S��ȡ�����:��1�z�Y,���pC�kk$���f4�
�X$1��3����U�$%�J��}��IN1���5�B!%gM}�8����j�pC��> VI6T�:�h�˂�*����ǌ�^v�$g�pCS_��I1Aٓ�L���J�/Zae4��X%��NJ��L}auX#U��4}�sV	��m��oM���R����P%٘dƽ�����*�iFy�3M}w�P%��\oJCS?�z��lMI�R����3�$����p#G�4P%�fW�/���7'UR'��dt���:��{e�m���8@�d�\��Kߞ�Iv�Ҹ�7t�&`��AR�z�>`����5�c�	X'>'7�5{%��`�S���؟��I����2�����o%Ǿ��P|P��ѥ�I�:YG?eK�Z�N�w�|cF�>#�I�5}��:^��X'�ĨCFǾ�E��d]V2:��:b��#�W~CF��b��q�(�����"�I��~���&b�d��dFǾ�F���mY)^�����R2�����Ä�R�/ʦ0z����R����S_VJI�*+7�ԗ���R��}�=��5a�ԙW+����R�y�^����V
����N�	%a�P$mn`�����B�(�䆞�sr�J)�c�5����P)��_�MC��)4C�ԓ�S���Z�P)��C���^ą&TJ1Y�rC/}q�P)�Բ���Kߤ2TJ�Vk���y��RJ]���S?g��bC�&w�ص�+�6��Nl�Z�0:�g��ubI�:��`�8k�shC��4��rR��ѓ�u₋�'�Щ?���QҚ�IX	X'u4(��Щ�I�:qTO�J���cY�:�&eS����`�����)�N�> V��^9F5t��W�J�!+7����BX)>�H��I8FX)uD�v�ѩ?+V����):�#;a����N��NX)��Ρ�Ы����W~CF�}=$���r���G_�	+%$��`�*��$����6���5�`���p�Ы0�VJ4�3��Y8eK%:����o""�J���&��,�2��CRц���j�IsR:�&"b���)�︡󳈈�KRN���Mm�`R����at���X3�e墠��p��9_RpNQ5��ҜǚI1+W}���X3)m*a�U�5v�K��N���~�f���̆.¤�.}Ɇ���E~k���|T4��r�f�'��k�"�k&ǘ2��ڃ���9e�]��"X3�ήJ�3��DD��b�ֺ��A�Ê�g2����""VL�]��AFW� ��K��������b���H����U�6�K�b��2�~�b�:m�ftĦ��ĝU�5���	ط/��;2����b(��h��,�-v����a4��[�����m�f�j��*�'��,*6����c54�|��=[�o��,*���x�ܛ74��;�dB.�|lh�-�z�t��]C�x`{�dj/gxC��p��O��R)�E5�.>Y����Y���T{�r�k�|�j�Ӣr�oh�CDĚ������1�b'�l���o��Y����O�V,�3nh>��X3��WLφfq��v>�:&(�h�(��
My��YL ��'�2�74�I
;���y����,�Śq���Lf����'�I� ����X1�4�����<��'obw�n✀M�Z 3)���Mt���VS��� ��ɇ��Q�d�`��
X��ft�#6��v�n��&T��}�Œ��7ts���Sp��l�&�����Y��㈌n�l�C954���>�G�����BQ��}����W��l�.�pl�S�I�)l�.ff��S�� �3n�.���)�&wQo��O���(��]([�T;�֫��9{��Ӻ����䧵^)���._����iS���y��O��rG��]t��S�F9�7t3����W�N��.�5���L\��e�Md86�)E��2Fo"{��O)y��3z�����W������~��S1�z�����74�l�~?e甋ǆ�Al�S�Ay&���� v�)�l2���[��c�����E�Ǟ?��﨡�����\����C|k��S1Qy����EĶ?�R���-�[c͔:i+;�h��TBV^Mlh�;��zw�g��"2[�Tr�J�3z�;�5S�(��7�����!�����Q{��O�vc�h�������e-�y��S��Ɍ�r�fj�Wnh9��X3�ch�-F�$"b��U�zhh�="��~1ƌ�v�C�����u�û��hf]��2?�"�Ŭ�|�zG�2"P̺,��̎�"���.Ke�v�<��@1�b�(w����@1�2r���-��c���e�Hg�-�ek��uY=�:ᎎ�""V�u4Gw��7̑��.v�����^���ˢ�=�������6�O��#�]������C����ed�aG������3�F����.six︣����_�y�������_�E;��;z������.Ka���q�b��n�qCQː��.#7<���!��r��2o��=�""֌��gG��v��_�y;���ѻ�p���˂�z�w1O �]�Ŏ�' �]����cG'1�!�]V���$�b�@�����%��lD�]�>k��wѵ���.[�qC�' �]�����ǻ����k�ч����˒>a��Qː��.�㗱w�!4���uYI�'Gw�!N2���ˢцэ��"�a�D��d`GϢ�#�]�G����g����ŉ���%Ƭ�F?Ĕ'}�?�|�����            x�u\�r7�>���o#G؎�?07[�,[��5iO�c/ Yn���EWwIC��Y6�o��/�"���7���_����,�^�/{�e���_u����(��&+�>vá����m>��S>t�S�5?����	I����]>�l�?��;��6V4>�ME�.��]aO�3�! �#��>�n;����mc$�S#y��������)w�sM(��d���{�*X��i�s�;O@����|�}��a;�r�ІP�M���y��vw@�]$(Q����ޤ�r�K�ȕ���&w�Km@���F�������ܩ��@B�1k�k����_����q�M��Պ�\Cc�1�A�- ��4�l�` �L��x �E`Rb�c�X���0_��wQt����X�`�*]��M���|��"0 "wn�y����,���z��*�a��7����)"��$�gS�t��|3���}�N��̰���c�Q<����U� ��}�!�D�=.��ؘ�
3~:��&�샲�}Hj���a[��^��UŘ�b&4<	��`,C�*�K�]�Ui\�� c@�'�ބ�2���c�<;�-3��i�y��8�Ӱ�~���s%��W��co�m��/6��y��/,�b-/2,���""uJ� D���f:���W��q�N��tj|���N��8�
z:~���#�SrD�!�0+gy?��@�3=Vfؑ=%�֋���q��EP�bB㑪����x��|�������a�����h,���HM�����}9��[��c��}g���44)T�Yv�,�X,�g�><�b_ob��A.6/�q��"X�����G�W�������be�kG��0���|5m~曡����
��ְ����"���9��Ep�MdC���8�<M�V״�>h�R;�ژ*>�������8��6����!�A4Ӷ��`I,$�)V�9B* ���Q�O��r��;xx��`��d���j<��6�tP:Kdܰ��J���q7t�),o$	�����+��uX$�Ht��F�
2#�A4�`���j�Ym��bPop����g������X��	��n�_I2�J��m.JLWp�ӌ ��Yw�"�^�����<�s=�.0��z�<�v�O�3����x�oN���t��w�w�М���_��=�?<�#"����vѹj�&���OP����{�)D|���1n����	BtGT ��ޱ_���6O8:�	�)Qĥ�8�w}�P�v��9"�����֝,s��3�"`�a`�=y"XGS���N�g����x+HW����p}+環L���KH�e};�y~����s䙢6�﷿�W�r;<�'�f�Eδ"�^c���t��Ɵ�|���"�QYrPF�������i��o��s�a!B�бj���ݩõx"��ԘM������y����c(㙇IVՃz�ǒ!���-�a��,�,	D�J�#�@�9L�"0�0AH!�����4I���-�HS�S�VQ>�x�.�X�Rۅ�ec����8�a;Aa���X]��y�������>��y��#�%��""�Z�|��ix���C[�c�������w���"	�%���\1%ڀ�
mY��I$�Z���9��.x,��-)T��� ���������0��-�0}h���	����?G��E�\�O(�����a~������t0��V�B���C{,#���Jk��].�~,��HՈ*j�jv��0�[��XF�8�/_af��]4X�D�!m���܊@�#�p���@\�h~7^!�8�C����@=pl,6��y ��c�<"⺨�R5.9�6����[��D	s$bm�'W�rw=b��a7-wx��E�L�ن�����]��5�dV��=`��}��f%96�"��m
t�8�wIcf����U}m2X�{(D�	��o��1/D���=�.�[��DrXDYMvd����#����f̀h����y5���E�
����R�|j��&"��*�I�j!�,��b���c%Pյ
�j:� %�n�AB@�E�n�ݼ�?:�Kg�H���D��&U��W�a��{�(�6��5i������)�
� )Ozq��%T �G�ӓj
X��Z�L��*DR e�K��ڳ���H��_3�ρ��c]���Zt���Aŧ��I}=������$E��D�(��͙��p��6Z�MIõ��q��I��h�������]�?�Tz��	��G�Do����>K��J�H�y @.����|'�#�P�	�!,C�>��a���J��KBAp�`��0�7e?V��$���'��1����:� �P���NH��Tc����^N��H��"֯�y�B:� D��e
L����2�)����n�����Yڥ�_��Gn5@��'?�o�I��B��
>�rů��ҽ��t�kA�W$������X�1�"=�(�<"vȔ�6����6ꕝ��i�F�Y�� V��o��Xo�E:����'��*&yb+D���@��
��8�n'�8!�hbe�� �We
GՊtT#����� $j��P��i�s 2�������p8��<��P�eS��c��V���R&����H�4&�:�`������i��^�`V$ۻ�Cg�:���(�5�R� &)���
3�H�i����i�����vBx��ߌ	N^�&jL>�>LLA�4�I�6��/*#�2D ��5ŵ�t�L�,��B�u�Sߛ�`�KTe�PHʚd� ���p����p�"H���1�(�B+����A��}�
ѯ('y�(D`B��B����|�ͻ�c�!��"]��B$,}��R��c:e{!�#��d����eOU;�)�IM�}���T����`G��i��fhUә�|?�N�tF���$,W�۳��5���LX[Ɠ��T��JՉ���sM6�^7\�pSa�U�a'�"�H$6�Eס>򴻙��G�`���8e�\�8C�[ �l�B�8۩��(�F���]��H�,�v�]%!��5� �ه�;���)�,�HԜ�ҷ�k��娜"@6Ŷ��25�?�>J��h��B��	NM|��t� a�L���B���y��_��B�]@йV��B�@�d$vY�L�|q�o���4.]�^*��ud3F��*��W��O+�Q�� �p2FU�~;|�<ϻ�Ɂ��'��8E�~rM�n(�_�	.GlX,��Iꜷ��{!�=;x�t�"m�BE:�����j�J�F��k!À����GQl[��j�	���GvYP���i�0� ,+D�T eL�S��W�(g2^v�O���"M�d�T4a�:����`"��ZҚ+�4�ǽ$lP&EڬȤ�2K֛:fv�߭o4���&�ؓ�X�fuI�Y�!U�Ӛ,�,{,*�v������3��K��zE�E`�A�s\����Q����&��s����Zw��"��O �fmO�W��8�U+�j�-FR�N��j��1��
��~�:�~;�ƻ;<$=8!i��k�q>���8�غ"H����U����A�߉�{�:L^�5=�N/[�:8MEZ��xb��|�:��0�&rB��3��������,�?{!S�Om��]���.�QJȤi��㉅�pՖ�4�k.�XF�&+���_�7�i9e�x��ތ�����UT�ٚjㄞ9��R�E�q�o�C����ݰ�F'D�iBT��j��������p8�K��r.Fvs�7ϗí���_3����e��N�����Tg���G�lB�2�n�	��r]�_^!Z�-����	��Ș�t��)��"�܄��4!�ڒ���#�����$�މ��^�@GR�g������;h���^v5�������+&{�w��\ߐ��H�7E�i�`4j��"��� �����8#B�����崯Gy���AND�Vp�h�O�V!]n���s.yL�"=�]`�����&%c� T��p��JFX>T!溡 Dp�'�S �  _g�/����a�+B��X�׬@�zo�؉(�͛a:���kUD=����	�`����x��i�9y����"҉�՚�EUb�� -�v9=*�.� �����X��j8u���#��ݚ�$���4� �wu	J�&��$.K�Nݓ̏OO��R!: ��$x�������L���?�׌^�W}߯5�2׵����2����R�Y�²�jR��a�G3W�+,�͇��t�7Z�"��=5SX>>���"�Z�ki�|P-UXq��;yR���"�YR뢅�<�<n���;��������+��>���fY>B�o#���*z���=tVi!�S�I&��k���}�]�����O��C#��E��4x��j`x����X!��L��ZX�N�\|Ok�@N���f�Q8�����'��f�r���|�4�w±���t�Gę_����e���C�%Bm�����o���/�]���5��R+h����6��yu�%P�b��a�Z�'ec '!\��_X�j\��ސ���l0��cl:na%U��帟�/� ���k�PL�t���-�bK.��yI�h����A
������n�r��:e��,�6��a�:�~9���
�^BXN�7Α ƛ\5�r���!�����²��q�|P�r��fGY>ݞ+�Xw/���p� D`bdL^�s8�'��� 6����i���=���>��(o�=z+	��f�:􊈘Qk\r��~B6L/DptlN�˨Z��y[rU-����|��L͍5՜��N^���Hϳ�9�O��[1����W3Ql��(,�t �=d���L��𰢾F�y3�e�^����b��X��j��O� �	������'�2�y��r��c�O�#3�;3�dl�ܺU}��y^JEO� D�t�Ň�25������)$�j����4���+�K>,�$2���m��U8k��`�h�ͳ�Jq�_����O + ���}�G�eN���$��^�|<���Da�/q�2"�=<�$���.{�B9ҨC,�o!����Wk�,2q�a)a���n7V��r9-n��ͦ�|M��:Ka��������gyn�,xN��i�̴�ej��a/��Q͎�|Զ��
�ֱ�_� Z\O�#-v�y8$	��:����F�&?��>���s��         Z  x��U]o�0}�_��D�վE�ZMڴ��^�I�+A���?�s��M�ֽlO9����5�7�u��_'�h{%�qt�,n��r��R���Q6�ȫ�NU�4�zi�+���Y�"Z�aa����T�D�$�.�};�k�������c;�7���˅�6G�s�ϳ/T��Z5��+��5�����H�����b�� �Z���0�J�j%F.U�2Ӆ�a(y���	]��ف��F0ru�V��!9B>�dd�;�=;?�i�"�3�.`������@������Q�*sc�K}P�u�
ܾ�_��F�]�weL	��K̹*�>�������N8ǣ�ߣ^H��H��H�$Ѝ�/�=��G��iI�Wt�Ɯ]���Aq)��,vn˜�2�~s��}��-ᾷ�Ze��L|ξB~O�O��S�e�@��/�F�`����� 
/���j=1���4ͨgx s��8����h��$ٜ�Kb<���ϼ��o��2�^7x^q��d�˭��ć�WT��y%j�7w�>��٥�������ļ0���6���%nW��D�v����G�y�
}��/���K���8>�`~]�a�:�aD      v      x�3�4�2bc 6bS ����� '��      p      x��}ݒ�F��5�)r�������%�-��*��lL�$I� FE�1�s��/�O��;� Y*�i��h�,� d���<)�I7y�ʃx���"�j��=q-�Nd����b]���ž�b[l����(YgR�UZ���E�ʃԝl��U+�>��ވMq#E���j�tUJ�������VTߊ��S~�L�z�&-j�me�
�Mz�Vָ[ld'�f&^m��z]����Iو��i-R-��ZY�~1ސѥ�U�m���[��&��f 8 ��ʥ�<��'�4��4�A4���dݷu����nU%�M�沞x���7����d^��6���l�b��a�x��uS���?흳��f��L�GKzJ�3~��$�B�����(E/�E.�c�wwO<n�=ADw��/�u0��/&[U�����g����PJ��v&�E�9��V�u��de�~�u�1_�����_�9j-4�G'V�%+�&�w� A��XMcur�5pÙ��3?9��b�Cw��d��L�.u^����x��	:�� �GY ?'����n}y�-�U�WS�jW��)�:' ��^���i�� � J+�/�J�i���xK	�M	�7iG�heV�$���9'���N���S} v�EG܉��uE���uG�[��N��Mm��U=�c�4Ě�%m+M��DDE���͙1-�
"�� $�W�eY:��6%�3X4*���H�-!Za��Xq.�&���Ͻ�~�(��I���˔ �x��F�ıH@L!SG���?b����kU8:��6�׷`��LK�'��"-�$ˊl;H"�2b ݷ�Dj�J���뇾h����|ן�I0܏�ܝ��.A�t� ���/�#�'��D> (x��Kz�J7����1�뭒?q�D֏R��HB�7�ە�B��W�J_C�	�}Z��*�	I���}��炜o �|���DY��j�;R����Ik��I��H�u���%�d/�Y3��.�Ď@K��5���h���F�l��v��o�$�˘��M}������>} ��N���RHg�����\����?���v�l��C�]�ϣ/Z�C�I�$�x^��OZ)i������w�Bl�ᅬ�зo#FX1vcn�&Hh�t��j�̍|RΠ�˒�H��ˮM�sDviVzhA�/��TlJ�f���m�_\�Q�9�{r���ow=/Hi��B;~.����2�]`���$� M^c����8o�O�@<c�g��~E�@fYC��X����YJ�%e	LP6�o I�`!Yt�����S�x��oO�����	�9+���8�N�o��SmAܸR4�2m7��HI��?N�6���]���>kDS?�*�ϳmߑ��u�8$�#o�`�[���a8#a�H>]���Q���:�-�O�}U8�T#��l�Q��߇O��Rͦn)7��ӖL.�TI����&f^���@W���x�5�:-jE�PU�N�*)5߄���m��V8	�T��D���� GF�:�gdL!r�*v,� l��~c�,3d�2���X+z�P��}�V��j�X<��!{[8�J��0��
�o�$pna��Ѩ����>�N'�Ɖ�#��|XĘ ����r���pj�K� �?�r�]��6��^�c�s<~x�G� �]����F袻�?Zy��O�t�;�G`�.W��1����L����^L����.�]��!\��v��ߨ#p7�� ���t�.���\��;ɽv��!Al�^ H�l����7j/�� ��Ԑ���!�%�9(�/U+!�2��j�7�㐞"�nH^���KU"O���HX�i_g�"���H�1&�r�ğ^��7ДH@VM߱��O����V������ܨ�uʙ�������ՕxĲ�� o����_�8��H��z��'�	 S"7ڒ����(�so�˖����b��bM��I��?��J�XF������A\�`����ŋ#�"-�$_�>��գ�����%r�mJʘ1�!�Z�ښ���"�獵�-�!�dY͐eE����KMv���_N�}�8��W�(�Q@I��LԺs�b@
>�/�dI �}V�^��'���wj�I1��D����}��ُ��C�c�9�`��0g��8)�W����O{f
W�1YP5��E���H��^�e��R����ĳ��J0��RȚ�nm�5�@�
'��ԥ��0��-��L`�
r�/ذ=��k���~pa��0�����2S��vJ��NV��"��)��uV�3�?���g�j�)�ɓ�ɽ��2�Dd+�w�:�e����j 8�t����q��G"y���ȓ;8���d�:�2�o�Ah��t��A~Ǟ��ɿ �=�c-�OFr|Br��IQp�N*Zz���ۦ+22^(�O����\m�N��~�-#��M=�IdQ��<��H:t[k�7S}zh�J�0r�V\�Ԣ4��i΅�����y�6�?JK��M���1ʠVZ��"�PY�������
������e�sq���2��dᄣ��zs���u
R�Ԥ�nd�m'�P��15�����%�;����N�;Ϡ%_��Ȼ�(z��(1�1&��c��К���1����Bj-��eI�M�j����Z���5f��*���ї�Z:&�T�����+����1;���GA��z{�jp�"S�Eq$j
6ۙW���֊<�)a�ֹڛ���m�B�s-p�VD�U��3��2�!�+�Lc��_�����7��&����l�����QDG �aBda@��u��������_~s$�h���<'O�hb��&-r
}7��\�K �=x����_����H��	?d�j�Ц�9]�L����Aj�u_}��B��9�i#�uC�¨ɥlJc�0W����7-�-Q\:j��4�4vSh���W��2.]����n�B�-L.D�1��(�򪨋��t�oh $8�B�g�����i#G�w���^�$FM�<�|�O���H�&�<-�;W�;�2`�8�G�8�D�C�������]���OB��A��g����ԉ$��"��Y"����O����/S���R��/��T�\zև= �Wb-���u(�P����.�O��|U�5r~��5_�@Ҋ�_��̅�b�"<n%� ��T��!���S����u�Hl�k� �fsƿs&�s�{�?�����[��=<~GVh�uΒaN�V��_�s�}�¿�tO�<��h9'ӡrVx�DI�2pG(o~S<�Mg�$#;�B�cQ��՟���C��?Cu$�Q��XTs��w\��""�`\'\�KoIz��,�������'Q,�傦���G��AP�H�A�����(<�Npf��2YW�c:ź�b!._��{�P�S��k�n���iT����?"R}�"�V��Ĩ�M̐�&�\>���wW�GX/��:��K��)�+A;��1_��Ĭ�q�d��0�W����>��sx��jpʭ�Gߞ���;z8x�'x'����E8��?#p����Ä�M�x_Z����j�C�ռ�)�,�dBoO���k��0�$'�Dp��0�$��������	$�e-��@�Z �$�	$^p�<ߺx�e���k�T�����0�!<Q�2��dt�j�7�ACP�;p���*hX�.+{͐��)N��ʂ���;�D�L|�o�&8%��K8t���A�&gB�*}WT�K𯏷qI�@�vr6������E����� �H��M�o{��U��xF��}X�Ʉ��2�,�����Dt�&�^"���ר�dG����f1i���̦]��e�z��}͟X���)����i��q�	_\��	#є����?L�+�v��р�@�RΌN%DԺ�O�jS9�E�sºdH4cݶ�3�6Y`?rŋ�~D��-���&��oi��"�틜~����/�4�H��\�A��h�F^{?8D�7&��s��i����b[{�����ɬ��T���+%2-ɦ�Q�    �h_�;,4L؏C��=:���_I��:���aq<��',ơ�[�_�.�d�8rf���L������~�
̓4?4P�r㊦-�LW=h?k���N���٤�+����o\o�x����y�Á-��?H�hD������H�.�!���F�7��"���X�\�sF��c�(�kK�
Y�F~�IoQ�=��c1@��X�y =MY4$� 5tk���n��(��8��i�f{�M�I����x��1K���Q�?oC�ou�1��h.�b��]��8~4�0��1}!�t���9��[��f/�ɑ>. �9�s�GZ�5�d���70�H�p�Y0'SFhU���?ȋMA��ϯ���F��8��(��<�wc���ׯ_��	��XX&��
�Z8đ�㹡���G-+GXL���6���;�,�OTɥЖ,�4���^[�kّ�4z�t�=��8*�,���kIi��$���U,ZH����fё�'O�%	9C�K*����::G鰩�n
i�� |��@ɁZ�Iz�&v̎�@ڄ��'�����!�X��������V��8Y��?+��	�9��7d���7�ڢQ���e�p���ȧM�������"�}�me٘�Bl�Kw�P㮚.6�������dۂPa��h5T�Q�!�eZ�������6��(f��qs���$p�űB�f����-_�<�%�ߛ��ʎ��'�QI`�=�X�M&��E�<��ZvK��:���H�$�Km�'=2n ��)�Ti.<?�F�5��01jtZc�f�ڗ� �,/�Xz��F4�!���f�$>�D��t��_{A�>~r8��j�6ݩ�C�Yk�_�A0"�˖4&����3'e�؊Wן8��&�^�� s�$�����8�-+�}����6x"�����3��/t�J�uɒ/R\<������tZ�����WdC�p>���(�I��W�LF�(����A���Nj<�/@O��1S�x"~�I��k�1H�0���v��]�~����9��������/��6Ia�'��
n1��l̺1�b	�U}g4�%��w��h�q����
�U[�;�ʫ8p�NK�5�tfi�����M���+iK2<	p�.<�F:��BS^|d�V�E�%�xIM�s#r�J��Yh6�3T[��TW
��"<�����lr�+���� ���&�J��ugޕ���C������&�0G��9����&�bvD��>	�1�r�%����6Y��y�8uE�%�N����:�8��02�<[6����Щ�&�:,q��ڹ�/������1!��\v�h.r�sN^�^{��a����3y����^��3��.��$��@tO��;e(�Z�<ɡ}"��1��|� �NuG.F��q"^7�L�Eҟ�
����p�Ⱥ�qe���O�G�/h��NS~�FXw�o�$�jK����`S���5ݜd�{�����k�$��4���0�Ś@'"���+�:��0߃�G�`��y���QZ���Y��
!�b]�w�Q1�� �F�&^p	.��Qͧ�65�am�-����[��������ο������R.�D���b�����~��d#��R	�(��J�Ap�5�roL7<%�o��4��$4H��Z
[�Ą���LL0vwn!u�W��I��c1+�C]�laK�rO�F�&c:��*�Ł��'�Z����u-	���s����qŊ��"c���fa:�B��$���qS�F�ڸ�
z���E�U=
�Lb�-w���������kYILla�d�ޖ.q�(މ�hr��@�L%���4 w_�FQ��2��f���}yq�v@�7 ٥��w2z�i:�
2#�t��G�;&�s�������� �7� ��@P� (�� (�5݃��������;g�{	�v��d>�η��@`��az+�PI8����8'X?m�B��)�pY��:)�ͩ�����9���C�[�H���Df���+������Vҏ^����,����/��z���]�#4O̝��8$�&Q0�|�G���!�}�)QrR>��H��7���!��D�5�=�g�=���p"��Ź��̹箰{�	~�	?;��@�����kF��3��5���3�iOB� j��!���O��-ڰ@�{/i�h�dQ���S$�4Va!����v	ؖ����N��ǈ�(��r6��!��T،���y>���UJ˶ʢw"?
��((l�;�]W�����Ǿ%����%Ҽ������Av�CnP�`���9�0�DfW|���TKlIf�,^�jŹ�y�i��M$�U��ܗ��'�z'�C�t=�u���F��'�M���O m�$9����N.���PN�D��@ż9��EhW����c_�x��?=2yլ-*+�O9Ĉ>|����3�Q��ᨦ9�5��R��3{�zq� 
iFD�u_��3��so.E23ֈ�ۅ�+�"H,�RV~�CW'���[ ����Yz!��I�"uN���TnZ� �.�c;�z���x�{�.�NkN@X���E!fӏ�s<qQ��G*�'Xz�bq�}��� IL��A�ׄ�"�f���}���yL��%���=��F(�`4��!�Ƭȶ	�]Mf�8���n�_z�!]�Bw�ب��Q��0p���E�(�;�i���b�V�D�����(�X�5}�]�_�A;a y,���!��!h|���T��'���qǌ��� ���� ��d����ُ	^\��ձ�!�]�F��t�N��v<�(��ϔh+�4�2ɜPZ[
ʔ
3cz�]aW}Uܤ�x�gk�,��^�:#�j��AME�!�H����9W$�I*��#j�R%��\h��Q2�O樼#�K��!����h1�Zk�n�׾%�e`m�'d(�GD�ۺ���b�����̼�ڲ,y0�U��y�s	�|���wtokrQ��YIP��lgȺ� (y�-Kf�&b�#cqǒ��<�Y�:3�7\F�G2LL<q���HEn���4�l,&88�!�=�z1!9��#���,3����1���}��3���I�0I0��ɋ5A&9o�6�,V2����SA�x_�<凞+�-L���%�1�]���o�30B��ah?d���R�d����sԨ��d���π�.�$�H6Xz����h�s�S��@���֐�L����`;~�f�"�y�U6$��s��3CKX�E�C՛��:�R�NѰ{^*j�w-�K��� ߓ*^n�2%y�h�_�P(˙�����I�5��v�-��e��C�Y�s�-�-Ie&s��I}n!�0��P��S7i��8�CoD���y��]����uZ�W$n}��]F�?���
Ih#6V|��2�f{�7��W�H����ڡ4���+,f5�����^}��:	�'U%���R�i]07�������׳����D]���O����n<���Z��$yd[2��8^c���6c�8��N����w�r�8\�w?w�ٮ��xؓ�.{0ɶ)�i�uA.�V�F�;p.�#dj��P��}.�-ϸ<�%>E�.*�嶯�|�GL�]����kU�l��k�����M�p���e���M_�����^MF�/��C�  �cIs��k�����Җ�����F ���G�B�X��A��a�V�IVq��tX����#���T�Hư��W�p�)64�Ʉ���
�v��Hi��;l�g;P����F���0=�23Q��V$�ap���[N���i!�D�t����9��V�8��ᾢ� j�}��|�7?̞���
����v����ݴ�̶EfL?��..�^6�9@�:=�aR�]PɏGa��i.�PP�\��\9+h�M��x��q#�b��7����cĹPEC�Ɖ���{Dԑ׼�8PH�p䞅�A>�����޷WmZp|qc��c�=�,�%3��7������N
Ifkg�f�3�vg�9��90)� 3kloO��ͮ�$�m�Mj�1*k��%��^9�3�
��5I*�&X�MB��e� �  GkW���^uc7��fP�75;n�Rh����N	* �s6���������st�c��I����8��L�#Tq��9�>G{��%+����W�>����f��t9#�{��ѸC�f"������ �e�P�n��xG\B��y��h����~p�ɯ6�Í0dO�o���������~6�M\����
?Z�$�*�m*K�dE9����+@��q@�x�EH-�����G��%�?/�{)X����X�O�8���F�܉Zw6��娆Ħ�����{~Ǒ�	���Pm��m�.�!~Mp`��lSܷ\�X�u9@ޮEb��C�D�5�-C���&o^=�Bo��#��d�Ǣ�]�;UUgEZƉ]7լ����Z�bX@�+FdNV�x�x9������ڙ똊���ɾf{�K�Wr�Z+��1o�n�,�U&�V*�E�ol˯[o���r�2�����zX��M�n�#�5�Rqhe�6�>1S�x��W����������4th���D����R��_������|�P�w��vEr�oo���_��Xd20<��\y!��\I]�a+i�XIm3T/�p��}���!�����S��!�=��Aeak�7��l���.�m"���z�&����Kr�Q�����k�啗�<����_}�
¹�T��Rle�D���cJg�����WN����V�<���}z�v�}0los�$95�T��Rv6ғ��UZ;�^��;�}���R���JY�7�!ik�/��t�j��ʊ6#�i��&��(M6�:e׭1�+�D��8*�UK2��,�$�"��S���� l᭩۷�E
p7��gŐ��^��P�o��%c��I��v�u���:X�=f9`��|X[kp���b_���t-�%��{FTX2F����뢻�O�ԓ������K��am
�L<o7�! [)���e�SN�EjCSc��RB�Z� a��
]�+Y�6"��xNF3px�t2WÙ,gI<	��_N9O6*I���o%�dߗh����g��oQ�i9
�B�*���8�����̖��Cc`�?�@C���|P�?8,�E�%� ^������y�C���eW�1�H�V����{�rvʳ�	��+��X�ʦ%/`Y��Gs�x9�O���.mr�e��2�G�K���0�(y�Ng���<����3�Gȱ���h�=����1 A�f	"'��ǃ����[H� ��ؔ�D���}�1�n㜔��vR�6Ҵ�7���P��K�4�Do�7M8��p��b����b���l�A9n2��&�y�����b1�,Z"P���X���=P\��[�. ��{�+�MT)�jOf��]++؆�{8qF����x�+ƈyM�r;�\v)G�x��.�t�o��Q�T���R9�����+�]SF��ZX���r�sc��x9"���c�2�eK�c9ƐA�*E��C	�s��7x�ۗl�ە���lp�&m�u� ބ�'�R2%Z�7I0"�b��D	�8	:0��#0��;�F~���]���'��ޜE���v�����8>$%X���-	�[���눽���U2�uDQv�4I�cE 1hG����m�mM���l��ƀ8��Y�a��Y��~�[��6�\���kfj7�l�,3Y�6�s]�-�pͩل��ɣ0Z����7E��z��nZ֛�D��Z!�_8��z�1��R���{IT�^��������s�]4         =   x�3202�50�5�P04�22�2�Գ4�4�4�%��钚�X�S�����Z�i����� H�l      i     x�u�9n�@E��)r�M$��iҺ�q�� ����d�<>|�ȻH;����,0�� �#"�-�$8�$m�U�r����ԉ��ts��2�̬�rl��/l����VC�� ����������N��qٮ�w'�p4fW�#1: �]c��d�\z�N=A5�@+M�\�0O޲H��Q�����н��d�]�zxk?���K[�CIk�7m�[c��E�G�������B�d�M�F��&Y 	�l���g��-eIPZ.)+!V�8y�����_o�%��%��a> ����      K      x������ � �      I   �   x�Ր=k�0@g�W�Q��8��P�5���=�F�%��!\p�u(ܤwzO	��ⲹ�U��<[���U]���᱈	��`x<�q��/NLY�v�)�G��}�d�'�G��؆A�#k_Ñ�|���`�u���(_�;���k �	Ұ��p��l�ܨ������b	r�[	����I|�]��9����j�Z�f���=q���rJ��=Uyؖe��z�W      �      x�3�4�2�=... ��      G   e   x�3202�50�5�P04�22"=CC3N#�Rf�Ʀ��y��%�y)�E)
���y霜���\X5��a7�����d�kEAQjq1�q@\1z\\\ z�$�      9   �  x�u�K�1D�ӧ�<!_���?������ʝ�_�P��y��^�7�/���o޶6}q����Ek}�/��վ&$�=AX�	�g"��U;��g"��ao��f����A�L��i���C0<!�^���s��'����^��o@� ��6��	d�A҇K�1ԏz��-�J�O(�����>T��a�<0<�2����x�hPכ!��6�t�Xܘꣁ��p��-�h`$��\Lw��e�Z��&��|�h`���
��|�#x	�[�D���S�M�3Y[�J�h��@U��>�40�%ާ���c��Q�pb;󘃥4�9�Ǻ��40R�Ӟ�Fq�a����e0��w�h�Y�I���>�t/^�VbO&U���T��Edi@��썮�+c?�l�5L�YOH�{2)vÈd�o.�c��b7ƽ�wi`�M쁻���CJ�Mm�G�s���R�������"�+VĿg�����^{h�\ג��(�����o��,��Cv_�c	\|گG��)�Ϲ��2O���¥��dk�H��e��ɧh<h(Aɒy�!���#��%��T&��f<�&j�>
F�ɧ��Tz��"è�᥉�붿lӴ,�fDibvZ�;f�����D#�}=M$ݱ�>�9�b8W���R�c��Z�n�a��^vR_�41��v��%�ۊ��ko�z�������-Z>�m���֦��j}�EKck�q�"��a�	�M�[	aW�]Z/F�U���?���������z)�����Nϒ�jj��嶡{��-�l�Mmkk�ZB�?��mj�M1?Y���KO%�(e�M#�Zn�9i���F�&�g{'l�GSW۾<K��8�<J��N�Xbٓ�(�6y��]� ̈v����{� ܒt����዆�AN�N��h`D�]�p���:�z��3x��]6b�G�2��6���s�(s>y�^�6������R�|�D{���\ʹ���j��胒�K7J����n����'�n�>Y6cƿ�(�HmUK�?!����da}Hq_܂�D"��m`|�	T�Bk��B��/�Kb�\���l��Da�ɣ"h]�h`T���KHi` ���?�8ۓo(�1�T��������T�K��p�*���("1�T1���`-��vq�I�����z���)�      7   P   x�3202�50�5�P04�22�22�316��0�4�-咚�X�S�\��������X���������*K����b���� ��S      �      x�3�4����� ]      ;   �  x�u���7�ݯ�h�����vb�J$g�$%d^��9M���s E[@����Mr�x�/���;�_����֞\��_���?~����Jy������_~�~���?o?��������3��ҹ{#�;������7{{h�z���=�=����be6{%����ͅ�B`o�ޤ}�H.��;qw�2���A�Cڽ���� �Ob��>R<�E���R*�^�}r�F觩�V��F�/�~��Z�v�C�/�~���^cXX����ς5Yl�,���A�gɚl6�*�O���Ϣ5Ym��X��_�,\��U�����5�nZ�|`n�v���v�Ko|2�o*V��zӣ�X�����uYoz�],�F觯ZYo��\��v]���M̞����u�n�.Wg#��v]�����g�A�g��l�Z��g�A�g��l��쓿�B?k�e�5�cr�E���u�nm-���w��ܐ��i���s�Y�!�mV2yZ�����e휸#��m�l���n���Y�!�m���g�A�g�l���������-D[����ݾN:��/�vVn�r�ڙU�^<��ݐ�.�=�)�՛��udX�c����ޔ��ń#��zS�;�Wqb9��ޔ�N�!vm��se�s	�l���ݔ���&�\�����ݵ-��Ϟ����M��\�'>�7A;k7e�����g��Y�)۝݋x��w��*۝k�m���[E��R��M���ڭ�݇����B?k��v��������ڭ��%	+�f��O/�D�ILz&��Y�U����b}6B?���z��U�υ������%���������߇dI���-!뷉~��Y��w#��~��Š��F�g�6���^t���ߦ�sҽÍ���m���No�n�~�o���t>����Y�k^
=6����&�]'g~�z#��~���j4��ʍ���m�_�%���&���e�6�(b}6B?��~}U*�� ��~��w}��{��7B?��~=��@�?A;���z��)��A�g�vY�Oz�v#��z��7
�hG3��Hv�vf����u�e��u�ݸ#��n��6Z����7.���ƴ�����u;d�i���7B?�v�n3�6>wB?�v�n3G�_�o�~V��f�b}6B?+w�rs�!�����;d��T�7V7B?�w�~k�V��� ��y�~?�<??��z\      W      x������ � �            x������ � �      =   b   x�3202�50�5�P04�22"=CsKsSN#�R�%�y)�E)
!��i��\X���0"��R��
3��)��&�&�M�HE��C�0����� ��,�      k   H  x�}Աn�0��"/仳�ݭC�Vj;UY�R�&I�>~�O���Ca�����*�{E{p;�'�xu h�iP�>��i�i�9��/ǡ���;�H��k��i�z�U��m>��Lc�Q���z�NQ=��|��i�io��U�����Dt��h#X�m���2�%�&�FƵVN�S����!�6���Zp �)Z��E�cG-�S(,G���Y�o�Q"z�H�S��K�Lǆ6:$���j�R!۰l��!i�Z�S���@F!���Z��������]NXn����z��Yjh�:�	Ge��Ʈ��ܛF�5樌[Jc�D8uv�ڶ��8$q         P   x�3202�50�5�P04�22�22�31445�4B�11�26ҳ01�47���,.-H-JL����,���X��ܐӐ+F��� ��      w      x�3�4����� ]         |   x�u�=�0���>h��IH�-3`�� u�G��?P������$���I0�cB�B�Oe[*��U����>������/��̕|�k�=�������}0�^S0�?�[��o�22���A|      u   �  x�%�ɑ�0�jc6�� ���oǢ�e���A��>��g`-���!�:nE�eYLH�*x��Ⱦ�t6#�tpF;N�(�?�Tmfm�b�Bo�4�C|;�=l���LwGwtn�\ٓl��?�'�Q<a	&��-\ٔ-E��V�U{t<:��^5�e�aCt[Pu���d��@Ϸ"�&.�&n��*6�����a��5�߽M�;}n���g���$[(A�P"�H�RǽԤ��J�u��,�D���xt<��ju�i���/V��xX�ҠC��`�M�U�Pg̳C�7��@-�kÂ���u�d=�'/o~���y�]�7qВ|�)�q�����:L*���0!�Bo��bW�/y�ǂU噿��y�<��P�4���ri����}����H�T��Sd�2������hi��*;�v�j���.[�Dc�1�6q�&��6UgÆ�_���Q���r� �L�|/#~�~����ĵ     