SELECT column_name 
FROM information_schema.columns 
WHERE table_schema = 'University' AND table_name = 'Student' AND column_name = 'national_id';
