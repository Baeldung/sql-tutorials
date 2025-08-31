-- Excludes code column from department table
DO $$
 DECLARE
     sql_query text;
 BEGIN
     SELECT 'SELECT ' ||
            string_agg(quote_ident(column_name), ', ' ORDER BY ordinal_position) ||
            ' FROM Department'
     INTO sql_query
     FROM information_schema.columns
     WHERE table_schema = 'public'
       AND table_name   = 'department'
       AND column_name <> 'code';

     RAISE NOTICE 'Generated SQL: %', sql_query;
     EXECUTE sql_query;
 END $$;
