CREATE TABLE IF NOT EXISTS Student_Audit_Log (
  id SERIAL PRIMARY KEY,
  student_id INT,
  action VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION log_student_changes()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO Student_Audit_Log(student_id, action)
        VALUES (NEW.id, 'INSERT');
        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO Student_Audit_Log(student_id, action)
        VALUES (NEW.id, 'UPDATE');
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO Student_Audit_Log(student_id, action)
        VALUES (OLD.id, 'DELETE');
    RETURN OLD;
END IF;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER student_audit_trigger
    AFTER INSERT OR UPDATE OR DELETE ON Student
    FOR EACH ROW EXECUTE FUNCTION log_student_changes();

CREATE OR REPLACE FUNCTION log_bulk_deletion_student()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO Student_Audit_Log (action)
VALUES ('BULK_DELETION');
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER log_bulk_deletion_student_trigger
    AFTER DELETE ON Student
    FOR EACH STATEMENT EXECUTE FUNCTION log_bulk_deletion_student();

CREATE OR REPLACE VIEW Department_View AS
SELECT * FROM Department;

CREATE OR REPLACE FUNCTION prevent_department_delete()
RETURNS TRIGGER AS $$
BEGIN
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_department_deletion_trigger
    INSTEAD OF DELETE ON Department_View
    FOR EACH ROW
    EXECUTE FUNCTION prevent_department_delete();