SELECT SUM(credits) AS distinct_credits FROM (SELECT textbook, credits FROM Course UNION SELECT textbook, credits FROM Course) AS combined;
SELECT textbook, credits FROM Course UNION SELECT textbook, credits FROM Course;
