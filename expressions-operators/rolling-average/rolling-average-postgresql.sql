CREATE MATERIALIZED VIEW RollingAvgEnrollment
  AS SELECT date, total_registrations, ROUND(AVG(total_registrations) OVER ( ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ), 2)
  AS rolling_avg_7_days
  FROM DailyEnrollment
  ORDER BY date;
