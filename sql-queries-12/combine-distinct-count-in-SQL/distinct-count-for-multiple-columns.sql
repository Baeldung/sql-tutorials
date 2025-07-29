-- Only for MySQL and SQL Server --
SELECT COUNT(DISTINCT textbook, credits) AS unique_count FROM Course;

-- Only for PostgreSQL --
SELECT COUNT(DISTINCT(textbook, credits)) AS unique_count FROM Course;

-- Works for MySQL, PostgreSQL, and SQL Server --
-- Using Subquery --
SELECT COUNT(*) AS unique_count FROM (SELECT DISTINCT textbook, credits FROM Course) temp_course;

-- Using CONCAT function --
SELECT COUNT(DISTINCT CONCAT(textbook, '--', credits)) AS unique_count FROM Course;
SELECT COUNT(DISTINCT CONCAT(textbook, '--', credits)) AS unique_count FROM Course WHERE department_id = 4;
