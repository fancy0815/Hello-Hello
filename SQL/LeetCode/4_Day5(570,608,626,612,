570. Managers with at Least 5 Direct Reports
The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

+------+----------+-----------+----------+
|Id    |Name 	  |Department |ManagerId |
+------+----------+-----------+----------+
|101   |John 	  |A 	      |null      |
|102   |Dan 	  |A 	      |101       |
|103   |James 	  |A 	      |101       |
|104   |Amy 	  |A 	      |101       |
|105   |Anne 	  |A 	      |101       |
|106   |Ron 	  |B 	      |101       |
+------+----------+-----------+----------+
Given the Employee table, write a SQL query that finds out managers with at least 5 direct report. For the above table, your SQL query should return:

+-------+
| Name  |
+-------+
| John  |
+-------+
Note:
No one would report to himself.

⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT Name
FROM employee
WHERE id in
  (SELECT Managerid
   FROM employee
   GROUPBY managerid
   HAVING COUNT(managerid) >= 5
   )
   
OR

SELECT e1.name
FROM employee e1
INNERJOIN employee e2
ON e1.id = e2.managerid
GROUP BY e1.name
HAVING COUNT(e1.name)>=5

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
608. Tree Node
Given a table tree, id is identifier of the tree node and p_id is its parent node's id.
+----+------+
| id | p_id |
+----+------+
| 1  | null |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |
+----+------+
Each node in the tree can be one of three types:
Leaf: if the node is a leaf node.
Root: if the node is the root of the tree.
Inner: If the node is neither a leaf node nor a root node.
 
Write a query to print the node id and the type of the node. Sort your output by the node id. The result for the above sample is:
 
+----+------+
| id | Type |
+----+------+
| 1  | Root |
| 2  | Inner|
| 3  | Leaf |
| 4  | Leaf |
| 5  | Leaf |
+----+------+
 
Explanation
 
Node '1' is root node, because its parent node is NULL and it has child node '2' and '3'.
Node '2' is inner node, because it has parent node '1' and child node '4' and '5'.
Node '3', '4' and '5' is Leaf node, because they have parent node and they don't have child node.

And here is the image of the sample tree as below:
 

			  1
			/   \
    2       3
  /   \
4       5
Note

If there is only one node on the tree, you only need to output its root attributes.

⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------

SELECT id, 
CASE
  WHEN p_id is null THEN 'Root'
  WHEN id in 
    SELECT p_id
    FROM tree
    WHERE p_id is not null
    THEN 'Inner'
  ELSE 'Leaf'
  END TYPE
FROM tree

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
626. Exchange Seats
https://leetcode.com/problems/exchange-seats/

SELECT
CASE
    WHEN id % 2 = 0 THEN id - 1
    WHEN id % 2 != 0
        and id = (SELECT COUNT(*) FROM seat)
        THEN id
    ELSE id+1
END AS id,
student
FROM seat
ORDER BY id

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
612. Shortest Distance in a Plane 
Table point_2d holds the coordinates (x,y) of some unique points (more than two) in a plane.
Write a query to find the shortest distance between these points rounded to 2 decimals.

| x  | y  |
|----|----|
| -1 | -1 |
| 0  | 0  |
| -1 | -2 |
 

The shortest distance is 1.00 from point (-1,-1) to (-1,2). So the output should be:
 

| shortest |
|----------|
| 1.00     |
 

Note: The longest distance among all the points are less than 10000.
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT ROUND
  (SQRT
  (MIN(
  (POW((p1.x-p2.x),2)+POW(p1.y-p2.y),2))
  )
  )
  ,2) AS shortest
 FROM point_2d p1, point_2d p2
 WHERE p1.x<>p2.x and p1.y<>p2.y
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
585. Investment in 2016
Write a query to print the sum of all total investment values in 2016 (TIV_2016), to a
scale of 2 decimal places, for all policy holders who meet the following criteria:

Have the same TIV_2015 value as one or more other policyholders.
Are not located in the same city as any other policyholder (i.e.: the (latitude, longitude) 
                                                            attribute pairs must be unique).
Input Format:
The insurance table is described as follows:

| Column Name | Type          |
|-------------|---------------|
| PID         | INTEGER(11)   |
| TIV_2015    | NUMERIC(15,2) |
| TIV_2016    | NUMERIC(15,2) |
| LAT         | NUMERIC(5,2)  |
| LON         | NUMERIC(5,2)  |
where PID is the policyholder's policy ID, TIV_2015 is the total investment value in 
2015, TIV_2016 is the total investment value in 2016, LAT is the latitude of the policy holder's city, 
and LON is the longitude of the policy holder's city.
Sample Input
| PID | TIV_2015 | TIV_2016 | LAT | LON |
|-----|----------|----------|-----|-----|
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |
Sample Output
| TIV_2016 |
|----------|
| 45.00    |
Explanation
The first record in the table, like the last record, meets both of the two criteria.
The TIV_2015 value '10' is as the same as the third and forth record, and its location unique.
The second record does not meet any of the two criteria. Its TIV_2015 is not like any other policyholders.
And its location is the same with the third record, which makes the third record fail, too.
So, the result is the sum of TIV_2016 of the first and last record, which is 45.
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT SUM(tiv-2016) AS TIV-2016
FROM insurance a
WHERE 1 = (SELECT COUNT(*)
		FROM insurance b
		WHERE a.LAT=b.LAT and a.LON=b.LON)
AND 1< (SELECT (COUNT(*)
		FROM insurance c
		WHERE a.TIV_2015 = c.TIV 2015)







