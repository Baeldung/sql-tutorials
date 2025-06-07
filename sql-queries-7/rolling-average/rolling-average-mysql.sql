CREATE EVENT update_rolling_avg
  ON SCHEDULE EVERY 1 DAY
  DO REPLACE INTO DailyEnrollmentRollingAvg
  SELECT date, total_registrations, AVG(total_registrations) OVER ( ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) 
  AS rolling_avg_7_days
  FROM DailyEnrollment;
