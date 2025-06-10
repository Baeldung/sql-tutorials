CREATE INDEX idx_student_reg ON Registration(student_id, semester, year);
CREATE INDEX idx_course_reg ON Registration(course_id, semester);
CREATE INDEX idx_reg_date ON Registration(reg_datetime);
