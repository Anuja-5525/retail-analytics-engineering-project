-- ====================================
-- Duplicate Order Check
-- ====================================

SELECT
    ORDER_ID,
    COUNT(*) AS RECORD_COUNT
FROM RETAIL_SALES
GROUP BY ORDER_ID
HAVING COUNT(*) > 1;

-- ====================================
-- Null Customer Check
-- ====================================

SELECT *
FROM RETAIL_SALES
WHERE CUSTOMER_ID IS NULL;

-- ====================================
-- Null Product Check
-- ====================================

SELECT *
FROM RETAIL_SALES
WHERE PRODUCT_ID IS NULL;

-- ====================================
-- Negative Sales Check
-- ====================================

SELECT *
FROM RETAIL_SALES
WHERE SALES < 0;

-- ====================================
-- Negative Profit Check
-- ====================================

SELECT *
FROM RETAIL_SALES
WHERE PROFIT < 0;

-- ====================================
-- Future Order Date Check
-- ====================================

SELECT *
FROM RETAIL_SALES
WHERE ORDER_DATE > CURRENT_DATE();
