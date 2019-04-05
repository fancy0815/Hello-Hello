#595 Big Countries
https://leetcode.com/problems/big-countries/

SELECT Name, Population, Area
FROM World
WHERE
    Area > 3000000
    OR Population > 25000000;
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
627. Swap Salary
https://leetcode.com/problems/swap-salary/

UPDATE Salary
SET Sex = 
CASE Sex
    WHEN 'm' then 'f'
    WHEN 'f' then 'm'
END
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
584. find_referee
Given a table customer holding customers information and the referee.

+------+------+-----------+
| id   | name | referee_id|
+------+------+-----------+
|    1 | Will |      NULL |
|    2 | Jane |      NULL |
|    3 | Alex |         2 |
|    4 | Bill |      NULL |
|    5 | Zack |         1 |
|    6 | Mark |         2 |
+------+------+-----------+
Write a query to return the list of customers NOT referred by the person with id '2'.

For the sample data above, the result is:

+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+

⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT Name
FROM Table
WHERE
    Referee_id != 2
    OR Referee_id IS null
    
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
586.customer-placing-the-largest-number-of-orders
Query the customer_number from the orders table for the customer who has placed the largest number of orders.

It is guaranteed that exactly one customer will have placed more orders than any other customer.

The orders table is defined as follows:

| Column            | Type      |
|-------------------|-----------|
| order_number (PK) | int       |
| customer_number   | int       |
| order_date        | date      |
| required_date     | date      |
| shipped_date      | date      |
| status            | char(15)  |
| comment           | char(200) |
Sample Input

| order_number | customer_number | order_date | required_date | shipped_date | status | comment |
|--------------|-----------------|------------|---------------|--------------|--------|---------|
| 1            | 1               | 2017-04-09 | 2017-04-13    | 2017-04-12   | Closed |         |
| 2            | 2               | 2017-04-15 | 2017-04-20    | 2017-04-18   | Closed |         |
| 3            | 3               | 2017-04-16 | 2017-04-25    | 2017-04-20   | Closed |         |
| 4            | 3               | 2017-04-18 | 2017-04-28    | 2017-04-25   | Closed |         |
Sample Output

| customer_number |
|-----------------|
| 3               |
Explanation

The customer with number '3' has two orders, which is greater than either customer '1' or '2' because each of them  only has one order. 
So the result is customer_number '3'.
Follow up: What if more than one customer have the largest number of orders, can you find all the customer_number in this case?
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT Customer_number
FROM Table
GROUP BY Customer_number
ORDER BY COUNT(*) DESC
LIMIT 1

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
613 shortest-distance-in-a-line
Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.
 

Write a query to find the shortest distance between two points in these points.
 

| x   |
|-----|
| -1  |
| 0   |
| 2   |
 

The shortest distance is '1' obviously, which is from point '-1' to '0'. So the output is as below:
 

| shortest|
|---------|
| 1       |
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point p1, Point p2
WHERE p1.x != p2.x

