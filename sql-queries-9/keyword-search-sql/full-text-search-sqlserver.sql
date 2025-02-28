CREATE FULLTEXT CATALOG ftCatalog AS DEFAULT; 
CREATE FULLTEXT INDEX ON Course(name, textbook) KEY INDEX PK_Course;

SELECT id, name, textbook, credits 
FROM Course 
WHERE CONTAINS((name, textbook), 'Operating AND Systems');
