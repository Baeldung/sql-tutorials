ALTER INDEX idx_reg_date ON Registration DISABLE;
ALTER INDEX idx_course_reg ON Registration DISABLE;

DELETE FROM Registration 
WHERE year = 2022 AND semester = 'SPRING';

ALTER INDEX idx_reg_date ON Registration REBUILD;
ALTER INDEX idx_course_reg ON Registration REBUILD;
