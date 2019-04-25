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








⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
