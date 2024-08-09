SELECT *
FROM exam
WHERE CHOOSE(
CASE
WHEN grade = 'A+' AND student_id = 1001 THEN 1
WHEN grade = 'A' AND student_id = 2009 THEN 1
ELSE 0
END,
1, 0, 0, 0
) = 1;