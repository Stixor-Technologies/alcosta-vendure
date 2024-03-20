import {MigrationInterface, QueryRunner} from "typeorm";

export class addKeywordsField1710832273928 implements MigrationInterface {

   public async up(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`ALTER TABLE "product" ADD "customFieldsBrand" character varying(255) DEFAULT ''`, undefined);
   }

   public async down(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`ALTER TABLE "product" DROP COLUMN "customFieldsBrand"`, undefined);
   }

}
