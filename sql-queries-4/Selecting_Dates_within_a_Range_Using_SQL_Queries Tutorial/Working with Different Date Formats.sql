SELECT * FROM Student WHERE STR_TO_DATE(enrollment_date, '%d-%m-%Y') BETWEEN '2020-01-01' AND '2021-12-31'