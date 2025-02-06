SELECT
    Grade,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM UserGrades), 2) AS Percentage
FROM
    UserGrades
GROUP BY
    Grade
ORDER BY
    Grade;

    