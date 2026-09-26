SELECT * FROM employee;


INSERT INTO employee(name, position, department, hire_date, salary)
VALUES ('Reena Soni', 'Data Analyst', 'Data Science', '2022-05-15',65000.00),
       ('Khushi Jaishwal', 'Software Engineer', 'IT', '2021-04-20',75000.00),
       ('Tanushree Gupta', 'HR Manager', 'Human Resources', '2023-06-25',85000.00),
       ('Isha Sukla', 'Markting Specilist', 'Markting', '2024-09-28',95000.00),
       ('Krati Gupta', 'Sales Executive', 'Sales', '2025-11-03',98000.00);


ALTER TABLE employee
RENAME COLUMN hire_dddate to hire_date;

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;