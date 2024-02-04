CREATE DATABASE email_engagement_and_sales_performance;

CREATE TABLE customer_sales(
	date DATE,
	id VARCHAR(4),
	customer_name TEXT,
	product_id VARCHAR(11),
	product TEXT,
	sales INT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/customer_sales.csv'
INTO TABLE customer_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	@date,
	id,
	customer_name,
	product_id,
	product,
	sales
)
SET date = STR_TO_DATE(@date, '%m/%d/%y');

CREATE TABLE customer_emails(
	date DATE,
	id VARCHAR(4),
	customer_name TEXT,
	email_received BOOLEAN,
	email_opened BOOLEAN,
	link_clicked BOOLEAN
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/customer_emails.csv'
INTO TABLE customer_emails
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
	@date,
	id,
	customer_name,
	email_received,
	email_opened,
	link_clicked
)
SET date = STR_TO_DATE(@date, '%m/%d/%y');