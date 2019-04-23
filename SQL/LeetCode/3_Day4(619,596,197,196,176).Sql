619. Biggest Single Number
Table my_numbers contains many numbers in column num including duplicated ones.
Can you write a SQL query to find the biggest number, which only appears once.

+---+
|num|
+---+
| 8 |
| 8 |
| 3 |
| 3 |
| 1 |
| 4 |
| 5 |
| 6 | 
For the sample data above, your query should return the following result:
+---+
|num|
+---+
| 6 |
Note:
If there is no such number, just output null.
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT
  CASE
    WHEN COUNT(num) = 1 THEN num
    ELSE null
   END AS num
FROM my_numbers
GROUP BY num
ORDER BY num DESC
LIMIT 1
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

596. Classes More Than 5 Students
https://leetcode.com/problems/classes-more-than-5-students/

SELECT class
FROM courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
197. Rising Temperature
https://leetcode.com/problems/rising-temperature/

SELECT w1.id
FROM weather w1, weather w2
WHERE (DATEDIFF(w1.recorddate,w2.recorddate)=1) AND w1.temperature > w2.temperature

OR
SELECT w1.id
FROM weather w1, weather w2
WHERE w2.recorddate = DATE_ADD(w1.recorddate,INTERVAL -1 DAY)
AND w1.temperature>w2.temperature

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
196. Delete Duplicate Emails
https://leetcode.com/problems/delete-duplicate-emails/

DELETE p2
FROM Person p1
INNER JOIN Person p2
WHERE p1.id < p2.id AND p1.email = p2.email

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
176. Second Highest Salary
https://leetcode.com/problems/second-highest-salary/

SELECT MAX(salary) AS SecondHighestSalary
FROM employee
WHERE salary NOT IN
    (SELECT MAX(salary)
    FROM employee
     )




