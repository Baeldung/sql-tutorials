SELECT
  CASE
    WHEN enrollment_date BETWEEN '2020-01-01' AND '2020-12-31' THEN '2020'
    WHEN enrollment_date BETWEEN '2021-01-01' AND '2021-12-31' THEN '2021'
    WHEN enrollment_date BETWEEN '2022-01-01' AND '2022-12-31' THEN '2022'
  END AS enrollment_year,
  COUNT(*) AS student_count
FROM Student
GROUP BY enrollment_year;