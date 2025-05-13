CREATE TABLE magazine 
(publisher_id INT NOT NULL, 
magazine_name varchar(50), 
q1sales INT NOT NULL,
q2sales INT NOT NULL);

INSERT INTO magazine
(publisher_id,magazine_name,q1sales,q2sales)
VALUES(1,'magazine_1',60,30),
(1,'magazine_2',100,25),
(2,'magazine_3',50,25),
(2,'magazine_4',75,20),
(3,'magazine_5',10,50),
(3,'magazine_6',25,25);

SELECT * FROM magazine;
