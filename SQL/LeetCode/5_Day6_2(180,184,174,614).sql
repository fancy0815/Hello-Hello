180. Consecutive Numbers
https://leetcode.com/problems/consecutive-numbers/
SELECT DISTINCT L1.Num AS ConsecutiveNums
FROM logs l1, logs l2, logs l3
WHERE
    l1.id = l2.id-1
    AND l1.id = l3.id-2
    AND l1.num = l2.num
    AND l1.num = l3.num
    
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

184. Department Highest Salary
https://leetcode.com/problems/department-highest-salary/
SELECT d.name AS 'Department', e.name AS 'Employee', e.Salary AS 'Salary'
FROM employee AS e
INNER JOIN department AS d
ON e.departmentid = d.id
WHERE (e.departmentid, e.salary) IN
    (SELECT departmentid, MAX(salary)
    FROM employee
    GROUP BY departmentid)
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

177. Nth Highest Salary
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
     SELECT salary
     FROM employee
     GROUP BY salary
     ORDER BY salary
     LIMIT 1 OFFSET N
      );
END

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

614.Second Degree Follower 
-- In facebook, there is a follow table with two columns: followee, follower.

Please write a sql query to get the amount of each follower’s follower if he/she has one.

For example:
+-------------+------------+
| followee    | follower   |
+-------------+------------+
|     A       |     B      |
|     B       |     C      |
|     B       |     D      |
|     D       |     E      |
+-------------+------------+
should output:
+-------------+------------+
| follower    | num        |
+-------------+------------+
|     B       |  2         |
|     D       |  1         |
+-------------+------------+
-- Explaination:
-- Both B and D exist in the follower list, when as a followee, B's follower is C and D, 
-- and D's follower is E. A does not exist in follower list.

-- Note:
-- Followee would not follow himself/herself in all cases.
-- Please display the result in follower's alphabet order.
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT f1.follower AS follwer, COUNT(DISTINCT f2.follower) AS num
FROM follower AS f1
INNER JOIN follower AS f2
ON f1.follower = f2.followee
GROUP BY follower
ORDER BY follower








⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
