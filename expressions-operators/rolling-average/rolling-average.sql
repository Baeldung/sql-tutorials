SELECT date, total_registrations, AVG(total_registrations)
  OVER ( ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) AS rolling_avg_7_days
  FROM DailyEnrollment
  ORDER BY date;
