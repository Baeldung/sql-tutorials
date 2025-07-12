-- Create example table
CREATE TABLE coordinates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255),
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL
);
-- Add example data
INSERT INTO coordinates (location, latitude, longitude)
VALUES ('Eiffel Tower', 48.8584, 2.2945);
-- Query example data
SELECT * FROM coordinates;
