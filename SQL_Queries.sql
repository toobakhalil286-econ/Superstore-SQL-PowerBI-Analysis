/*
===========================================
SQL SALES PERFORMANCE ANALYSIS
Dataset: Sample Superstore
Database: SQLite
Author: Tooba Khalil
Project: SQL Sales Performance Analysis
Date: July 2026
Tool: DB Browser for SQLite
===========================================

EXECUTIVE SUMMARY

This project analyzes the Sample Superstore dataset using SQL to evaluate sales performance, profitability, customer behavior, regional performance, and product trends. The analysis answers business-oriented questions using SQL queries and provides observations and recommendations based on the results. The project demonstrates practical SQL skills and the ability to convert raw business data into meaningful insights for decision-making.
*/
/*
BUSINESS PROBLEM

Businesses collect large amounts of sales data every day, but raw data alone does not help managers make better decisions. This project aims to analyze the Sample Superstore dataset using SQL to identify sales trends, customer behavior, regional performance, product profitability, and business opportunities. The findings can help management make informed decisions to improve sales performance and profitability.
*/
/*
DATASET DESCRIPTION

Dataset Name: Sample Superstore Dataset

The dataset contains sales transaction records of a retail company. It includes information about customers, products, categories, sales, profit, discounts, regions, states, shipping modes, and order details. The dataset is widely used for learning SQL, business intelligence, and data analytics.
*/
/*
TOOLS USED

• SQLite
• DB Browser for SQLite
• Visual Studio Code (VS Code)
• SQL
*/
/*
SKILLS DEMONSTRATED

• Data Retrieval
• Filtering Data
• Sorting Results
• Aggregate Functions
• GROUP BY
• ORDER BY
• Business Analysis
• Data Interpretation
• Problem Solving
• SQL Query Writing
*/
-- =========================================
-- QUESTION 1
-- What is the total sales?
-- =========================================

SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM sales;

-- Output:
-- Total Sales = 2,297,200.86

-- Observation:
-- The dataset shows that the company generated total sales of $2.29 million.
-- This gives an overall picture of the company's sales performance and provides
-- a good starting point for further analysis.

-- Recommendation:
-- The company should continue monitoring overall sales while identifying the
-- products, regions, and customers that contribute the most to revenue.
---- =========================================
-- QUESTION 2
-- What is the total profit?
-- =========================================

SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM sales;

-- Output
-- Total Profit = 286,397.02

-- Observation:
-- The total profit is much lower than total sales. This means that although the
-- company is selling a large amount of products, not every sale is generating
-- a high profit.

-- Recommendation:
-- The company should review products with low profit margins and evaluate its
-- pricing and discount policies to improve profitability.
-- =========================================
-- QUESTION 3
-- How many unique orders are there?
-- =========================================

SELECT COUNT(DISTINCT "Order ID") AS Total_Orders
FROM sales;

-- Output:
-- Total Orders = 9,994

---- Observation:
-- The dataset contains 9,994 customer orders. This provides enough data to
-- study customer purchasing patterns and compare business performance across
-- different categories and regions.

-- Recommendation:
-- The company should regularly analyze customer orders to identify buying
-- trends and improve future sales planning.
-- =========================================
-- QUESTION 4
-- Which product categories generate the highest total sales?
-- =========================================

SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Output:
-- Technology      836154.03
-- Furniture       741999.80
-- Office Supplies 719047.03

-- Observation:
-- Technology recorded the highest sales among all product categories, followed
-- by Furniture and Office Supplies. This shows that Technology is the company's
-- strongest category in terms of revenue.

-- Recommendation:
-- The company should maintain the performance of the Technology category while
-- exploring ways to increase sales in the remaining categories.
-- =========================================
-- QUESTION 5
-- Which regions generate the highest total sales?
-- =========================================

SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Output:
-- West     725457.82
-- East     678781.24
-- Central  501239.89
-- South    391721.91

---- Observation:
-- The West region achieved the highest sales, while the South region recorded
-- the lowest sales. This suggests that sales performance is not the same across
-- all regions.

-- Recommendation:
-- The company should study the factors behind the strong performance in the
-- West region and apply similar strategies to improve sales in the South.
-- =========================================
-- QUESTION 6
-- Which regions generate the highest profit?
-- =========================================

SELECT Region,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Output:
-- West     108418.45
-- East      91522.78
-- South     46749.43
-- Central   39706.36

-- Observation:
-- The West region earned the highest profit, while the Central region recorded
-- the lowest profit. This shows that higher sales do not always result in
-- higher profit.

-- Recommendation:
-- The company should review pricing, operating costs, and discount policies in
-- the Central region to improve overall profitability.
-- =========================================
-- QUESTION 7
-- Which customer segments generate the highest sales?
-- =========================================

SELECT Segment,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Output:
-- Consumer     = 1,161,401.34
-- Corporate    =   706,146.37
-- Home Office  =   429,653.15

-- -- Observation:
-- The Consumer segment generated the highest sales, followed by Corporate and
-- Home Office customers. This shows that individual customers contribute the
-- largest share of the company's revenue.

-- Recommendation:
-- The company should continue focusing on Consumer customers while introducing
-- strategies to increase sales from Corporate and Home Office customers.
-- =========================================
-- QUESTION 8
-- Which customer segments generate the highest profit?
-- =========================================

SELECT Segment,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- Output:
-- Consumer     = 134,119.21
-- Corporate    =  91,979.13
-- Home Office  =  60,298.68

-- Observation:
-- The Consumer segment also earned the highest profit. This means that the
-- company's largest customer segment is also its most profitable one.

-- Recommendation:
-- The company should maintain strong relationships with Consumer customers and
-- explore ways to improve profit from the remaining customer segments.
-- =========================================
-- QUESTION 9
-- Which are the top 10 most profitable products?
-- =========================================

SELECT "Product Name",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Profit DESC
LIMIT 10;

-- Output:
-- Canon imageCLASS 2200 Advanced Copier = 25,199.93
-- Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind = 7,753.04
-- Hewlett Packard LaserJet 3310 Copier = 6,983.88
-- Canon PC1060 Personal Laser Copier = 4,570.93
-- HP Designjet T520 Inkjet Large Format Printer - 24" Color = 4,094.98
-- Ativa V4110MDD Micro-Cut Shredder = 3,772.95
-- 3D Systems Cube Printer, 2nd Generation, Magenta = 3,717.97
-- Plantronics Savi W720 Multi-Device Wireless Headset System = 3,696.28
-- Ibico EPK-21 Electric Binding System = 3,345.28
-- Zebra ZM400 Thermal Label Printer = 3,343.54

---- Observation:
-- The results show that a small number of products contribute a large amount of
-- total profit. These products play an important role in the company's overall
-- financial performance.

-- Recommendation:
-- The company should make sure these high-profit products remain available and
-- continue promoting them to customers.
-- =========================================
-- QUESTION 10
-- Which customers generated the highest total sales?
-- =========================================

SELECT "Customer ID",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY "Customer ID"
ORDER BY Total_Sales DESC
LIMIT 10;

-- Output:
-- SM-20320	25043.05
--TC-20980	19052.22
--RB-19360	15117.34
--TA-21385	14595.62
--AB-10105	14473.57
--KL-16645	14175.23
--SC-20095	14142.33
--HL-15040	12873.3
--SE-20110	12209.44
--CC-12370	12129.07


-- Observation:
-- A few customers contribute a much larger share of total sales than the rest.
-- These customers are valuable because they generate a significant amount of
-- revenue for the company.

-- Recommendation:
-- The company should build strong relationships with these customers through
-- loyalty programs and better customer service to encourage repeat purchases.
-- =========================================
-- QUESTION 11
-- Which states generated the highest sales?
-- =========================================

SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY State
ORDER BY Total_Sales DESC;

-- Output:
-- California = 457,687.63
-- New York = 310,876.27
-- Texas = 170,188.05
-- Washington = 138,641.27
-- Pennsylvania = 116,511.91
-- Florida = 89,473.71
-- Illinois = 80,166.10
-- Ohio = 78,258.14
-- Michigan = 76,269.61
-- Virginia = 70,636.72

-- Observation:
-- California recorded the highest sales among all states, followed by New York
-- and Texas. These states appear to be the company's strongest markets.

-- Recommendation:
-- The company should continue strengthening its position in these states while
-- identifying ways to improve sales in lower-performing markets.
-- =========================================
-- QUESTION 12
-- Which states generated the highest profit?
-- =========================================

SELECT State,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY State
ORDER BY Total_Profit DESC;

--Output:
-- California	76381.39
--New York	74038.55
--Washington	33402.65
--Michigan	24463.19
--Virginia	18597.95
--Indiana	18382.94
--Georgia	16250.04
--Kentucky	11199.7
--Minnesota	10823.19
--Delaware	9977.37

-- Observation:
-- Profit is not distributed equally across all states. Some states generated
-- much higher profit than others, showing differences in business performance.

-- Recommendation:
-- The company should study the reasons behind the most profitable states and
-- apply similar strategies in states with lower profit.
-- =========================================
-- QUESTION 13
-- Which sub-categories generate the highest sales?
-- =========================================

SELECT "Sub-Category",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC;

-- Output:
-- Phones	330007.05
--Chairs	328449.1
--Storage	223843.61
--Tables	206965.53
--Binders	203412.73
--Machines	189238.63
--Accessories	167380.32
--Copiers	149528.03
--Bookcases	114880.0
--Appliances	107532.16

-- Observation:
-- Some product sub-categories generated much higher sales than others. This
-- shows that customer demand is stronger for certain product groups.

-- Recommendation:
-- The company should continue supporting high-selling sub-categories while
-- reviewing the performance of those with lower sales.
-- =========================================
-- QUESTION 14
-- Which sub-categories generate the highest profit?
-- =========================================

SELECT "Sub-Category",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC;

-- Output:
-- Copiers	55617.82
--Phones	44515.73
--Accessories	41936.64
--Paper	34053.57
--Binders	30221.76
--Chairs	26590.17
--Storage	21278.83
--Appliances	18138.01
--Furnishings	13059.14
--Envelopes	6964.18


-- Observation:
-- Profit varies across different sub-categories. Some products generate strong
-- profits, while others contribute much less to the company's earnings.

-- Recommendation:
-- The company should focus on expanding profitable product lines and review the
-- pricing of low-profit sub-categories.
-- QUESTION 15
-- Which products generated an overall loss?
-- =========================================

SELECT "Product Name",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY "Product Name"
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

-- Output:
-- Cubify CubeX 3D Printer Double Head Print	-8879.97
--Lexmark MX611dhe Monochrome Laser Printer	-4589.97
--Cubify CubeX 3D Printer Triple Head Print	-3839.99
--Chromcraft Bull-Nose Wood Oval Conference Tables & Bases	-2876.12
--Bush Advantage Collection Racetrack Conference Table	-1934.4
--GBC DocuBind P400 Electric Binding System	-1878.17
--Cisco TelePresence System EX90 Videoconferencing Unit	-1811.08
--Martin Yale Chadless Opener Electric Letter Opener	-1299.18
--Balt Solid Wood Round Tables	-1201.06
--BoxOffice By Design Rectangular and Half-Moon Meeting Room Tables	-1148.44

-- Observation:
-- The results show that some products generated an overall loss. Selling these
-- products reduced the company's total profit.

-- Recommendation:
-- The company should review these products and identify whether pricing,
-- discounts, or supplier costs are causing the losses.
-- =========================================
-- QUESTION 16
-- Which customer segment received the highest average discount?
-- =========================================

SELECT Segment,
       ROUND(AVG(Discount),2) AS Average_Discount
FROM sales
GROUP BY Segment
ORDER BY Average_Discount DESC;

-- Output:
--Corporate	0.16
--Consumer	0.16
--Home Office	0.15

-- Observation:
-- The average discount is different for each customer segment. This suggests
-- that some customer groups receive higher discounts than others, which may
-- affect the company's overall profit.

-- Recommendation:
-- The company should review its discount policy and make sure discounts are
-- helping to increase sales without reducing profit too much.
-- =========================================
-- QUESTION 17
-- Which shipping mode generated the highest sales?
-- =========================================

SELECT "Ship Mode",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Sales DESC;

-- Output:
-- Standard Class	1358215.74
--Second Class	459193.57
--First Class	351428.42
--Same Day	128363.13

-- Observation:
-- Sales are not the same across all shipping modes. Customers prefer some
-- shipping methods more than others, resulting in higher sales through those
-- options.

-- Recommendation:
-- The company should maintain the quality of its most popular shipping methods
-- while improving the service of the less frequently used ones.
-- =========================================
-- QUESTION 18
-- Which shipping mode generated the highest profit?
-- =========================================

SELECT "Ship Mode",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Profit DESC;

-- Output:
-- Standard Class	164088.79
--Second Class	57446.64
--First Class	48969.84
--Same Day	15891.76

-- Observation:
-- Profit also varies across different shipping modes. This shows that the
-- shipping method can influence the company's overall profitability.

-- Recommendation:
-- The company should compare shipping costs with the profit earned from each
-- shipping mode to identify the most cost-effective option.
-- =========================================
-- QUESTION 19
-- Which shipping mode generated the highest number of orders?
-- =========================================

SELECT "Ship Mode",
       COUNT(*) AS Total_Orders
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Orders DESC;

-- Output:
-- Standard Class	5968
--Second Class	1945
--First Class	1538
--Same Day	543

-- Observation:
-- Some shipping modes handled more customer orders than others. This indicates
-- that customers have clear preferences when choosing delivery options.

-- Recommendation:
-- The company should ensure that the most frequently used shipping methods
-- continue to provide reliable and efficient service.
-- =========================================
-- QUESTION 20
-- What is the average discount offered in each product category?
-- =========================================

SELECT Category,
       ROUND(AVG(Discount),2) AS Average_Discount
FROM sales
GROUP BY Category
ORDER BY Average_Discount DESC;

-- Output:
--Furniture	0.17
--Office Supplies	0.16
--Technology	0.13

-- Observation:
-- The average discount is not the same across product categories. Some
-- categories receive larger discounts, which may reduce their overall profit.

-- Recommendation:
-- The company should regularly evaluate category-wise discounts to make sure
-- they support sales without affecting profitability.
-- =========================================
-- QUESTION 21
-- Which customers generated the highest total profit?
-- =========================================

SELECT "Customer Name",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY "Customer Name"
ORDER BY Total_Profit DESC
LIMIT 10;

-- Output:
-- TC-20980	8981.32
--RB-19360	6976.1
--SC-20095	5757.41
--HL-15040	5622.43
--AB-10105	5444.81
--TA-21385	4703.79
--CM-12385	3899.89
--KD-16495	3038.63
--AR-10540	2884.62
--DR-12940	2869.08

-- Observation:
-- A small number of customers generated much higher profit than the rest.
-- These customers are important because they contribute significantly to the
-- company's earnings.

-- Recommendation:
-- The company should maintain good relationships with these customers and
-- encourage them to continue purchasing through loyalty programs or special
-- offers.
-- =========================================
-- QUESTION 22
-- Which cities generated the highest total sales?
-- =========================================

SELECT City,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Output:
-- New York City	256368.16
--Los Angeles	175851.34
--Seattle	119540.74
--San Francisco	112669.09
--Philadelphia	109077.01
--Houston	64504.76
--Chicago	48539.54
--San Diego	47521.03
--Jacksonville	44713.18
--Springfield	43054.34


-- Observation:
-- Sales are concentrated in a few cities, while many other cities contribute
-- much less revenue. This shows that customer demand differs by location.

-- Recommendation:
-- The company should continue supporting high-performing cities while exploring
-- opportunities to improve sales in cities with lower performance.
-- =========================================
-- QUESTION 23
-- What are the yearly sales trends?
-- =========================================

SELECT strftime('%Y', "Order Date") AS Year,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales
GROUP BY Year
ORDER BY Year;

-- Output:
-- 	2297200.86

-- Observation:
-- The yearly sales results show how the company's revenue changed over time.
-- This helps identify whether sales are increasing, decreasing, or remaining
-- stable from one year to another.

-- Recommendation:
-- The company should continue monitoring yearly sales trends to support future
-- business planning and forecasting.
-- =========================================
-- QUESTION 24
-- What are the yearly profit trends?
-- =========================================

SELECT strftime('%Y', "Order Date") AS Year,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Year
ORDER BY Year;

-- Output:
-- 	286397.02

-- Observation:
-- The yearly profit trend provides a clear picture of changes in profitability
-- over time. Comparing yearly profit helps evaluate the company's financial
-- performance.

-- Recommendation:
-- The company should compare yearly profit with yearly sales to identify the
-- factors affecting overall business performance.
-- =========================================
-- QUESTION 25
-- Which category has the highest average profit per order?
-- =========================================

SELECT Category,
       ROUND(AVG(Profit),2) AS Average_Profit
FROM sales
GROUP BY Category
ORDER BY Average_Profit DESC;

-- Output:
-- Technology	78.75
--Office Supplies	20.33
--Furniture	8.7

-- Observation:
-- The average profit differs across product categories. Some categories earn
-- more profit per order than others, showing differences in profitability.

-- Recommendation:
-- The company should continue investing in categories with higher average
-- profit while reviewing the performance of lower-profit categories.

/*
/*
===========================================================
CONCLUSION

This project demonstrated how SQL can be used to analyze business data and
generate meaningful insights. By answering business-related questions, the
analysis identified sales patterns, customer trends, regional performance,
and product profitability. The findings highlight the importance of using
data-driven decision-making to improve business performance.

Through this project, I strengthened my practical SQL skills, including data
retrieval, filtering, aggregation, grouping, sorting, and business analysis.
The project also improved my ability to interpret data and communicate
findings through observations and recommendations.

===========================================================
END OF PROJECT
===========================================================
*/
===========================================
End of SQL Analysis
Total Questions Solved: 25
Dataset: Sample Superstore
Database: SQLite
===========================================
*/