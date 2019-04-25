602. Friend Requests II: Who Has the Most Friends
Table request_accepted holds the data of friend acceptance, while requester_id and accepter_id both are the id of a person.
| requester_id | accepter_id | accept_date|
|--------------|-------------|------------|
| 1            | 2           | 2016_06-03 |
| 1            | 3           | 2016-06-08 |
| 2            | 3           | 2016-06-08 |
| 3            | 4           | 2016-06-09 |
Write a query to find the the people who has most friends and the most friends number. For the sample data above, the result is:
| id | num |
|----|-----|
| 3  | 3   |

Note:
It is guaranteed there is only 1 people having the most friends.
The friend request could only been accepted once, which mean there is no multiple records with the same requester_id and accepter_id value.
 
Explanation:
The person with id '3' is a friend of people '1', '2' and '4', so he has 3 friends in total, which is the most number than any others.

Follow-up:
In the real world, multiple people could have the same most number of friends, can you find all these people in this case?
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------

SELECT
  a AS id, COUNT(a) AS num
FROM (SELECT requester_id AS a
      FROM requested_accepted
      UNION ALL
      SELECT accepter_id AS a
      FROM requested-accepeted) AS summary
GROUP BY id
ORDER BY num DESC
LIMIT 1

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
580. Count Student Number in Departments
A university uses 2 data tables, student and department, to store data about its students 
-- and the departments associated with each major.
-- Write a query to print the respective department name and number of students 
-- majoring in each department for all departments in the department table (even ones with no current students).

-- Sort your results by descending number of students; if two or more departments 
-- have the same number of students, then sort those departments alphabetically by department name.

-- The student is described as follow:

-- | Column Name  | Type      |
-- |--------------|-----------|
-- | student_id   | Integer   |
-- | student_name | String    |
-- | gender       | Character |
-- | dept_id      | Integer   |
-- where student_id is the student's ID number, student_name is the student's name, 
-- gender is their gender, and dept_id is the department ID associated with their declared major.

-- And the department table is described as below:

-- | Column Name | Type    |
-- |-------------|---------|
-- | dept_id     | Integer |
-- | dept_name   | String  |
-- where dept_id is the department's ID number and dept_name is the department name.

-- Here is an example input:
-- student table:

-- | student_id | student_name | gender | dept_id |
-- |------------|--------------|--------|---------|
-- | 1          | Jack         | M      | 1       |
-- | 2          | Jane         | F      | 1       |
-- | 3          | Mark         | M      | 2       |
-- department table:

-- | dept_id | dept_name   |
-- |---------|-------------|
-- | 1       | Engineering |
-- | 2       | Science     |
-- | 3       | Law         |
-- The Output should be:

-- | dept_name   | student_number |
-- |-------------|----------------|
-- | Engineering | 2              |
-- | Science     | 1              |
-- | Law         | 0              |
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------

SELECT d.dept_name, COUNT(s.student_id) AS student_number
FROM student AS s
RIGHT JOIN department AS d
ON s.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY student_number DESC, dept_name

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
574. Winning Candidate
-- Table: Candidate

-- +-----+---------+
-- | id  | Name    |
-- +-----+---------+
-- | 1   | A       |
-- | 2   | B       |
-- | 3   | C       |
-- | 4   | D       |
-- | 5   | E       |
-- +-----+---------+  
-- Table: Vote

-- +-----+--------------+
-- | id  | CandidateId  |
-- +-----+--------------+
-- | 1   |     2        |
-- | 2   |     4        |
-- | 3   |     3        |
-- | 4   |     2        |
-- | 5   |     5        |
-- +-----+--------------+
-- id is the auto-increment primary key,
-- CandidateId is the id appeared in Candidate table.
-- Write a sql to find the name of the winning candidate, the above example will return the winner B.

-- +------+
-- | Name |
-- +------+
-- | B    |
-- +------+
-- Notes:

-- You may assume there is no tie, in other words there will be at most one winning candidate.
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT Name
FROM candidate AS c
INNER JOIN vote AS v
ON c.id = v.candidateid
GROUP BY c.name
ORDER BY COUNT(*) DESC
LIMIT 1
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
178. Rank Scores
https://leetcode.com/problems/rank-scores/
SELECT s1.score AS score, COUNT(*) AS Rank
FROM scores AS s1
LEFT JOIN (SELECT DISTINCT score
           FROM scores) AS s2
ON s1.score <= s2.score
GROUP BY s1.id
ORDER BY count(*)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
578. Get Highest Answer Rate Question
Get the highest answer rate question from a table survey_log with these columns: uid, action, question_id, answer_id, q_num, timestamp.

uid means user id; action has these kind of values: "show", "answer", "skip"; answer_id is not null when action column is "answer", while is null for "show" and "skip"; q_num is the numeral order of the question in current session.

Write a sql query to identify the question which has the highest answer rate.

Example:

Input:
+------+-----------+--------------+------------+-----------+------------+
| uid  | action    | question_id  | answer_id  | q_num     | timestamp  |
+------+-----------+--------------+------------+-----------+------------+
| 5    | show      | 285          | null       | 1         | 123        |
| 5    | answer    | 285          | 124124     | 1         | 124        |
| 5    | show      | 369          | null       | 2         | 125        |
| 5    | skip      | 369          | null       | 2         | 126        |
+------+-----------+--------------+------------+-----------+------------+
Output:
+-------------+
| survey_log  |
+-------------+
|    285      |
+-------------+
Explanation:
question 285 has answer rate 1/1, while question 369 has 0/1 answer rate, so output 285.
 

Note: The highest answer rate meaning is: answer number's ratio in show number in the same question.
⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------⚡️--------------
SELECT question_id AS survey_log
FROM survey_log
GROUP BY question_id
ORDER BY (sum(action="answer")/sum(action="show")) DESC
LIMIT 1









