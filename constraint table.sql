CREATE TABLE users (
    user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK (AGE >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO USERS (user_id, name, email, age)
values (1, 'Johan Doe', 'johan.doe@gamil.com',25);


INSERT INTO USERS (user_id, name, email, age)
values (2, 'Johan Doe', 'johan2.doe@gamil.com',30);

SELECT * FROM users;