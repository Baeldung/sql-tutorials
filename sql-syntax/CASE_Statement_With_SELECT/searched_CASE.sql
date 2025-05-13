SELECT name,
  CASE
    WHEN gpa >= 3.5 THEN 'Honors'
    WHEN gpa >= 2.5 THEN 'Satisfactory'
    ELSE 'Needs Improvement'
  END AS performance
FROM Student;