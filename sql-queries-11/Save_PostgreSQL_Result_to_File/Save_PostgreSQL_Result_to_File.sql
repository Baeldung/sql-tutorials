--Using \o Command
\o sql_result.txt   
SELECT * from Student; 
\o


--Using Command Line Redirection
psql -d university -c "SELECT * from Course;" > /var/lib/postgresql/course_data.txt


--Using COPY TO SQL
COPY Department TO '/var/lib/postgresql/res.csv' DELIMITER ',' CSV HEADER;
