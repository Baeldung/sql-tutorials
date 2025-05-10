CREATE VIEW v_DailyEnrollmentWithAvg
  WITH SCHEMABINDING AS
  SELECT date, total_registrations, AVG(total_registrations) OVER ( ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW )
  AS rolling_avg_7_days
  FROM DailyEnrollment; 
GO CREATE UNIQUE CLUSTERED INDEX idx_DailyEnrollmentWithAvg ON v_DailyEnrollmentWithAvg (date);
