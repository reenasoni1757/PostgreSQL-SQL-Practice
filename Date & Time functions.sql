SELECT * FROM products;

-- now() current date and time 

SELECT NOW() AS CURRENT_DATETIME;


-- current_date()  get current date

SELECT CURRENT_DATE AS today_date;

SELECT (CURRENT_DATE - added_date) AS days_difference
FROM products;

SELECT Added_date, Current_date, (CURRENT_DATE - added_date) AS days_difference
FROM products;

-- EXTRACT()  extract parts of the date

SELECT product_name,
   EXTRACT(YEAR FROM added_date) AS year_added,
   EXTRACT(MONTH FROM added_date) AS month_added,
   EXTRACT(DAY FROM added_date) AS day_added
FROM products;

-- AGE()  calculate age between dates   TODAYSDATE AND _ADDED DATE

SELECT product_name,
   AGE(CURRENT_DATE, added_date) AS age_since_added
FROM products;

-- TO_CHAR()   formate of date as string

SELECT product_name,
    TO_CHAR(added_date, 'dd-Mon-YYYY') AS formated_date
FROM products;

-- DATE_PART() get specfic date

SELECT product_name, added_date,
    DATE_PART('dow', added_date) AS specific_date
FROM products;

-- current time

SELECT CURRENT_TIME AS current_time1;

-- TO_DATE() convert string to date

SELECT TO_DATE('22-10-2026', 'DD-MM-YYYY') AS Convrted_date;

