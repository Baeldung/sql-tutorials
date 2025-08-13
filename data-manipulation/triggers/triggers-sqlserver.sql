IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_audit_log]') AND type in (N'U'))
BEGIN
  CREATE TABLE Student_Audit_Log (
    id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT,
    action VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);
END

-- Drop existing triggers if they exist
IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'trg_student_audit')
DROP TRIGGER trg_student_audit;
GO

CREATE TRIGGER trg_student_audit
    ON Student
    AFTER INSERT, UPDATE, DELETE
    AS
BEGIN
    SET NOCOUNT ON;


    IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO Student_Audit_Log (student_id, action)
        SELECT id, 'INSERT'
        FROM inserted;
    END

    IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        INSERT INTO Student_Audit_Log (student_id, action)
        SELECT id, 'UPDATE'
        FROM inserted;
    END

    IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO Student_Audit_Log (student_id, action)
        SELECT id, 'DELETE'
        FROM deleted;
    END
END
GO;

CREATE TRIGGER prevent_department_deletion_trigger
    ON Department
    INSTEAD OF DELETE
AS
BEGIN
  RETURN;
END;