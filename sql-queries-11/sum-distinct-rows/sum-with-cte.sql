WITH unique_textbooks AS (SELECT DISTINCT textbook, credits FROM Course) SELECT SUM(credits) FROM unique_textbooks;
