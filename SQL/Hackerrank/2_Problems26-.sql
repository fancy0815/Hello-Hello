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
#30
SELECT SUM(population)
FROM city
WHERE COUNTRYCODE = 'JPN'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#31 Population Density Difference
SELECT MAX(population)-MIN(population)
FROM city
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#32 
