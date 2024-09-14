WITH RankedExams AS (
    SELECT 
        e.student_id,
        c.name AS course_name,
        e.grade,
        e.exam_date,
        ROW_NUMBER() OVER (PARTITION BY e.student_id ORDER BY e.exam_date DESC) AS rn
    FROM Exam e
    JOIN Course c ON e.course_id = c.id
)
SELECT 
    s.*,
    re.course_name AS last_exam_course,
    re.grade AS last_exam_grade,
    re.exam_date AS last_exam_date
FROM Student s
LEFT JOIN RankedExams re ON s.id = re.student_id AND re.rn = 1;