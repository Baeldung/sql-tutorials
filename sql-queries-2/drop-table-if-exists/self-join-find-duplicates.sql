SELECT f1.id AS id1,
    f1.name AS name1,
    f1.national_id AS national_id1,
    f1.position AS position1,
    f2.id AS id2,
    f2.name AS name2,
    f2.national_id AS national_id2,
    f2.position AS position2
FROM Faculty f1
    JOIN Faculty f2 ON f1.national_id = f2.national_id
    AND f1.id <> f2.id
ORDER BY f1.national_id,
    f1.start_date;