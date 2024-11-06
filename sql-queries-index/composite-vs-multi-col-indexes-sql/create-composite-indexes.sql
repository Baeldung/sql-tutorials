CREATE INDEX idx_gpa_and_enrollment ON Student (gpa, enrollemnt_date);
CREATE INDEX idx_gpa ON Student (gpa);  -- redundant
CREATE INDEX idx_enrollment ON Student (enrollemnt_date); -- NOT redundant
