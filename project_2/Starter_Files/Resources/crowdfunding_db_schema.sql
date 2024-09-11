-- Create a table for contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Create a table for campaign data
CREATE TABLE campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal NUMERIC(10,2),
    pledged NUMERIC(10,2),
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launched_date DATE,
    end_date DATE,
    category VARCHAR(50),
    subcategory VARCHAR(50),
    category_id INT,
	subcategory_id INT,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)	
);



-- Create a table for categories
CREATE TABLE categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(255)
);

-- Create a table for subcategories
CREATE TABLE subcategories (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(255)
);

-- Create a table for campaign-category relationships
CREATE TABLE campaign_categories (
    cf_id INT,
    category_id VARCHAR(50),
    FOREIGN KEY (cf_id) REFERENCES campaigns(cf_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Create a table for campaign-subcategory relationships
CREATE TABLE campaign_subcategories (
    cf_id INT,
    subcategory_id VARCHAR(50),
    FOREIGN KEY (cf_id) REFERENCES campaigns(cf_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

