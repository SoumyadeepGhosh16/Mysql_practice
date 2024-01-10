CREATE DATABASE xyz;

USE xyz;

CREATE TABLE company(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   salary int NOT NULL
   );

INSERT INTO company
(id,name,salary)
VALUES
(1,"ADAM",25000),
(2,"BOB",30000),
(3,"CASEY",40000);

SELECT*FROM company;
