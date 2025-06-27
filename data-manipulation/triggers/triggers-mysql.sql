CREATE TABLE IF NOT EXISTS Student_Audit_Log (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  action VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS after_student_insert;
DROP TRIGGER IF EXISTS after_student_update;
DROP TRIGGER IF EXISTS after_student_delete;

DELIMITER //
CREATE TRIGGER after_student_insert
    AFTER INSERT ON Student
    FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit_Log(student_id, action)
    VALUES (NEW.id, 'INSERT');
END//

CREATE TRIGGER after_student_update
    AFTER UPDATE ON Student
    FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit_Log(student_id, action)
    VALUES (NEW.id, 'UPDATE');
END//

CREATE TRIGGER after_student_delete
    AFTER DELETE ON Student
    FOR EACH ROW
BEGIN
    INSERT INTO Student_Audit_Log(student_id, action)
    VALUES (OLD.id, 'DELETE');
END//
DELIMITER ;