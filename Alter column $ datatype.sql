DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
     user_id SERIAL PRIMARY KEY,
	 username VARCHAR(50) NOT NULL,
	 email VARCHAR(100) NOT NULL,
	 age INT,
	 city VARCHAR(50)
);

SELECT * FROM users;

INSERT INTO users (username, email, age, city) VALUES
('Rajesh', 'rajesh01@gmail.com', 25, 'Satna'),
('Ajju', 'ajju99@gmail.com', 30, 'Panna'),
('Harsh', 'harsh55@yahoo.com', 22, 'Nagod'),
('Sanjay', 'sanjay12@gmail.com', 45, 'Chennai'),
('Manshi', 'manshi66@yahoo.com', 40, 'Mumbai'),
('Kumkum', 'kumkum77@gmail.com', 56, 'Bhopal');

SELECT username, city FROM users;

UPDATE users 
SET age = 26
WHERE username = 'Ajju';

SELECT * FROM users ORDER BY user_id;

SELECT * FROM users ORDER BY username;

SELECT * FROM users ORDER BY age;

UPDATE users 
SET city = 'Indor'
WHERE age>=45;

UPDATE users
SET city = 'kolkata' , age = 20
Where username = 'Harsh';

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';

-- to renamethe username column to full_name

ALTER TABLE users
RENAME COLUMN username to full_name;

-- to chamge age column interger to smallint

ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

-- to add constrain not null to city column

ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

-- to adding cjecj constrain to age column

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

INSERT INTO users (full_name, email, age, city) VALUES
('Raju', 'raju81@gmail.com', 20, 'Patna');

-- change table name 

ALTER TABLE users
RENAME TO customers;

SELECT * FROM customers ORDER BY user_id;
