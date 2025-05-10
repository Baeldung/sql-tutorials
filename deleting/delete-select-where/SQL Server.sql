DELETE
FROM Exam
WHERE id IN
    (SELECT id
     FROM Exam
     WHERE grade IS NULL);
