CREATE TABLE CharacterTypesDemo ( 
    char_column CHAR(10), 
    nchar_column NCHAR(10), 
    varchar_column VARCHAR(10), 
    nvarchar_column NVARCHAR(10) 
);
INSERT INTO CharacterTypesDemo 
  (char_column, nchar_column, varchar_column, nvarchar_column) 
VALUES 
  ('Baeldung', N'Baeλdμng', 'Baeldung', N'Baeλdμng');

INSERT INTO CharacterTypesDemo 
  (char_column) 
VALUES 
  (N'Baeλdung');  

SELECT char_column 
FROM CharacterTypesDemo;

SELECT DATALENGTH(char_column) 
FROM CharacterTypesDemo;

INSERT INTO CharacterTypesDemo 
  (nchar_column) 
VALUES 
  (N'Baeλdung');

SELECT nchar_column 
FROM CharacterTypesDemo;  

SELECT DATALENGTH(nchar_column) AS Storage 
FROM CharacterTypesDemo;

INSERT INTO CharacterTypesDemo 
  (varchar_column) 
VALUES 
  ('Baeldung');

SELECT DATALENGTH(varchar_column) AS Storage 
FROM CharacterTypesDemo;

INSERT INTO CharacterTypesDemo 
  (nvarchar_column) 
VALUES 
  (N'Baeλdung');

SELECT nvarchar_column 
FROM CharacterTypesDemo;

SELECT DATALENGTH(nvarchar_column) AS Storage 
FROM CharacterTypesDemo;