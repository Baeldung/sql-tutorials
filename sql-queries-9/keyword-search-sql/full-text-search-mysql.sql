ALTER TABLE Course ADD FULLTEXT(name, textbook);

SELECT id, name, textbook, credits 
FROM Course 
WHERE MATCH(name, textbook) AGAINST('Operating Systems');

