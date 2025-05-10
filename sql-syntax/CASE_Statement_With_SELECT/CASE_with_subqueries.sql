SELECT s.name, s.enrollment_date,
  CASE
    WHEN s.gpa >= (
      SELECT AVG(gpa)
      FROM Student
      WHERE YEAR(enrollment_date) = YEAR(s.enrollment_date)
    ) THEN 'Above Average'
    ELSE 'Below Average'
  END AS gpa_rank
FROM Student s;
