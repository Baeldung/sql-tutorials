SELECT id, scores, SUM(scores)
OVER (ORDER BY id) AS RunningTotal
FROM Exam;


SELECT id, scores, (SELECT SUM(scores)
                    FROM Exam e2 WHERE e2.id <= e1.id) AS RunningTotal
FROM Exam e1 ORDER BY id;


SELECT s1.id, s1.scores, SUM(s2.scores) AS RunningTotal
FROM Exam s1
JOIN Exam s2 ON s1.id >= s2.id
GROUP BY s1.id, s1.scores ORDER BY s1.id;
