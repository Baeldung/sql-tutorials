SELECT id, name, LEFT(RIGHT(name, LENGTH(name) - 1), LENGTH(name) - 2) as new_name FROM Course;

SELECT id, name, RIGHT(LEFT(name, LENGTH(name) - 1), LENGTH(name) - 2) as new_name FROM Course;
