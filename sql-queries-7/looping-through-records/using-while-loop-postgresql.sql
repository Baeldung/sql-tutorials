DO $$
DECLARE
    counter INT := 1;
    maxID INT;
BEGIN
    -- Get the maximum id from the Student table
    SELECT MAX(id) INTO maxID FROM Student;
    
    WHILE counter <= maxID LOOP
        -- Process each row based on the counter value
        PERFORM name FROM Student WHERE id = counter;
        
        -- Increment the counter
        counter := counter + 1;
    END LOOP;
END $$;
