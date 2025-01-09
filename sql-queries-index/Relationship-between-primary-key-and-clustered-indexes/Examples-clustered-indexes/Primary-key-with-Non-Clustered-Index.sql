CREATE TABLE Alumni ( 
  alumni_id INT PRIMARY KEY NONCLUSTERED, 
  student_id INT, 
  employment_status VARCHAR(50), 
  employer VARCHAR(255), 
  position VARCHAR(100), 
  graduation_year INT);
