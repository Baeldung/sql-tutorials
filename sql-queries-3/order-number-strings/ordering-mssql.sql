SELECT * FROM Altitude ORDER BY CAST(altitude AS INT);

SELECT * FROM Altitude ORDER BY CONVERT(INT, altitude);

SELECT * FROM Altitude ORDER BY altitude+0;