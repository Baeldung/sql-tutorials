# Case-sensitive and accent-sensitive binary comparison

SELECT * FROM Student
WHERE name = 'Dvořák Petr'
COLLATE "C";

# Case-insensitive and accent-sensitive comparison

SELECT * FROM Student
WHERE LOWER(name) = LOWER('dvořák petr');

SELECT * FROM Student
WHERE name ILIKE 'dvořák petr';

# Accent-insensitive and case-sensitive comparison

CREATE EXTENSION IF NOT EXISTS unaccent;

SELECT * FROM Student
WHERE unaccent(name) = unaccent('Dvořák Petr');

# Accent-insensitive and case-insensitive comparison

SELECT * FROM Student
WHERE unaccent(name) ILIKE unaccent('dvorak petr');
