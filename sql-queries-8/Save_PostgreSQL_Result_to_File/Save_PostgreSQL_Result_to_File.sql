-- Using \o Command

\o sql_result.txt        --Specifying file path
SELECT * from Student;   --Storing Student record to the file
\o                       --Resetting the output back to the terminal



-- Using Command Line Redirection
    -- exporting all rows from the Course table in the university database
  psql -d university -c "SELECT * from Course;" > /var/lib/postgresql/course_data.txt  




-- Using COPY TO SQL
  --exporting the content of the Department to the res.csv file
COPY Department TO '/var/lib/postgresql/res.csv' DELIMITER ',' CSV HEADER;





