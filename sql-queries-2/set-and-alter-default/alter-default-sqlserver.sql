-- Set the default value for a column
ALTER TABLE
    Course
ADD
    CONSTRAINT DF_Course_IsActive DEFAULT 'Yes' FOR is_active;

-- Drop the default value for a column
ALTER TABLE
    Course DROP CONSTRAINT DF_Course_IsActive;

-- Find all constraints from a table
SELECT
    name
FROM
    sys.default_constraints
WHERE
    parent_object_id = OBJECT_ID('Course')
    AND parent_column_id = COLUMNPROPERTY(OBJECT_ID('Course'), 'is_active', 'ColumnId');
