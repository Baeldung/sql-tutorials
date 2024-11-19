SELECT s.name, exam_counts.course_name, exam_counts.exam_count
FROM Student s
JOIN (
    SELECT e.student_id, c.name AS course_name, COUNT(*) AS exam_count
    FROM Exam e
    JOIN Course c ON e.course_id = c.id
    GROUP BY e.student_id, c.name
    HAVING COUNT(*) = (
        SELECT MAX(exam_count)
        FROM (
            SELECT student_id, course_id, COUNT(*) AS exam_count
            FROM Exam
            GROUP BY student_id, course_id
        ) max_counts
        WHERE max_counts.student_id = e.student_id
    )
) exam_counts ON s.id = exam_counts.student_id;
