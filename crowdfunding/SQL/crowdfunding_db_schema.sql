-- Database name: crowdfunding_db
-- Schema to create tables

-- Start afresh!
DROP TABLE IF EXISTS campaign, contacts, category, subcategory;
---------------------------------------------------------------

CREATE DOMAIN country_code CHAR(2)
  CHECK (VALUE ~ '^[A-Z]{2}$');
  
CREATE DOMAIN currency_code CHAR(3)
  CHECK (VALUE ~ '^[A-Z]{3}$');
  
-- Create tables
-- Table 1					 
CREATE TABLE campaign (
  	cf_id BIGINT NOT NULL,
	contact_id BIGINT NOT NULL,
	company_name TEXT NOT NULL,
	description TEXT NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (15) NOT NULL,
	backers_count BIGINT NOT NULL,
	country country_code  NOT NULL,
	currency currency_code  NOT NULL,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR (10) NOT NULL,
	subcategory_id VARCHAR (10) NOT NULL
	);
SELECT * FROM campaign;


-- Table 2
CREATE TABLE contacts (
  	contact_id BIGINT NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	email VARCHAR (255) NOT NULL
	);
SELECT * FROM contacts;


-- Table 3
CREATE TABLE category (
	category_id VARCHAR (10) NOT NULL,
	category VARCHAR (30) NOT NULL
	);
SELECT * FROM category;


-- Table 4
CREATE TABLE subcategory (
	subcategory_id VARCHAR (10) NOT NULL,
	subcategory VARCHAR (30) NOT NULL
	);
SELECT * FROM subcategory;		


---------------------------------------------------------------
-- Import Data
---------------------------------------------------------------

-- Verify contents

SELECT * FROM campaign LIMIT 100;
SELECT * FROM contacts LIMIT 100;
SELECT * FROM category LIMIT 100;
SELECT * FROM subcategory LIMIT 100;

---------------------------------------------------------------

-- Checking for duplicates before selecting Primary Key

SELECT subcategory_id, COUNT(*) FROM subcategory
GROUP BY subcategory_id HAVING COUNT(*) > 1;

SELECT category_id, COUNT(*) FROM category
GROUP BY category_id HAVING COUNT(*) > 1;

SELECT contact_id, COUNT(*) FROM contacts
GROUP BY contact_id HAVING COUNT(*) > 1;

SELECT cf_id, COUNT(*) FROM campaign
GROUP BY cf_id HAVING COUNT(*) > 1;

---------------------------------------------------------------

-- Selecting Primary Key and Foreign Key:

ALTER TABLE subcategory ADD PRIMARY KEY (subcategory_id);

ALTER TABLE category ADD PRIMARY KEY (category_id);

ALTER TABLE contacts ADD PRIMARY KEY (contact_id);

ALTER TABLE campaign ADD PRIMARY KEY (cf_id);
ALTER TABLE campaign ADD CONSTRAINT campaign_contact_id_fk FOREIGN KEY (contact_id) REFERENCES contacts(contact_id);
ALTER TABLE campaign ADD CONSTRAINT campaign_category_id_fk FOREIGN KEY (category_id) REFERENCES category(category_id);
ALTER TABLE campaign ADD CONSTRAINT campaign_subcategory_id_fk FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id);

---------------------------------------------------------------------------------------------------------







