DO $$
DECLARE
    drop_statement text;
BEGIN
    FOR drop_statement IN
        SELECT 'DROP TABLE IF EXISTS "' || table_name || '" CASCADE;'
        FROM information_schema.tables
        WHERE table_schema = 'vendor_b'
    LOOP
        EXECUTE drop_statement;
    END LOOP;
END $$;