# Database Level
ALTER DATABASE University
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

# Table Level
ALTER TABLE Student
CONVERT TO CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

# Column Level
ALTER TABLE Student
MODIFY name VARCHAR(255)
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
