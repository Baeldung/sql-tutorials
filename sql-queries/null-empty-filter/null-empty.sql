SELECT id, name from Department WHERE code IS NULL OR code = '';
SELECT id, name from Department WHERE code IS NULL OR TRIM(code) = '';
SELECT id, name from Department WHERE TRIM(COALESCE(code, '')) = '';
SELECT id, name from Department WHERE NULLIF(TRIM(code), '') IS NULL;