-- Create example table
CREATE TABLE locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    coordinates POINT NOT NULL SRID 4326,
    SPATIAL INDEX(coordinates)
);
-- Add example data
INSERT INTO locations (name, coordinates)
VALUES ('Eiffel Tower', ST_PointFromText('POINT(2.2945 48.8584)', 4326));
-- Query example data
SELECT name, 
ST_Distance_Sphere(coordinates, 
    ST_PointFromText('POINT(49.2827 -123.1207)', 4326)) 
    AS distance_meters
FROM locations;
