CREATE TABLE workers(
  worker_id VARCHAR(10) UNIQUE,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  department varchar(50),
  salary DECIMAL (10,2) CHECK (salary >0),
  joining_date DATE NOT NULL,
  age INT CHECK (age>=18)
);

SELECT * FROM workers;

INSERT INTO workers(worker_id, first_name, last_name, department, salary, joining_date, age) VALUES
('A101', 'Reena', 'Soni', 'CSE', 50000.00, '2026-01-11', 21);

INSERT INTO workers(worker_id, first_name, last_name, department, salary, joining_date, age) VALUES
('A102', 'Isha', 'Sukla', 'MBA', 60000.00, '2022-02-21', 22),
('A103', 'Tanu', 'Gupta', 'IT', 20000.00, '2028-03-25', 27),
('A104', 'Krati', 'Gupta', 'BCA', 40000.00, '2030-04-14', 35),
('A105', 'Harsh', 'Chaturvedi', 'HR', 80000.00, '2004-10-25', 43),
('A106', 'Kuldeep', 'Soni', 'Finance', 57000.00, '2020-12-30', 30),
('A107', 'Khushi', 'Jaishwal', 'BCOM', 30000.00, '2024-08-26', 33),
('A108', 'Nikita', 'Vishvkarma', 'BED', 29000.00, '2023-07-12', 29),
('A109', 'Muskan', 'Sen', 'Agriculture', 71000.00, '2021-05-11', 39),
('A110', 'Anmaika', 'Mishra', 'BSC', 43000.00, '2022-09-23', 25);

SELECT first_name, department FROM workers ;

UPDATE workers
SET salary = salary+(salary*10/100)
WHERE department = 'IT';

SELECT * FROM workers ORDER BY worker_id;

DELETE FROM workers
WHERE age>=34;

ALTER TABLE workers 
ADD COLUMN email VARCHAR(50);

ALTER TABLE workers
RENAME COLUMN department to dept_name;

SELECT first_name, last_name FROM workers
WHERE joining_date > '2021-01-12';

ALTER TABLE workers
ALTER COLUMN salary TYPE INTEGER; 

SELECT first_name,last_name,age,salary FROM workers ORDER BY salary DESC;

INSERT INTO workers(worker_id, first_name, last_name, dept_name, salary, joining_date, age) VALUES
('A011', 'Raj', 'Singh', 'Markting', 90000.00, '2025-01-19', 40);

UPDATE workers
SET age = age+1;

SELECT * FROM workers ORDER BY worker_id ASC;

UPDATE workers 
SET email = LOWER(first_name|| '@gmail.com')