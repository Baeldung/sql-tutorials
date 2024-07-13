SELECT x.name, x.position, x.national_id, y.name, y.position, y.national_id 
FROM Faculty x 
JOIN Faculty y ON x.id = y.id;