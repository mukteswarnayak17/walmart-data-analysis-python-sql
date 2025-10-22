use walmart_data;
show tables;
select * from walmart limit 10;

-- Walmart Project Queries - MySQL

-- Business Problem Q1: What are the total transactions, total units sold, and total revenue overall?
select 
   count(*) Total_Transactions ,
   sum(quantity) Total_Units_Sold,
   sum(total_sales) Total_Revenue
from walmart;

-- Business Problem Q2: Calculate the total quantity of items sold per payment method
select
   payment_method,
   sum(quantity) Total_Units_Sold
from walmart
group by payment_method;

-- Business Problem Q3: Identify the highest-rated category in each branch
-- Display the branch, category, and avg rating
SELECT branch, category, avg_rating
FROM (
    SELECT 
        branch,
        category,
        AVG(rating) AS avg_rating,
        RANK() OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) AS ranking
    FROM walmart
    GROUP BY branch, category
) AS ranked
WHERE ranking = 1;

-- Business Problem Q4: Determine the average, minimum, and maximum rating of categories for each city
SELECT 
    city,
    category,
    MIN(rating) AS min_rating,
    MAX(rating) AS max_rating,
    AVG(rating) AS avg_rating
FROM walmart
GROUP BY city, category;

-- Business Problem Q5: Calculate the total profit for each category
SELECT 
    category,
    SUM(unit_price * quantity * profit_margin) AS total_profit
FROM walmart
GROUP BY category
ORDER BY total_profit DESC;

-- Business Problem Q6: Categorize sales into Morning, Afternoon, and Evening shifts
SELECT
    branch,
    CASE 
        WHEN HOUR(TIME(time)) < 12 THEN 'Morning'
        WHEN HOUR(TIME(time)) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS num_invoices
FROM walmart
GROUP BY branch, shift
ORDER BY branch, num_invoices DESC;

-- Business Problem Q7: Determine the most common payment method for each branch
WITH cte AS (
    SELECT 
        branch,
        payment_method,
        COUNT(*) AS total_trans,
        RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS ranking
    FROM walmart
    GROUP BY branch, payment_method
)
SELECT branch, payment_method AS preferred_payment_method
FROM cte
WHERE ranking = 1;

   





