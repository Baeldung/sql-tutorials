ALTER TABLE Student ENGINE=MyISAM;

SELECT 
    engine 
FROM 
    information_schema.tables
WHERE 
    table_schema = 'University' 
    AND table_name = 'Student';

ALTER TABLE Student ENGINE=InnoDB;