SET @student_ids = '1001,1003,1007';

PREPARE find_students_by_ids FROM 
"SELECT * FROM Student WHERE FIND_IN_SET(id, ?)";

EXECUTE find_students_by_ids USING @student_ids;
