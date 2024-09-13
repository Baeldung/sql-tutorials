USE University; SELECT CONCAT(IFNULL(textbook, 'No textbook assigned'), ' for ', IFNULL(name, 'Unknown Course')) AS course_description FROM Course;
