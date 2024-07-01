-- Using NULLIFF
SELECT
    course.name AS course_name,
    SUM(CASE
        WHEN exam.grade = 'A+' THEN 95
        WHEN exam.grade = 'A' THEN 90
        WHEN exam.grade = 'B+' THEN 85
        WHEN exam.grade = 'B' THEN 80
        WHEN exam.grade = 'C+' THEN 75
        WHEN exam.grade = 'C' THEN 70
        WHEN exam.grade = 'D+' THEN 65
        WHEN exam.grade = 'D' THEN 60
        ELSE 0
    END) / NULLIF(COUNT(exam.id), 0) AS average_marks
FROM
    Course course
    LEFT JOIN Exam exam ON course.id = exam.course_id
GROUP BY
    course.name;

-- Using Case
SELECT
    course.name AS course_name,
    CASE
        WHEN COUNT(exam.id) = 0 THEN NULL
        ELSE SUM(CASE
            WHEN exam.grade = 'A+' THEN 95
            WHEN exam.grade = 'A' THEN 90
            WHEN exam.grade = 'B+' THEN 85
            WHEN exam.grade = 'B' THEN 80
            WHEN exam.grade = 'C+' THEN 75
            WHEN exam.grade = 'C' THEN 70
            WHEN exam.grade = 'D+' THEN 65
            WHEN exam.grade = 'D' THEN 60
            ELSE 0
        END) / COUNT(exam.id)
    END         AS average_marks
FROM
    Course course
    LEFT JOIN Exam exam ON course.id = exam.course_id
GROUP BY
    course.name;

-- Using Coalesce
SELECT
    course.name AS course_name,
    COALESCE(
        SUM(CASE
            WHEN exam.grade = 'A+' THEN 95
            WHEN exam.grade = 'A' THEN 90
            WHEN exam.grade = 'B+' THEN 85
            WHEN exam.grade = 'B' THEN 80
            WHEN exam.grade = 'C+' THEN 75
            WHEN exam.grade = 'C' THEN 70
            WHEN exam.grade = 'D+' THEN 65
            WHEN exam.grade = 'D' THEN 60
            ELSE 0
        END) / NULLIF(COUNT(exam.id), 0),
        0
    )           AS average_marks
FROM
    Course course
    LEFT JOIN Exam exam ON course.id = exam.course_id
GROUP BY
    course.name;