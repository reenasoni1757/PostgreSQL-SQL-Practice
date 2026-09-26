-- TABLE 1

CREATE TABLE Employee11(
     employee_id SERIAL PRIMARY KEY, 
	 first_name VARCHAR(100),
	 last_name VARCHAR(100),
	 department_id INT
);

INSERT INTO Employee11(first_name, last_name, department_id) VALUES
('Rahul','Shrama',101),
('Priya','Mehta',102),
('Ankit','Verma',103),
('Simaran','Kaur',NULL),
('Aman','Singh',101);

SELECT *  FROM Employee11;


-- TABLE 2

CREATE TABLE Department(
     department_id INT PRIMARY KEY,
	 department_name VARCHAR(100)
);

INSERT INTO Department ( department_id, department_name) VALUES
(101, 'Sales'),
(102, 'Markting'),
(103, 'IT'),
(104, 'HR');

SELECT *  FROM Department;


-- INNER JOIN


SELECT e.employee_id, e.first_name, e.last_name, 
       d.department_id, d.department_name
FROM Employee11 e
INNER JOIN
Department d
ON e.department_id = d.department_id;



-- RIGHT JOIN 

SELECT e.employee_id, e.first_name, e.last_name, 
       d.department_id, d.department_name
FROM Employee11 e
RIGHT JOIN
Department d
ON e.department_id = d.department_id;


-- LEFT JOIN


SELECT e.employee_id, e.first_name, e.last_name, 
       d.department_id, d.department_name
FROM Employee11 e
LEFT JOIN
Department d
ON e.department_id = d.department_id;


-- FULL OUTER JOIN

SELECT e.employee_id, e.first_name, e.last_name, 
       d.department_id, d.department_name
FROM Employee11 e
FULL OUTER JOIN
Department d
ON e.department_id = d.department_id;


-- CROSS JOIN 

SELECT e.first_name, e.last_name, d.department_name
FROM employee11 e
CROSS JOIN 
Department d;


-- SELF JOIN 


SELECT e1.first_name AS employee_name1,
       e2.first_name AS employee_name2
	   
FROM employee11 e1 JOIN employee11 e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id
JOIN
department d
on
e1.department_id = d.department_id;