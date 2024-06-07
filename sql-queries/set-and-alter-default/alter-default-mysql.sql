-- Set the default value for a Column
ALTER TABLE
    Course
ALTER COLUMN
    is_active
SET
    DEFAULT 'Yes';

-- Drop the default value for a Column
ALTER TABLE
    Course
ALTER COLUMN
    is_active DROP DEFAULT;