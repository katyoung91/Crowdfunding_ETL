--CREATING DATABASE, We did not create the db this way. We right clicked the dbs to create it then created this file within it. 
--Any attempts to drop or create a db within this file even working in another db would, result in an error "CREATE/DROP DATABASE cannot run inside a transaction block." even with Autocommit on.  

--SET AUTOCOMMIT = ON;
--DROP DATABASE crowdfunding_db;
--CREATE DATABASE crowdfunding_db;


-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- CREATING TABLES

--IN CASE WORKING IN EXISTING DB WITH THESE TABLES, DROPING ANY EXISTING TABLES 
DROP TABLE contacts;
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE campaign;

CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
     );

DROP TABLE category;
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
--CONFIRMS TABLES ARE CREATED, CAN BE USED AGAIN ONCE DATA IS IMPORTED.
--We imported by right clicking each table and importing the correct files from the import/export window. 
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
