-- Dimension: Date
CREATE TABLE date_dim (
    date_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    weekday INT NOT NULL,
    holiday_name VARCHAR(255),
    holiday BOOLEAN,
    shops_closed BOOLEAN,
    winter_school_holidays BOOLEAN,
    school_holidays BOOLEAN
);

-- Dimension: Warehouse
CREATE TABLE warehouse_dim (
    warehouse_id INT AUTO_INCREMENT PRIMARY KEY,
    warehouse VARCHAR(255) NOT NULL
);

-- Dimension: Product
CREATE TABLE product_dim (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_unique_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255)
);

-- Fact Table: Sales
CREATE TABLE sales_fact (
    sales_fact_id INT AUTO_INCREMENT PRIMARY KEY, -- Surrogate key for uniqueness
    unique_id INT, -- Retained for analytical purposes
    total_orders FLOAT,
    sales FLOAT,
    sell_price_main FLOAT,
    availability FLOAT,
    max_discount FLOAT,
    date_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouse_dim(warehouse_id),
    FOREIGN KEY (product_id) REFERENCES product_dim(product_id)
);
