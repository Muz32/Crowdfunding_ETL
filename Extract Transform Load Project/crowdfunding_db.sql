DROP TABLE category CASCADE;
DROP TABLE subcategory CASCADE;
DROP TABLE contacts CASCADE;
DROP TABLE campaign;

CREATE TABLE category (
    category_id VARCHAR(255),
    category VARCHAR(255),
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(255),
    subcategory VARCHAR(255),
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cf_id INT,
    contact_id INT,
    company_name VARCHAR(255),
    description VARCHAR(255),
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(255),
    launched_date VARCHAR(255) NOT NULL,
    end_date VARCHAR(255) NOT NULL,
    category_id VARCHAR(255),
    subcategory_id VARCHAR(255),
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id), 
	FOREIGN KEY (category_id) REFERENCES category(category_id), 
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	
);

SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM campaign

