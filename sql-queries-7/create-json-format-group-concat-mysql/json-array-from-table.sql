SELECT 
prerequisite_id AS Prerequisite,
CONCAT('[',GROUP_CONCAT(course_id),']') AS Courses 
FROM prerequisite 
GROUP BY prerequisite_id;
