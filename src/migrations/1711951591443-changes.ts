import {MigrationInterface, QueryRunner} from "typeorm";

export class changes1711951591443 implements MigrationInterface {

   public async up(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`ALTER TABLE "product_variant" DROP COLUMN "customFieldsDiscount"`, undefined);
        await queryRunner.query(`ALTER TABLE "product_variant" ADD "customFieldsDiscount" double precision DEFAULT '0'`, undefined);
   }

   public async down(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`ALTER TABLE "product_variant" DROP COLUMN "customFieldsDiscount"`, undefined);
        await queryRunner.query(`ALTER TABLE "product_variant" ADD "customFieldsDiscount" integer DEFAULT '0'`, undefined);
   }

}
