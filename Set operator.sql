CREATE TABLE students_2024(
    student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2024(student_id, student_name, course) VALUES
 (1, 'Aarav Sharma', 'Computer Science'),
 (2, 'Ruchi Sen', 'Chemical Engineering'),
 (3, 'Ishita Verma', 'Electronics'),
 (4, 'Rohit Shetty', 'Mechenical Engineering'),
 (5, 'Kabir Patel', 'Computer Science'),
 (6, 'Rahul Gupta', 'Civil Engineering');

 SELECT * FROM students_2024;


 CREATE TABLE students_2025(
    student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2025(student_id, student_name, course) VALUES
 (3, 'Ishita Verma', 'Electronics'),
 (4, 'Rohit Shetty', 'Mechenical Engineering'),
 (7, 'Isha Sukla', ' Bcom'),
 (8, 'Ritu Sen', 'Bsc');

 SELECT * FROM students_2025;

 -- UNION OPERATOR (COMBINE RESULTS ,REMOVE DUPLICATE)

 SELECT student_name, course FROM students_2024 
 UNION
 SELECT student_name, course FROM students_2025;

 -- UNION ALL OPERATOR (COMBINE RESULTS ,KEEP DUPLICATE)
 SELECT student_name, course FROM students_2024 
 UNION ALL
 SELECT student_name, course FROM students_2025;


 -- INTERSECT OPERATOR  (RETURN COMMON RESULT IN BOTH TABLE)
 SELECT student_name, course FROM students_2024 
 INTERSECT
 SELECT student_name, course FROM students_2025;

 -- EXCEPT OPERATOR  ( RETURN FIRST TABLE BUT NOT IN SECIND TABLE)  
 SELECT student_name, course FROM students_2024 
 EXCEPT
 SELECT student_name, course FROM students_2025;