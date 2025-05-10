SELECT EXISTS ( 
    SELECT FROM information_schema.tables 
    WHERE table_schema = 'public' 
    AND table_name = 'student' 
);

SELECT EXISTS ( 
    SELECT 1 FROM pg_tables 
    WHERE schemaname = 'public' 
    AND tablename = 'student' 
);
SELECT COALESCE(to_regclass('public.test_test_id_seq1') IS NOT NULL, FALSE);