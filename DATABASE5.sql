CREATE DATABASE register;

USE register;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50)
    );
    
    INSERT INTO student
    (id,name)
    VALUES
    (101,"JAMIE"),
    (102,"ROBBY"),
    (103,"JASON");
    
SELECT*FROM student;
    
CREATE TABLE course(
    id INT PRIMARY KEY,
    course VARCHAR(50)
    );
    
    INSERT INTO course
    (id,course)
    VALUES
    (101,"ENGLISH"),
    (102,"MATHS"),
    (103,"GEOGRAPHY");
    
SELECT*FROM course;
    
    SELECT*
    FROM student
    INNER JOIN course
    ON student.id=course.id;
    
INSERT INTO course
(id,course)
VALUES
(107,"BENGALI");

INSERT INTO student
(id,name)
VALUES
(109,"STEVEN");

    
    SELECT*
    FROM student
    LEFT JOIN course
    ON student.id=course.id;
    
    SELECT*
    FROM student
    RIGHT JOIN course
    ON student.id=course.id; 
    
	SELECT*
    FROM student
    LEFT JOIN course
    ON student.id=course.id
    UNION
	SELECT*
    FROM student
    RIGHT JOIN course
    ON student.id=course.id;
    
    SELECT*
    FROM student
    LEFT JOIN course
    ON student.id=course.id
    WHERE course.id is NULL;
    
	SELECT*
    FROM student
    RIGHT JOIN course
    ON student.id=course.id
    WHERE student.id is NULL;
    
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT);

INSERT INTO employee(id,name,manager_id)
VALUES
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);

SELECT*
FROM employee as a
JOIN employee as b 
ON a.id=b.manager_id;










	
    