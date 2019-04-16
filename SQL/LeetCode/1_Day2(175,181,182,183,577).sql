175. Combine Two Tables
https://leetcode.com/problems/combine-two-tables/

SELECT P.FirstName,P.LastName,A.City,A.State
FROM Person AS P
LEFT JOIN Address as A
    ON P.PersonId = A.PersonId
    
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
181. Employees Earning More Than Their Managers
https://leetcode.com/problems/employees-earning-more-than-their-managers/

SELECT E1.Name AS Employee
FROM Employee AS E1, Employee as E2
WHERE 
    E1.ManagerId = E2.Id
    AND E1.Salary > E2.Salary
    
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
182. Duplicate Emails
https://leetcode.com/problems/duplicate-emails/

SELECT DISTINCT Email
# DISTINCT IS NOT NECESSARY
FROM Person
GROUP BY Email
HAVING COUNT(EMAIL)>1
    
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
183. Customers Who Never Order
https://leetcode.com/problems/customers-who-never-order/

SELECT T.Name AS Customers
FROM (
    SELECT O.ID AS OrderID,C.Name AS Name
    FROM Customers AS C
    LEFT JOIN Orders AS O
    ON C.Id = O.CustomerId
    ) AS T
WHERE T.OrderID IS null
GROUP BY T.Name
    
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
577. Employee Bonus
Select all employee's name and bonus whose bonus is < 1000.
Table:Employee
+-------+--------+-----------+--------+
| empId |  name  | supervisor| salary |
+-------+--------+-----------+--------+
|   1   | John   |  3        | 1000   |
|   2   | Dan    |  3        | 2000   |
|   3   | Brad   |  null     | 4000   |
|   4   | Thomas |  3        | 4000   |
+-------+--------+-----------+--------+
empId is the primary key column for this table.
Table: Bonus
+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+
empId is the primary key column for this table.
Example ouput:
+-------+-------+
| name  | bonus |
+-------+-------+
| John  | null  |
| Dan   | 500   |
| Brad  | null  |
+-------+-------+

⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------

SELECT E.name, B.bonus
FROM Employee AS E
LEFT JOIN Bonus AS B
ON E.empId = B.empId
WHERE 
  B.bonus < 1000 
  OR B.bonus IS null
  
