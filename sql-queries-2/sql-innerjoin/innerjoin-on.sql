SELECT * 
  FROM Department;

SELECT * 
  FROM Faculty;

SELECT fac.name, fac.position, fac.department_id 
  FROM Faculty fac;

SELECT fac.department_id, fac.name, fac.position, dep.name, dep.code 
  FROM Department dep 
  INNER JOIN Faculty fac 
  ON fac.department_id = dep.id 
  ORDER BY fac.department_id ASC;

SELECT fac.name, fac.position, dep.name, dep.code 
  FROM Department dep 
  INNER JOIN Faculty fac 
  ON fac.department_id = dep.id 
  WHERE dep.name = 'Computer Science' OR dep.name = 'Civil Engineering';
