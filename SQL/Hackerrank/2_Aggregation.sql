#26 Revising Aggregations - The Count Function
SELECT COUNT(name)
FROM city
WHERE population > 100000
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#27 Revising Aggregations - The Sum Function
SELECT SUM(population)
FROM city
WHERE district = 'California'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#28 Revising Aggregations - Averages
SELECT AVG(population)
FROM city
WHERE district = 'California'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#29 Average Population
SELECT FLOOR(AVG(population))
FROM city
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#30 Japan Population
SELECT SUM(population)
FROM city
WHERE COUNTRYCODE = 'JPN'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#31 Population Density Difference
SELECT MAX(population)-MIN(population)
FROM city
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#32 The Blunder
SELECT CEIL(SUM(
             (salary-CAST(REPLACE(CAST(salary AS CHAR),'0','') AS SIGNED))
            )/COUNT(*))
FROM employees
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#33 Top Earners
SELECT months*salary, count(*)
FROM employee
GROUP BY months*salary
ORDER BY months*salary DESC
LIMIT 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#34 Weather Observation Station 2
SELECT ROUND(SUM(lat_n),2), ROUND(SUM(long_w),2)
FROM station
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#35 Weather Observation Station 13
SELECT ROUND(SUM(lat_n),4)
FROM station
WHERE lat_n > 38.7880 AND lat_n < 137.2345
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#36 Weather Observation Station 14
SELECT ROUND(lat_n,4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#37 Weather Observation Station 15
SELECT ROUND(long_w,4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#38 Weather Observation Station 16
SELECT ROUND(lat_n,4)
FROM station
WHERE lat_n > 38.7880
ORDER BY lat_n
LIMIT 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#39 Weather Observation Station 17
SELECT ROUND(long_w,4)
FROM station
WHERE lat_n > 38.7880
ORDER BY lat_n
LIMIT 1
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#40 Weather Observation Station 18
SELECT ROUND(MAX(lat_n)-MIN(lat_n)+MAX(long_w)-MIN(long_w),4)
FROM station
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
$41 Weather Observation Station 19
SELECT ROUND(
    SQRT(POW(MAX(lat_n)-MIN(lat_n),2)
             +POW(MAX(long_w)-MIN(long_w),2)
            ),4)
FROM station
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#42 Weather Observation Station 20
SELECT ROUND(s2.lat_n,4) 
FROM station s2
WHERE 
    (SELECT COUNT(s.lat_n)
     FROM station s
     WHERE s.lat_n < s2.lat_n)
     =
     (SELECT COUNT(s.lat_n)
     FROM station s
     WHERE s.lat_n > s2.lat_n)






