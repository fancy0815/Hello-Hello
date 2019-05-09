#51 Projects
SELECT start_date, MIN(end_date)
FROM
    (SELECT start_date
     FROM projects
     WHERE start_date NOT IN (SELECT end_date FROM projects)) AS s,
    (SELECT end_date
     FROM projects
     WHERE end_date NOT IN (SELECT start_date FROM projects)) AS e
WHERE start_date < end_date
GROUP BY start_date
ORDER BY datediff(MIN(end_date),start_date),start_date
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#51 Placements
SELECT s.name
FROM students AS s
INNER JOIN packages AS p1
    ON s.id = p1.id
INNER JOIN friends AS f
    ON s.id = f.id
INNER JOIN packages AS p2
    ON f.friend_id = p2.id
WHERE p1.salary < p2.salary
ORDER BY p2.salary
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#52 Symmetric Pairs
SELECT DISTINCT f1.x, f1.y
FROM functions AS f1
INNER JOIN functions AS f2
ON f1.x = f2.y AND f1.y = f2.x
GROUP BY f1.x, f1.y
HAVING f1.x<f1.y OR COUNT(*)>1
ORDER BY f1.x
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#53 Interviews
SELECT c.contest_id, c.hacker_id, c.name, SUM(sst.s), SUM(sst.ta), SUM(vst.v), SUM(vst.uv)
FROM contests AS c
INNER JOIN colleges AS co
    ON c.contest_id = co.contest_id
INNER JOIN challenges AS ch
    ON co.college_id = ch.college_id
LEFT JOIN 
        (SELECT vs.challenge_id, SUM(vs.total_views) AS v, SUM(vs.total_unique_views) AS uv
         FROM view_stats AS vs
         GROUP BY vs.challenge_id) AS vst
    ON ch.challenge_id = vst.challenge_id
LEFT JOIN
        (SELECT ss.challenge_id, SUM(ss.total_submissions) AS s, SUM(ss.total_accepted_submissions) AS ta
         FROM submission_stats AS ss
         GROUP BY ss.challenge_id) AS sst 
    ON ch.challenge_id = sst.challenge_id
GROUP BY c.contest_id, c.hacker_id, c.name
HAVING SUM(sst.s)!=0 OR SUM(sst.ta)!=0 OR SUM(vst.v)!=0 OR SUM(vst.uv)!=0
ORDER BY c.contest_id
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#54 15 Days of Learning SQL
