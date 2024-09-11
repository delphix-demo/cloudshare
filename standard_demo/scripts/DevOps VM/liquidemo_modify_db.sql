-- 
-- Modifica tabella Indirizzi
-- 
ALTER TABLE "public"."Indirizzi" ADD "email" VARCHAR(80) DEFAULT 'prova@prova.com' NOT NULL;
ALTER TABLE "public"."Indirizzi" ADD "telefono" VARCHAR(30) DEFAULT '9999999' NOT NULL;
ALTER TABLE "public"."Indirizzi" ADD "website" VARCHAR(255) DEFAULT 'http://www.prova.com' NOT NULL;

