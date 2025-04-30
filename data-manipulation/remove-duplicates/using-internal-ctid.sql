WITH duplicates AS (
    SELECT ctid,
           ROW_NUMBER() OVER(PARTITION BY semester, year, reg_datetime, course_id, student_id ORDER BY semester) AS row_num
    FROM modifiedregistration
)
DELETE FROM modifiedregistration
WHERE ctid IN (SELECT ctid FROM duplicates WHERE row_num > 1);

select * from modifiedregistration;