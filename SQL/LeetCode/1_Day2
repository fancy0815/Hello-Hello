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
  
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
597. Acceptance
In social network like Facebook or Twitter, people send friend requests and accept others’ requests as well. Now given two tables as below:
 

Table: friend_request
| sender_id | send_to_id |request_date|
|-----------|------------|------------|
| 1         | 2          | 2016_06-01 |
| 1         | 3          | 2016_06-01 |
| 1         | 4          | 2016_06-01 |
| 2         | 3          | 2016_06-02 |
| 3         | 4          | 2016-06-09 |
 

Table: request_accepted
| requester_id | accepter_id |accept_date |
|--------------|-------------|------------|
| 1            | 2           | 2016_06-03 |
| 1            | 3           | 2016-06-08 |
| 2            | 3           | 2016-06-08 |
| 3            | 4           | 2016-06-09 |
| 3            | 4           | 2016-06-10 |
 

Write a query to find the overall acceptance rate of requests rounded to 2 decimals, which is the number of acceptance divide the number of requests.
 

For the sample data above, your query should return the following result.
 

|accept_rate|
|-----------|
|       0.80|
 

Note:
The accepted requests are not necessarily from the table friend_request. In this case, you just need to simply count the total accepted requests (no matter whether they are in the original requests), and divide it by the number of requests to get the acceptance rate.
It is possible that a sender sends multiple requests to the same receiver, and a request could be accepted more than once. In this case, the ‘duplicated’ requests or acceptances are only counted once.
If there is no requests at all, you should return 0.00 as the accept_rate.
 

Explanation: There are 4 unique accepted requests, and there are 5 requests in total. So the rate is 0.80.
 

Follow-up:
Can you write a query to return the accept rate but for every month?
How about the cumulative accept rate for every day?
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------

SELECT ROUND(
  (IFNULL(
  SELECT(
  COUNT(DISTINCT requester_id,accepter_id)
  FROM request_accepted
  )
  /
  SELECT(
  COUNT(DISTINCT serder_id,send_to_id)
  FROM Friend_request
  )
  ,0)
  ,2) AS accept_rate











