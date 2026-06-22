# Retail Analytics Engineering Project using Snowflake

## Project Overview

This project demonstrates the design and implementation of an end-to-end Retail Analytics solution using Snowflake. The solution ingests retail sales data, performs data quality validations, transforms data into reporting-ready structures, generates business insights, and automates validation processes using Snowflake Tasks and Stored Procedures.

---

## Architecture

CSV File
↓
RETAIL_SALES (Raw Layer)
↓
Data Quality Checks
↓
SP_VALIDATE_RETAIL_DATA()
↓
STG_RETAIL_SALES (Staging Layer)
↓
Business Views
↓
VW_EXECUTIVE_DASHBOARD
↓
Business Insights
↓
TASK_VALIDATE_RETAIL_DATA

---

## Data Model

### Raw Layer

* RETAIL_SALES

### Staging Layer

* STG_RETAIL_SALES

### Business Views

* VW_REGION_PERFORMANCE
* VW_TOP_CUSTOMERS
* VW_CATEGORY_PERFORMANCE
* VW_PRODUCT_PERFORMANCE
* VW_PRODUCT_REGION_PERFORMANCE
* VW_MONTHLY_SALES

### Reporting Layer

* VW_EXECUTIVE_DASHBOARD

---

## Data Quality Framework

### Raw Layer Validations

* Null Customer ID Check
* Null Product ID Check
* Negative Sales Check
* Future Order Date Check

### Staging Layer Validations

* Region Validation
* Category Validation
* Product Validation

---

## Stored Procedure

### SP_VALIDATE_RETAIL_DATA

Automated validation procedure that:

* Checks mandatory fields
* Validates sales values
* Validates order dates
* Returns validation status and failure reason

Example:

CALL SP_VALIDATE_RETAIL_DATA();

---

## Task Automation

### TASK_VALIDATE_RETAIL_DATA

Snowflake Task created to automatically execute data validation checks on a scheduled basis.

Purpose:

* Reduce manual effort
* Ensure continuous data quality monitoring
* Support automated data pipelines

---

## Business Insights

The project generates business insights such as:

* Highest Revenue Region
* Highest Profit Region
* Region with Maximum Customers
* Most Profitable Product
* Highest Revenue Category
* Monthly Sales Trends

---

## Analytical SQL

Implemented analytical queries using:

* ROW_NUMBER()
* RANK()
* Aggregate Functions
* GROUP BY
* Window Functions

Examples:

* Top 5 Products by Region
* Top 3 Customers by Profit
* Category Rankings
* Monthly Sales Trend Analysis

---

## Technologies Used

* Snowflake
* SQL
* GitHub

---

## Key Skills Demonstrated

* Data Warehousing
* Data Modeling
* Analytics Engineering
* Data Quality Validation
* SQL Development
* Snowflake Stored Procedures
* Snowflake Tasks
* Reporting and KPI Development
* Business Insight Generation
