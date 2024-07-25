SELECT * FROM Altitude ORDER BY altitude+0;

SELECT * FROM Altitude ORDER BY CONVERT(altitude, SIGNED);

SELECT * FROM Altitude ORDER BY CAST(altitude AS SIGNED);