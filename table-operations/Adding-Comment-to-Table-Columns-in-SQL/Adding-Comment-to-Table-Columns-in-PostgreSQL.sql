--Adding New Table Classrooms
CREATE TABLE Classrooms ( 
  classroom_id SERIAL PRIMARY KEY, 
  building_name VARCHAR(100), 
  room_number VARCHAR(10), 
  capacity INT 
  );

--Adding Comments to Each Column of Classrooms Table
COMMENT ON COLUMN Classrooms.classroom_id IS 'Unique identifier for each classroom'; 
COMMENT ON COLUMN Classrooms.building_name IS 'Building name where the classroom is located'; 
COMMENT ON COLUMN Classrooms.room_number IS 'Room number within the building'; 
COMMENT ON COLUMN Classrooms.capacity IS 'Maximum number of students the classroom can accommodate';
