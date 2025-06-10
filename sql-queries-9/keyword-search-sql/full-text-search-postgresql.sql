-- Add a tsvector column for full-text search 
ALTER TABLE Course ADD COLUMN search_vector tsvector;

-- Populate the tsvector column with data from the 'name' and 'textbook' columns 
UPDATE Course SET search_vector = 
    to_tsvector('english', name || ' ' || textbook);

-- Create a GIN index on the search_vector column for faster querying 
CREATE INDEX idx_course_search ON Course USING GIN (search_vector);

SELECT id, name, textbook, credits 
FROM Course 
WHERE search_vector @@ to_tsquery('Operating & Systems');