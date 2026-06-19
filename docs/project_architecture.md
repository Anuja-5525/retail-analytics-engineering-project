# Project Architecture

Retail Analytics Engineering Project

CSV File
    ↓
RETAIL_SALES
    ↓
STG_RETAIL_SALES
    ↓
Business Views
    ├── VW_REGION_PERFORMANCE
    ├── VW_TOP_CUSTOMERS
    ├── VW_CATEGORY_PERFORMANCE
    ├── VW_PRODUCT_PERFORMANCE
    ├── VW_PRODUCT_REGION_PERFORMANCE
    └── VW_MONTHLY_SALES
    ↓
Analytical Queries
    ├── Top 5 Products by Region
    ├── Top 3 Customers by Profit
    ├── Category Rankings
    └── Monthly Sales Trend
