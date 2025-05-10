SELECT id, name,
  CASE is_active
    WHEN 'Yes' THEN 'Active'
    WHEN 'No' THEN 'Inactive'
  END AS status
FROM Course;
