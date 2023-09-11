-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- CREATING TABLES

CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
     );

CREATE TABLE "category" (
    "category_id" varchar PRIMARY KEY  NOT NULL,
    "category" varchar   NOT NULL
     );

CREATE TABLE "subcategory" (
    "subcategory_id" varchar PRIMARY KEY  NOT NULL,
    "subcategory" varchar   NOT NULL
     );

CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
	"currency" varchar   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
     );

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
