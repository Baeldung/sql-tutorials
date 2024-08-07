DECLARE @date1 DATETIME = '2024-08-15 10:30:00';

CREATE TABLE Appointments (
AppointmentDate DATETIME
);

INSERT INTO Appointments (AppointmentDate)
VALUES (@date1);

SELECT AppointmentDate
FROM Appointments
WHERE AppointmentDate = @date1;