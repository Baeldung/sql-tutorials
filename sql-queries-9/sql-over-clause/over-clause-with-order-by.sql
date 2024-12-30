SELECT id, semester, grade,
MAX(grade) OVER (PARTITION BY student_id ORDER BY grade) AS course_highest,
MIN(grade) OVER (PARTITION BY student_id ORDER BY grade) AS course_lowest
FROM Exam
ORDER BY course_id;