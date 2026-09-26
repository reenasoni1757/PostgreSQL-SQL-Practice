SELECT * FROM products;

ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);

UPDATE products 
SET discount_price = NULL
WHERE product_name IN ('Laptop', 'Keyboard', 'Headphones') 


UPDATE products 
SET discount_price =price*0.9
WHERE product_name NOT IN ('Laptop', 'Keyboard', 'Headphones') 

SELECT product_name, price, discount_price
FROM  products;


 -- COALESCE FUNCTION USED FOR HANDLING NULL VALUES

 
SELECT product_name, 
    COALESCE(discount_price, price) AS final_price
FROM  products;
