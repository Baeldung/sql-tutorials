CREATE DATABASE Users_info;

CREATE TABLE Users(
user_id INT,
phone_number VARCHAR(50),
email VARCHAR(50),
name CHAR(100)
);

CREATE UNIQUE INDEX idx_phone_email ON Users (phone_name, email);

INSERT INTO Users (user_id, phone_number, email, name)
VALUES
(1, '125-447-8796', 'daniellaiva12@gmail.com', 'Daniella Iva'),
(2, '222-458-6347', 'iykejasmine@yahoo.com', 'Iyke Jasmine');

SELECT * FROM Users;

SELECT * FROM Users WHERE phone_number = '125-447-8796' AND email = 'daniellaiva12@gmail.com';