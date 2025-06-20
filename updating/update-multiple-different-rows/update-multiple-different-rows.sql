UPDATE users SET user_type = 'ADULT' WHERE age >= 18;
UPDATE users SET user_type = 'JUNIOR' WHERE age < 18;

UPDATE users SET user_type = 
	(CASE 
		WHEN age >= 18 THEN 'ADULT'
		WHEN age < 18 THEN 'JUNIOR'
	END);