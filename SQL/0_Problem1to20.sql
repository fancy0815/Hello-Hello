#1 Revising the Select Query I
SELECT * 
FROM CITY
WHERE 
    COUNTRYCODE = 'USA'
    AND POPULATION > 100000;
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#2 Revising the Select Query II
Select NAME
FROM CITY
WHERE
    COUNTRYCODE = 'USA'
    AND POPULATION > 120000
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#3 Select All
SELECT *
FROM CITY
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#4 Select By ID
SELECT *
FROM CITY
WHERE
    ID = 1661
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#5 Japanese Cities' Attributes
SELECT *
FROM CITY
WHERE
    COUNTRYCODE = 'JPN'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#6 Japanese Cities' Names
SELECT NAME
FROM CITY
WHERE
    COUNTRYCODE = 'JPN'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#7 Weather Observation Station 1
SELECT CITY,STATE
FROM STATION
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#8 Weather Observation Station 3
SELECT DISTINCT CITY
FROM STATION
WHERE
    ID % 2 =0
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#9 Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#10 Weather Observation Station 5
SELECT City, CHAR_LENGTH(City)
FROM STATION
ORDER BY CHAR_LENGTH(City),City LIMIT 1;

SELECT City, CHAR_LENGTH(City)
FROM STATION
ORDER BY CHAR_LENGTH(City) DESC, CITY LIMIT 1
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#11 Weather Observation Station 6
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '^[aeiou]'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#12 Weather Observation Station 7
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '[aeiou]$'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#13 Weather Observation Station 8
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '^[aeiou].*[aeiou]$'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#14 Weather Observation Station 9
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '^[^aeiou]'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#15 Weather Observation Station 10
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '[^aeiou]$'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#16 Weather Observation Station 11
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '^[^aeiou]'
    OR CITY REGEXP '[^aeiou]$'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#17 Weather Observation Station 12
SELECT DISTINCT City
FROM STATION
WHERE
    CITY REGEXP '^[^aeiou].*[^aeiou]$'
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#18 Higher Than 75 Marks
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#19 Employee Names
SELECT Name
FROM Employee
ORDER BY Name
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#20 Employee Salary
SELECT Name
FROM Employee
WHERE
    Salary > 2000
    AND Months < 10
ORDER BY Employee_id



