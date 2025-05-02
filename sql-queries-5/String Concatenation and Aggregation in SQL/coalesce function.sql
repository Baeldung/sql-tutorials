USE University; SELECT COALESCE(textbook, 'No textbook assigned') || ' for ' || COALESCE(name, 'Unknown Course') AS course_description FROM Course;
