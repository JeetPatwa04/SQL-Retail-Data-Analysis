-- SQL Retail Sales Analysis! :D P1

CREATE DATABASE sql_project_p2; 

-- CREATE TABLE 
DROP TABLE IF EXISTS retail_sales; 
CREATE TABLE retail_sales
	(
		transactions_id	INT PRIMARY KEY,
		sale_date DATE,
		sale_time TIME,
		customer_id	INT,
		gender VARCHAR(15),
		age INT,
		category VARCHAR(15),	
		quantity INT,
		price_per_unit FLOAT,	
		cogs FLOAT,
		total_sale FLOAT
	);

SELECT * FROM retail_sales 
LIMIT 10


SELECT 
	COUNT(*) 
FROM retail_sales 

-- Check for null values in each column category

SELECT * FROM retail_sales 
WHERE transactions_id IS NULL

SELECT * FROM retail_sales 
WHERE sale_date IS NULL

SELECT * FROM retail_sales 
WHERE sale_time IS NULL

-- Check null values for all categories in one line
SELECT * FROM retail_sales 
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR 
	category IS NULL 
	OR 
	quantity IS NULL 
	OR 
	cogs IS NULL
	OR
	total_sale IS NULL;

-- Deleting all null values

DELETE FROM retail_sales
WHERE 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR 
	category IS NULL 
	OR 
	quantity IS NULL 
	OR 
	cogs IS NULL
	OR
	total_sale IS NULL;
