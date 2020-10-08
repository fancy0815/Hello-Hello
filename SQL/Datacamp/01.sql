Calculate a running total of minutes spent on bicycle trips per day
Table: Trips
| duration     | start_date     | start_station |
--------------------------------------------------
| 298          | 8/29/13        | 5th at HO     |
| 431          | 8/29/13        | South Van     |
****************************************************************************
SELECT start_station
      ,start_date
      ,duration
      ,SUM(duration) OVER (ORDER BY start_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM trip;

*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^
Calculate a running total of hot days (75F or higher)
|   date      |   temp_f     |
------------------------------
| 10/14/13    |     77       |
| 10/15/13    |     80       |
****************************************************************************
SELECT date
      ,temp_f
      ,COUNT(CASE WHEN temp_f > 75 THEN 1 END) OVER (ORDER BY date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) hot_days
FROM temp;

*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^
What percentage of all bikes trips were started at the top 3 station
| start_date     | start_station |
----------------------------------
| 8/29/13        | 5th at HO     |
| 8/29/13        | South Van     |
****************************************************************************
SELECT start_station
      ,COUNT(start_date) AS trips
      ,COUNT(start_date)/(SELECT COUNT(start_date)
                          FROM trip AS t1
                          WHERE t.start_station = t1.start_statoion) AS trips_diff
FROM trip as t
GROUP BY start_station
ORDER BY trips DESC;

*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^*^
