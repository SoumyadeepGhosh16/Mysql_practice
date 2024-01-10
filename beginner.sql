create database college;
create database if not exists college;
use college;

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT NOT NULL
);

INSERT INTO student VALUES(1,"SOUMYADEEP",21);
INSERT INTO student VALUES(2,"SOUMEN",20);

INSERT INTO student 
(id,name,age)
VALUES
(3,"RAJESH",21),
(4,"SUDIPTA",20);

SELECT*FROM student;



