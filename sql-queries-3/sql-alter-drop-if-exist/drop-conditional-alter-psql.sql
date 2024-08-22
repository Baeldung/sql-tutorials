DO $$ 
BEGIN 
	IF EXISTS ( 
		SELECT 1 
		FROM information_schema.columns 
		WHERE table_schema = 'public' 
		AND table_name = 'student' 
		AND column_name = 'national_id' 
	) THEN 
		EXECUTE 'ALTER TABLE Student DROP COLUMN national_id'; 
	END IF; 
END $$; 


SELECT * FROM Student LIMIT 3;
