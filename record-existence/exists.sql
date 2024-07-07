if exists (SELECT 1 FROM Program WHERE department_id = 7)
    print 'Program found for department_id 7';
else
    print 'No program found for department_id 7';
