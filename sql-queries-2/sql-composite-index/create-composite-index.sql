-- Create composite index after creating table
CREATE INDEX idx1 ON Empl(dept,age,lname);


-- Create composite index with the table
CREATE TABLE Empl(
	empid  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        lname VARCHAR(35),
        fname VARCHAR(35),
        dept INT,
        age INT,
        since INT,
        INDEX idx1(dept,age,lname)
);
