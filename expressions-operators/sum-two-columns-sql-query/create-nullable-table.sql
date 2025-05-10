CREATE TABLE magazine_nullable 
(publisher_id INT NOT NULL, 
magazine_name varchar(50), 
q1sales INT,
q2sales INT);

INSERT INTO magazine_nullable
(publisher_id,magazine_name,q1sales,q2sales)
VALUES(1,'magazine_1',NULL,30),
(1,'magazine_2',100,NULL),
(2,'magazine_3',50,NULL),
(2,'magazine_4',NULL,20),
(3,'magazine_5',NULL,50),
(3,'magazine_6',NULL,25);
