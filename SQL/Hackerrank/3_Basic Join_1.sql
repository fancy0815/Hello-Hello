#43 Asian Population
SELECT SUM(city.population)
FROM city
INNER JOIN country
ON city.countrycode = country.code AND country.continent = 'asia'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#44 African Cities
SELECT city.name
FROM city
INNER JOIN country
ON city.countrycode = country.code AND country.continent = 'africa'
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#45 Average Population of Each Continent
SELECT co.continent, FLOOR(AVG(ci.population)) AS 'avg population'
FROM city AS ci
INNER JOIN country AS co
ON ci.countrycode = co.code
GROUP BY co.continent
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#46 The Report
SELECT 
    CASE
        WHEN g.grade >= 8 THEN s.name
        ELSE null
    END
    ,g.grade, s.marks
FROM students AS s
INNER JOIN grades AS g
ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, s.name, s.marks
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#47 Top Competitors
SELECT h.hacker_id, max(h.name)
# SELECT h.hacker_id, h.name
FROM hackers AS h
INNER JOIN submissions AS s
ON h.hacker_id = s.hacker_id
INNER JOIN challenges AS c
ON s.challenge_id = c.challenge_id
INNER JOIN difficulty AS d
ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id
# GROUP BY h.hacker_id, h.name
HAVING COUNT(h.hacker_id)>1
ORDER BY COUNT(h.hacker_id) DESC, h.hacker_id

