CREATE TABLE employee7(
  employee_id VARCHAR(10) UNIQUE,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email VARCHAR(50),
  department varchar(50),
  salary NUMERIC(10,2),
  joining_date DATE,
  age INT 
);

SELECT * FROM employee7;