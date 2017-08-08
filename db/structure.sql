CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "category" varchar, "itemName" varchar, "expiration" date, "donationID" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "item_id" integer);
CREATE TABLE "organizations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "address" varchar, "org_name" varchar, "phone" varchar, "contact_id" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "organization_id" integer);
CREATE TABLE "donors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "donorName" varchar, "phoneNum" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "inventories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "itemnum" integer, "orgnum" integer, "quantity" integer, "expires" date, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "inventory_id" integer);
CREATE TABLE "inventories_organizations" ("inventory_id" integer NOT NULL, "organization_id" integer NOT NULL);
CREATE TABLE "inventories_items" ("inventory_id" integer NOT NULL, "item_id" integer NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20170705203048');

INSERT INTO schema_migrations (version) VALUES ('20170705234446');

INSERT INTO schema_migrations (version) VALUES ('20170722204523');

INSERT INTO schema_migrations (version) VALUES ('20170726230716');

INSERT INTO schema_migrations (version) VALUES ('20170803004143');

INSERT INTO schema_migrations (version) VALUES ('20170803004209');

INSERT INTO schema_migrations (version) VALUES ('20170803012041');

INSERT INTO schema_migrations (version) VALUES ('20170803012500');

INSERT INTO schema_migrations (version) VALUES ('20170803012609');

