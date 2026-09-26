SELECT * FROM products;

-- get all the categories in uppercase

SELECT UPPER(category) AS category_capital 
FROM products;

-- get all the categories in lowercase

SELECT LOWER(category) AS category_smaller 
FROM products;

-- join product-name and category text with hyphen 

SELECT CONCAT(product_name, '-', category) AS product_details
FROM products;

-- extract thr 5 characters from product_name

SELECT SUBSTRING(product_name, 2,5) AS short_name
FROM products;

-- count length 

SELECT LENGTH(product_name) AS count_of_char
FROM products;

SELECT LENGTH(product_name) AS count_of_char
FROM products
WHERE category = 'Electronics';

-- trim leading trailinng spaces from string 

SELECT TRIM('   Moniter    ') AS trimmed_text;
SELECT LENGTH('   Moniter    ') AS trimmed_text;
SELECT LENGTH(TRIM('   Moniter    ')) AS trimmed_text;


-- replace  the wordd laptop with device

SELECT REPLACE(product_name, 'Laptop', 'Device') AS updated
FROM products;


-- get chracter from  category 

SELECT LEFT(category, 5) AS category_left
FROM products;


SELECT RIGHT(category, 5) AS category_right
FROM products;