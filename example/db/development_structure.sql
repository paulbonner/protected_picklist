CREATE TABLE "hats" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "hatsize_id" integer, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "hatsizes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime, "name" varchar(255));
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "created_at" datetime, "updated_at" datetime, "hatsize_id" integer);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20100513212727');

INSERT INTO schema_migrations (version) VALUES ('20100513214806');

INSERT INTO schema_migrations (version) VALUES ('20100513215021');

INSERT INTO schema_migrations (version) VALUES ('20100513215417');

INSERT INTO schema_migrations (version) VALUES ('20100514190253');