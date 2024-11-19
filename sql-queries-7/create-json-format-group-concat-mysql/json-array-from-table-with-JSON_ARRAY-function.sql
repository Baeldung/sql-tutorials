SELECT 
prerequisite_id AS Prerequisite, 
JSON_ARRAY(
    GROUP_CONCAT(course_id)) AS Courses 
FROM prerequisite 
GROUP BY prerequisite_id;
