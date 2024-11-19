DO $$
DECLARE
    counter INT := 1;
    maxRow INT;
BEGIN
    -- Create a temporary table
    CREATE TEMP TABLE TempStudent AS
    SELECT id, name FROM Student;

    -- Get the total number of rows
    SELECT COUNT(*) INTO maxRow FROM TempStudent;

    WHILE counter <= maxRow LOOP
        -- Process each row based on the counter value
        PERFORM name FROM TempStudent OFFSET counter - 1 LIMIT 1;

        -- Increment the counter
        counter := counter + 1;
    END LOOP;

    -- Drop the temporary table after processing
    DROP TABLE TempStudent;
END $$;
