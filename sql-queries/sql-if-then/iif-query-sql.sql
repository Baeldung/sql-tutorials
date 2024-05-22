SELECT student_id, course_id,
IIF(grade = 'A+', 'SUPER',
IIF(grade = 'A', 'EXCELLENT',
IIF(grade = 'B+', 'GOOD',
IIF(grade = 'B', 'SATISFACTORY',
IIF(grade = 'C', 'NEEDS IMPROVEMENT', 'POOR'))))
) AS grade_remarks
FROM EXAM;