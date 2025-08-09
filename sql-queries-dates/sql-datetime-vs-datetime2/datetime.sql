CREATE TABLE Appointments (
AppointmentDate DATETIME
);

INSERT INTO Appointments (AppointmentDate)
VALUES ('2024-08-15 10:30:00.000');

SELECT AppointmentDate
FROM Appointments
WHERE AppointmentDate = '2024-08-15 10:30:00.000';