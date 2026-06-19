-- ====================================
-- Region Performance View
-- ====================================
create or replace view RETAIL_DB.RAW.VW_REGION_PERFORMANCE(
	REGION,
	TOTAL_SALES,
	TOTAL_PROFIT,
	TOTAL_QUANTITY
) as
SELECT
    REGION,
    ROUND(SUM(SALES),2) AS TOTAL_SALES,
    ROUND(SUM(PROFIT),2) AS TOTAL_PROFIT,
    SUM(QUANTITY) AS TOTAL_QUANTITY
FROM STG_RETAIL_SALES
GROUP BY REGION;

-- ====================================
-- Top Customers View
-- ====================================
create or replace view RETAIL_DB.RAW.VW_TOP_CUSTOMERS(
	CUSTOMER_ID,
	CUSTOMER_NAME,
	TOTAL_SALES,
	TOTAL_PROFIT
) as
select customer_id,customer_name,SUM(Sales) as Total_sales,Sum(Profit) as Total_profit
from stg_retail_sales
group by customer_id,customer_name;

-- ====================================
-- Category Performance View
-- ====================================

create or replace view RETAIL_DB.RAW.VW_CATEGORY_PERFORMANCE(
	CATEGORY,
	TOTAL_SALES,
	TOTAL_PROFIT,
	TOTAL_QUANTITY
) as
select category,SUM(Sales) as Total_sales,Sum(Profit) as Total_profit,sum(quantity) as total_quantity
from stg_retail_sales
group by category;

-- ====================================
-- Product Region Performance View
-- ====================================

create or replace view RETAIL_DB.RAW.VW_PRODUCT_REGION_PERFORMANCE(
	REGION,
	PRODUCT_ID,
	PRODUCT_NAME,
	TOTAL_SALES,
	TOTAL_PROFIT,
	TOTAL_QUANTITY
) as
Select REGION, PRODUCT_ID, PRODUCT_NAME, SUM(SALES) AS TOTAL_SALES, SUM(PROFIT) AS TOTAL_PROFIT, SUM(QUANTITY) AS TOTAL_QUANTITY FROM STG_RETAIL_SALES GROUP BY REGION,PRODUCT_ID,PRODUCT_NAME;

-- ====================================
-- Product Performance View
-- ====================================

create or replace view RETAIL_DB.RAW.VW_PRODUCT_PERFORMANCE(
	PRODUCT_ID,
	PRODUCT_NAME,
	TOTAL_SALES,
	TOTAL_PROFIT,
	TOTAL_QUANTITY
) as
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    SUM(SALES) AS TOTAL_SALES,
    SUM(PROFIT) AS TOTAL_PROFIT,
    SUM(QUANTITY) AS TOTAL_QUANTITY
FROM STG_RETAIL_SALES
GROUP BY PRODUCT_ID, PRODUCT_NAME;

-- ====================================
-- MONTHLY_SALES View
-- ====================================

create or replace view RETAIL_DB.RAW.VW_MONTHLY_SALES(
	SALES_YEAR,
	SALES_MONTH,
	TOTAL_SALES,
	TOTAL_PROFIT,
	TOTAL_QUANTITY
) as
SELECT
    YEAR(ORDER_DATE) AS SALES_YEAR,
    MONTH(ORDER_DATE) AS SALES_MONTH,
    SUM(SALES) AS TOTAL_SALES,
    SUM(PROFIT) AS TOTAL_PROFIT,
    SUM(QUANTITY) AS TOTAL_QUANTITY
FROM STG_RETAIL_SALES
GROUP BY
    YEAR(ORDER_DATE),
    MONTH(ORDER_DATE);

