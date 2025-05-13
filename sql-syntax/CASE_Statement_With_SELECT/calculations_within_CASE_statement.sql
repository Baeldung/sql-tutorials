SELECT name,
  CASE
    WHEN gpa >= 3.5 THEN 0.1 * 1000
    WHEN gpa >= 3.0 THEN 0.05 * 1000
    ELSE 0
  END AS bonus
FROM Student;