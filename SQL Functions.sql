CREATE TABLE products(
   product_id SERIAL PRIMARY KEY,
   product_name VARCHAR(100),
   category VARCHAR(50),
   price NUMERIC(10, 2),
   quantity INT,
   added_date DATE,
   discount_rate NUMERIC(5, 2)
   
);

SELECT * FROM products;

INSERT INTO products(product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 55000, 10, '2026-01-15', 10),
('Smartphone', 'Electronics', 25000, 25, '2026-02-10', 15),
('Headphones', 'Accessories', 2500, 40, '2026-02-18', 5),
('Keyboard', 'Accessories', 1800, 30, '2026-03-05', 8),
('Office Chair', 'Furniture', 8500, 12, '2026-03-12', 12),
('Study Table', 'Furniture', 6500, 15, '2026-03-20', 10),
('Water Bottle', 'Home', 700, 50, '2026-04-02', 5),
('Backpack', 'Bags', 2200, 35, '2026-04-10', 7),
('Smart Watch', 'Electronics', 4500, 20, '2026-04-18', 12),
('Running Shoes', 'Footwear', 3200, 18, '2026-05-01', 15);

-- total quantity available of all product 

SELECT SUM(quantity) AS total_quantity 
FROM products;

SELECT SUM(quantity) AS quantity_of_elc
FROM products
WHERE category = 'Electronics' AND price>20000;

-- total product number 

SELECT COUNT(products) AS total_product
FROM products;

SELECT COUNT(*) AS total_product     
FROM products;

SELECT COUNT(*) AS total_product     
FROM products
WHERE product_name LIKE '%phone';

-- average price of products 

SELECT AVG(price) AS average_price    
FROM products;

SELECT AVG(price) AS average_price    
FROM products
WHERE category = 'Accessories'; 

-- maximum and minimum price

SELECT MAX(price) AS maximum_price,
       MIN(price) AS minimum_price
FROM products;



