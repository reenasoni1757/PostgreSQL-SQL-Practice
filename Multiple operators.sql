 -- ARTHMETIC OPERATOR
 
SELECT * FROM employee7;

SELECT first_name, salary, (salary*0.10) AS BONUS FROM employee7;

SELECT first_name, last_name, salary,
       (salary*12) AS annual_salary,
	   (salary*0.05) AS increment_salary,
	   (salary * salary*0.05) AS new_salary
FROM employee7;




-- COMPARISON OPERATOR (=, <, >, !=,<=, >=)

SELECT * FROM employee7
WHERE age=30;

SELECT first_name, age FROM employee7
WHERE AGE!=30;

SELECT first_name, salary FROM employee7 
WHERE salary>50000;

SELECT first_name, salary FROM employee7 
WHERE salary<=50000;


--LOGICAL OPERATOR (AND, OR, NOT)

SELECT * FROM employee7
WHERE age>=40 AND salary >=60000;


SELECT * FROM employee7
WHERE age>=50 OR salary >=80000;


SELECT * FROM employee7
WHERE NOT (department = 'IT');


-- BETWEEN, LIKE AND IN OPERATOR


SELECT first_name, last_name, salary FROM employee7
where salary BETWEEN 40000 AND 60000;

SELECT first_name, last_name, email FROM employee7
WHERE email LIKE '%@gmail.com';

SELECT first_name FROM employee7
WHERE first_name LIKE '%a';

SELECT first_name FROM employee7
WHERE first_name LIKE '%j%';

SELECT first_name, last_name, department FROM employee7
WHERE department IN ('Finance', 'Marketing','IT');


-- OTHER OPERATOR (IS NULL, ORDER BY, LIMIT, DISTINCT)

SELECT first_name, last_name, email FROM employee7
WHERE email IS NULL;

SELECT first_name, last_name, salary FROM employee7
ORDER BY salary DESC;

SELECT first_name, last_name, salary FROM employee7
LIMIT 5;

SELECT first_name, last_name, salary FROM employee7
ORDER BY salary ASC
LIMIT 5;

SELECT DISTINCT department FROM employee7;

SELECT COUNT (DISTINCT department) FROM employee7;

