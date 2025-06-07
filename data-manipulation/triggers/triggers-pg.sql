CREATE TABLE IF NOT EXISTS student_audit_log (
  id SERIAL PRIMARY KEY,
  student_id INT NOT NULL,
  action VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION log_student_changes()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO student_audit_log(student_id, action)
        VALUES (NEW.id, 'INSERT');
        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO student_audit_log(student_id, action)
        VALUES (NEW.id, 'UPDATE');
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO student_audit_log(student_id, action)
        VALUES (OLD.id, 'DELETE');
    RETURN OLD;
END IF;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Drop existing triggers if they exist
DROP TRIGGER IF EXISTS student_audit_trigger ON Student;

-- Create the trigger
CREATE TRIGGER student_audit_trigger
    AFTER INSERT OR UPDATE OR DELETE ON Student
    FOR EACH ROW EXECUTE FUNCTION log_student_changes();