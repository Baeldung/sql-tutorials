ALTER TABLE course ALTER COLUMN credits TYPE DECIMAL;
ALTER TABLE course ALTER COLUMN credits TYPE VARCHAR;
ALTER TABLE course ALTER COLUMN credits TYPE DECIMAL; -- Expected to give error 
ALTER TABLE course ALTER COLUMN credits TYPE DECIMAL USING credits::INTEGER; -- also resets type