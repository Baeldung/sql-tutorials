CREATE TABLE Mentorship ( 
  mentor_id INT, 
  student_id INT, 
  start_date DATE, 
  end_date DATE, 
  status VARCHAR(50), 
  PRIMARY KEY (mentor_id, student_id));
