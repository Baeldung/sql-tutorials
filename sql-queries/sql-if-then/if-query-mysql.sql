SELECT student_id, course_id,
IF(grade = 'A+', 'SUPER',
IF(grade = 'A', 'EXCELLENT',
IF(grade = 'B+', 'GOOD',
IF(grade = 'B', 'SATISFACTORY',
IF(grade = 'C', 'NEEDS IMPROVEMENT', 'POOR'))))
) AS grade_remarks
FROM EXAM;