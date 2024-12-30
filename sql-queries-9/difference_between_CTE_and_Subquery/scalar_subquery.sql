SELECT name, gpa,
       (SELECT AVG(gpa) FROM student) AS avg_gpa
FROM student
WHERE gpa > (SELECT AVG(gpa) FROM student);
