CREATE DATABASE faculty;

drop database faculty;

 USE faculty;
 
  CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
    );

INSERT INTO dept
(id,name)
VALUES
(101,"ECE"),
(102,"AEIE"),
(103,"EEE");

SELECT*FROM dept;


CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT ,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

SELECT *FROM teacher;

DROP TABLE teacher;

INSERT INTO teacher
(id,name,dept_id)
VALUES
(1,"ADAM",101),
(2,"ROBERT",102),
(3,"TAYLOR",103);

UPDATE dept
SET id=105
WHERE id=102;

