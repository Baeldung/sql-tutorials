WITH RankedExams AS (
    SELECT 
        e.student_id,
        c.name AS course_name,
        e.exam_date,
        ROW_NUMBER() OVER (PARTITION BY e.student_id ORDER BY e.exam_date DESC) AS rn,
        COUNT(*) OVER (PARTITION BY e.student_id) AS total_exams
    FROM Exam e
    JOIN Course c ON e.course_id = c.id
)
SELECT 
    s.name,
    re.exam_date AS last_exam_date,
    re.course_name AS last_exam_course,
    re.total_exams
FROM Student s
LEFT JOIN RankedExams re ON s.id = re.student_id AND re.rn = 1;