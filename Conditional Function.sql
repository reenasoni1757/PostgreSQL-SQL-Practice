SELECT * FROM products;


 /* 1. CASE Function - categorizing baseg on condition 
 we will categorise products into price ranges;

 Expensive if the price is greater then or equal to 50000
 Moderate if the price isbetween 10000 and 49000
 Affordable if the price is less the 10000
 */

SELECT product_name, price,
   CASE 
      WHEN price>=50000 THEN 'Expensive'
	  WHEN price>= 10000 AND price<= 49000 THEN 'Moderate'
	  ELSE 'Affordable'
	END AS price_category
FROM products;


-- 2. CASE WITH QUANTITY


SELECT product_name,  quantity,
   CASE 
      WHEN quantity >=25 THEN 'In Stock'
	  WHEN quantity >=10 AND quantity <= 15 THEN 'Limited Stock'
	  ELSE 'Out of Stock'
	END AS quantity_category
FROM products;


--3. CASE WITH CATEGORY


SELECT product_name,  category,
   CASE 
      WHEN category LIKE 'Electronics' THEN 'Electronic Item'
	  WHEN category LIKE 'Accessories' THEN 'Accessories Item'
	  WHEN category LIKE 'Furniture' THEN 'Furniture Item'
	  ELSE 'Other Item'
	END AS quantity_category
FROM products;