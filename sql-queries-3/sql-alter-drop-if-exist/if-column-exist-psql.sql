SELECT column_name 
FROM information_schema.columns 
WHERE table_schema = 'public' AND table_name = 'student' AND column_name = 'national_id';
