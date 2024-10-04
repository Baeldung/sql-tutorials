SELECT *
FROM Student
WHERE birth_date = '2001-04-05';

SELECT *
FROM Student
WHERE birth_date >= '2001-04-05'
      AND birth_date < '2001-04-06';

SELECT *
FROM Student
WHERE birth_date = '2001-04-05 08:30:00';
