CREATE TABLE employee3(
    employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * FROM employee3;


INSERT INTO employee3(employee_id,name, position, department, hire_date, salary)
VALUES (101, 'Reena Soni', 'Data Analyst', 'Data Science', '2022-05-15',65000.00),
       (102, 'Khushi Jaishwal', 'Software Engineer', 'IT', '2021-04-20',75000.00),
       (103, 'Tanushree Gupta', 'HR Manager', 'Human Resources', '2023-06-25',85000.00),
       (104, 'Isha Sukla', 'Markting Specilist', 'Markting', '2024-09-28',95000.00),
       (105, 'Krati Gupta', 'Sales Executive', 'Sales', '2025-11-03',98000.00);


DELETE FROM employee3
WHERE department='Sales';

ALTER TABLE employee3
DROP COLUMN salary;

