-- Truncar dados existentes antes de alterar o tipo da colunas
UPDATE "agents" SET "title" = LEFT("title", 255) WHERE LENGTH("title") > 255;
UPDATE "agents" SET "description" = LEFT("description", 1000) WHERE LENGTH("description") > 1000;

-- Agora alterar os tipos das colunas
ALTER TABLE "agents" ALTER COLUMN "title" SET DATA TYPE varchar(255);
--> statement-breakpoint
ALTER TABLE "agents" ALTER COLUMN "description" SET DATA TYPE varchar(1000);
