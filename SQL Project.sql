CREATE TABLE Books(
     Book_ID SERIAL PRIMARY KEY,
	 Title varchar(100),
	 Auther varchar(100),
	 Genre varchar(100),
	 Publish_Year INT,
	 Price NUMERIC(10,2),
	 Stock INT
);

CREATE TABLE Customers(
     Customer_ID SERIAL PRIMARY KEY,
	 Name VARCHAR(100),
	 Email VARCHAR(100),
	 Phone VARCHAR(15),
	 City VARCHAR(50),
	 Country VARCHAR(150)
	 
);

CREATE TABLE Orders(
     Order_ID SERIAL PRIMARY KEY,
	 Customer_ID INT REFERENCES Customers(Customer_ID),
	 Book_ID INT REFERENCES Books(Book_ID),
	 Order_Date DATE,
	 Quantity INT,
	 Total_Amount NUMERIC(10,2)
);



SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


-- Retrive all books in the "Fiction" genere

SELECT * FROM Books
WHERE Genre = 'Fiction';


-- Finds books publish after the year 1950

SELECT * FROM Books
WHERE publish_year >1950 ;


-- List all  the cutomers  from Canadas

SELECT * FROM Customers
WHERE country = 'Canada' ;


-- Show orders placed in November 2023

SELECT * FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';


-- Retrive the total stocks of books available

SELECT SUM ( stock ) AS total_stocks
FROM Books;


-- Find the detail of the mos expensive books

SELECT * FROM Books 
ORDER BY price DESC 
LIMIT 1;


-- Show all customers who ordered more than 1 quantity of a book

SELECT * FROM Orders
WHERE quantity>1 ;


-- Retrive all orders where the total amount exceed $20

SELECT * FROM Orders
WHERE total_amount>20 ;


-- List all the genre available in the books table

SELECT DISTINCT genre 
FROM Books;


-- Find the book with the lowest stock

SELECT * FROM Books 
ORDER BY stock  ASC 
LIMIT 1;


-- Calculate the total revenue generatedfrom all orders

SELECT SUM (total_amount) AS revenue
FROM Orders;


--ADVANCE LEVEL 

-- Retrive the total number of Books sold for each genre

SELECT b.genre, SUM(o.quantity) AS total_books_sold
FROM Orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.Genre;


-- Find the average price of books in the 'fantasy' genre

SELECT AVG(price) AS average_price
FROM Books
WHERE Genre = 'Fantasy';


-- List customers who have placed at least 2 orders

SELECT o.customer_id, c.name, COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(o.order_id) >= 2;


-- Find the most frequently ordered book

SELECT o.Book_id, b.title,COUNT(o.order_id) AS ORDER_COUNT
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY o.Book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;


-- Show the most top 3 expensive books of 'Fantasy' genre

SELECT * FROM books 
WHERE genre = 'Fantasy' 
ORDER BY Price DESC LIMIT 3;


-- Retrive the total quantity of books sold by each author

SELECT b.auther, SUM(o.quantity) AS Total_books_sold
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.auther;


-- List the cities where customers who spent over $30 are located

SELECT DISTINCT c.city, total_amount
FROM orders o
JOIN Customers c oN o.customer_id=c.customer_id
WHERE o.total_amount >30;


-- Find the customer whoes spend the most on orders

SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC LIMIT 1;


-- Calculate the stock remaining after fulfilling all orders

SELECT b.book_id,  b.title, b.stock, COALESCE(SUM(o.quantity),0) AS order_quantity,
       b.stock- COALESCE(SUM(o.quantity),0) AS remaining_quantity
FROM books b
LEFT JOIN orders o ON b.Book_id =o.book_id
GROUP BY b.book_id ORDER BY b.book_id;
