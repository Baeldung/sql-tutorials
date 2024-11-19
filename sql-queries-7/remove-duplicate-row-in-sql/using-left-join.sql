DELETE r1 FROM Registration r1
INNER JOIN Registration r2
WHERE
    r1.semester = r2.semester AND
    r1.year = r2.year AND
    r1.course_id = r2.course_id AND
    r1.student_id = r2.student_id AND
    r1.id > r2.id;