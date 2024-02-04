CREATE DATABASE sales_performance;

CREATE TABLE sales_teams(
    id INT PRIMARY KEY,
    sales_team TEXT,
    region TEXT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/sales_teams.csv'
INTO TABLE sales_teams
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
    id,
    sales_team,
    region
);

CREATE TABLE store_locations(
    id INT PRIMARY KEY,
    name TEXT,
    county TEXT,
    state_code VARCHAR(2),
    state TEXT,
    type TEXT,
    latitude REAL,
    longitude REAL,
    area_code VARCHAR(3),
    population INT,
    households INT,
    median_income INT,
    land_area INT,
    water_area INT,
    time_zone TEXT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/store_locations.csv'
INTO TABLE store_locations
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
    id,
    name,
    county,
    state_code,
    state,
    type,
    latitude,
    longitude,
    area_code,
    population,
    households,
    median_income,
    land_area,
    water_area,
    time_zone
);


CREATE TABLE products(
    id INT PRIMARY KEY,
    product_name TEXT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
    id,
    product_name
);

CREATE TABLE regions(
    state_code VARCHAR(2),
    state TEXT,
    region TEXT
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/regions.csv'
INTO TABLE regions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
    state_code,
    state,
    region
);

CREATE TABLE orders(
    order_number TEXT,
    sales_date DATE,
    sales_channel TEXT,
    currency VARCHAR(3),
    sales_team_id INT,
    store_id INT,
    product_id INT,
    order_qty INT,
    unit_price REAL,
    unit_cost REAL,
    sales REAL,
    costs REAL,
    profits REAL
);

-- Placeholder used for the LOAD DATA LOCAL INFILE path to replace private information
LOAD DATA LOCAL INFILE '/path/to/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
    order_number,
    @sales_date,
    sales_channel,
    currency,
    sales_team_id,
    store_id,
    product_id,
    order_qty,
    unit_price,
    unit_cost,
    sales,
    costs,
    profits
)
SET sales_date = STR_TO_DATE(@sales_date, '%m/%d/%y');