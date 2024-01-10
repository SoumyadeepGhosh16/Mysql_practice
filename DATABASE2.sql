CREATE DATABASE gradecard;

drop database gradecard;

 USE gradecard;
  
  CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
  
  INSERT INTO student
  (rollno,name,marks,grade,city)
  VALUES
  (101,"ANIL",78,"C","PUNE"),
  (102,"BHUMIKA",93,"A","MUMBAI"),
  (103,"CHETAN",85,"B","MUMBAI"),
  (104,"DHRUV",96,"A","DELHI"),
  (105,"EMNUEL",12,"F","DELHI"),
  (106,"FARAH",82,"B","DELHI");
  
   ALTER TABLE student
   ADD COLUMN age INT NOT NULL;
   
   ALTER TABLE student
   DROP COLUMN age;
   
   ALTER TABLE student 
   ADD COLUMN age INT NOT NULL DEFAULT 20;
   
   ALTER TABLE student
   MODIFY COLUMN age varchar(2);
   
   ALTER TABLE student
   CHANGE COLUMN name full_name VARCHAR(50);
   
   SELECT*FROM student 
   WHERE marks>(SELECT avg(marks) FROM student);
   
  
  SELECT*FROM student;
  
  SELECT rollno,name FROM student;  
  
  SELECT DISTINCT city FROM student;  
  
  SELECT*FROM student WHERE marks>80;
  
  SELECT*FROM student WHERE city="MUMBAI";
  
  SELECT*FROM student WHERE marks>80 AND city="DELHI";
  
  SELECT*FROM student WHERE marks>90 OR city="PUNE";
  
  SELECT*FROM student WHERE marks BETWEEN 80 AND 90 ;
  
  SELECT*FROM student WHERE city IN("PUNE","MUMBAI");
  
  SELECT*FROM student WHERE  city NOT IN ("PUNE","MUMBAI");
  
  SELECT*FROM student WHERE  marks>60 LIMIT 3;
  
  SELECT*FROM student 
  ORDER BY marks dESC;
  
  SELECT avg(marks) 
  FROM student;
  
  SELECT city, AVG(marks)
  FROM student
  GROUP BY city
  ORDER BY avg(marks) DESC;
  
  SET SQL_SAFE_UPDATES=0;
  
   DELETE FROM student
   where marks<30;
   
   
  
  
 