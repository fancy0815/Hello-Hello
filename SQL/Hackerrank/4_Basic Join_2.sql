#48 Ollivander's Inventory
SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands AS w
INNER JOIN wands_property AS wp
ON w.code = wp.code
WHERE wp.is_evil = 0
    AND w.coins_needed = (SELECT MIN(w1.coins_needed)
                          FROM wands AS w1
                          INNER JOIN wands_property AS wp1
                          ON w1.code = wp1.code
                          WHERE w1.power = w.power AND wp1.age = wp.age)
ORDER BY w.power DESC, wp.age DESC
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#49 Challenges
SELECT h.hacker_id, h.name, COUNT(*) AS 'total'
FROM hackers AS h
INNER JOIN challenges AS c
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total = (SELECT COUNT(*)
                FROM challenges
                GROUP BY hacker_id
                ORDER BY COUNT(*) DESC
                LIMIT 1)
    OR total IN (SELECT s.sum
                 FROM (SELECT COUNT(*) AS 'sum'
                       FROM challenges
                       GROUP BY hacker_id) AS s
                 GROUP BY s.sum
                 HAVING COUNT(*) = 1)
 
ORDER BY total DESC, h.hacker_id
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#50
