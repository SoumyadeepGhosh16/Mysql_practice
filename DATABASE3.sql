CREATE DATABASE customer;

USE customer;

CREATE TABLE payment(
  id INT PRIMARY KEY,
  customer VARCHAR(50),
  mode VARCHAR(50),
  city VARCHAR(20)
  );
  
  INSERT INTO payment
  (id,customer,mode,city)
  VALUES
  (101,"Olivia Barrett","Netbanking","Portland"),
  (102,"Ethan Sinclair","Credit Card","Miami"),
  (103,"Maya Hernandez","Credit Card","Seattle"),
  (104,"Liam Donovan","Netbanking","Denvers"),
  (105,"Sophia Nguyen","Credit Card","New Orleans"),
  (106,"Caleb Foster","Debit Card","Minneapolis"),
  (107,"Ava Patel","Debit Card","Pheonix"),
  (108,"Lucas Carter","Netbanking","Boston"),
  (109,"Isabella Martinez","Netbanking","Nashville"),
  (110,"Jackson Brooks","Credit Card","Boston");
  
  SELECT*FROM payment;
  
  SELECT mode,count(id)
  FROM payment
  GROUP BY mode
  HAVING count(mode)>2;
  
  UPDATE payment
  set mode="Netbanking by SBI"
  WHERE mode="Netbanking";
  
  SET SQL_SAFE_UPDATES=0;
  
  SET SQL_SAFE_UPDATES=1;
  
  