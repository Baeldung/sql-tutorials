SELECT student_id, course_id,
CASE
WHEN grade = 'A+' THEN 'SUPER'
WHEN grade = 'A' THEN 'EXCELLENT'
WHEN grade = 'B+' THEN 'GOOD'
WHEN grade = 'B' THEN 'SATISFACTORY'
WHEN grade = 'C' THEN 'NEEDS IMPROVEMENT'
ELSE 'POOR'
END AS grade_remarks
FROM EXAM;