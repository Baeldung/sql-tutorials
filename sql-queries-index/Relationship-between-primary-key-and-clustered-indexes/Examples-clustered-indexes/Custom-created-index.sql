CREATE TABLE Library ( 
  book_id INT PRIMARY KEY, 
  book_title VARCHAR(255), 
  author VARCHAR(255), 
  isbn VARCHAR(20), 
  available_copies INT, 
  borrowed_date DATE); 
CREATE CLUSTERED INDEX IX_borrowed_date ON Library (borrowed_date);
