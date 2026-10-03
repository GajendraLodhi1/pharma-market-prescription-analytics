-- SQL Analysis Scripts for NHS PCA Data
-- Ensure data is loaded into a table named `nhs_pca` before running these queries

-- 1. Market Analysis: Top therapeutic areas by prescription volume
SELECT 
    BNF_CHAPTER,
    SUM(ITEMS) as Total_Items,
    SUM(NIC) as Total_Cost
FROM nhs_pca
GROUP BY BNF_CHAPTER
ORDER BY Total_Items DESC
LIMIT 10;

-- 2. Cost Analysis: Highest spending categories
SELECT 
    BNF_CHAPTER,
    SUM(NIC) as Total_Cost
FROM nhs_pca
GROUP BY BNF_CHAPTER
ORDER BY Total_Cost DESC
LIMIT 10;

-- 3. Geography: Activity by ICB Code
SELECT 
    ICB_CODE,
    SUM(ITEMS) as Total_Items,
    SUM(NIC) as Total_Cost
FROM nhs_pca
GROUP BY ICB_CODE
ORDER BY Total_Cost DESC
LIMIT 10;

-- 4. Product Analysis: Top products by cost
SELECT 
    BNF_PRESENTATION_NAME,
    SUPPLIER_NAME,
    SUM(ITEMS) as Total_Items,
    SUM(NIC) as Total_Cost,
    (SUM(NIC) / SUM(ITEMS)) as Cost_Per_Item
FROM nhs_pca
GROUP BY BNF_PRESENTATION_NAME, SUPPLIER_NAME
ORDER BY Total_Cost DESC
LIMIT 10;
