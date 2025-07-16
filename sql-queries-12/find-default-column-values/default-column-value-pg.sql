SELECT column_default, datatype 
FROM information_schema.columns 
WHERE table_schema = 'public' 
AND table_name = 'faculty' 
AND column_name = 'active';