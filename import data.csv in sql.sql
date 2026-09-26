CREATE TABLE employee6(
  employee_id VARCHAR(10) UNIQUE,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email VARCHAR(50),
  department varchar(50),
  salary NUMERIC(10,2),
  joining_date DATE,
  age INT 
);

SELECT * FROM employee6;

COPY
employee6 (employee_id,	first_name,	last_name,	email,	department,	salary,	joining_date, age)
FROM '/Users/maccoos/Downloads/ST\ -\ SQL\ ALL\ PRACTICE\ FILES-2/All\ Excel\ Practice\ Files/employee_data.csv' 
DELIMITER','
CSV HEADER;

