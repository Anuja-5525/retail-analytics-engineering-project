-- Database Creation

CREATE DATABASE retail_db;

CREATE SCHEMA retail_db.raw;

USE DATABASE retail_db;

USE SCHEMA raw;

-- Retail Sales Table

CREATE OR REPLACE TABLE retail_sales (
    row_id INTEGER,
    order_id STRING,
    order_date DATE,
    ship_date DATE,
    ship_mode STRING,
    customer_id STRING,
    customer_name STRING,
    segment STRING,
    country STRING,
    city STRING,
    state STRING,
    postal_code STRING,
    region STRING,
    product_id STRING,
    category STRING,
    sub_category STRING,
    product_name STRING,
    sales FLOAT,
    quantity INTEGER,
    discount FLOAT,
    profit FLOAT
);
