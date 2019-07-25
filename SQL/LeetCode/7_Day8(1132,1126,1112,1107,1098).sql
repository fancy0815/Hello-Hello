1132. Reported Posts II
https://leetcode.com/problems/reported-posts-ii/
SELECT ROUND(SUM(perc_removal)/COUNT(1),2) AS average_daily_percent
FROM (
    SELECT a.action_date, COUNT(DISTINCT r.post_id)/COUNT(DISTINCT a.post_id)*100 AS perc_removal
    FROM Actions a
    LEFT JOIN Removals r
    ON a.post_id = r.post_id
    WHERE a.extra = 'spam'
    GROUP BY a.action_date) AS t
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
1126. Active Businesses
https://leetcode.com/problems/active-businesses/
SELECT business_id 
FROM Events AS e
LEFT JOIN 
    (SELECT event_type, avg(occurences) AS average
     FROM Events
     GROUP BY event_type) AS a
ON e.event_type = a.event_type
WHERE e.occurences > a.average
GROUP BY e.business_id
HAVING count(*) > 1
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
1112. Highest Grade For Each Student
https://leetcode.com/problems/highest-grade-for-each-student/
SELECT student_id, MIN(course_id), grade
FROM Enrollments
WHERE (student_id, grade) in 
    (SELECT student_id, MAX(grade)
     FROM Enrollments
     GROUp BY student_id)
GROUP BY student_id
ORDER BY student_id
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
1107. New Users Daily Count
https://leetcode.com/problems/new-users-daily-count/
SELECT login_date, COUNT(user_id) AS user_count
FROM
    (SELECT user_id, min(activity_date) AS login_date
    FROM Traffic
    WHERE activity = 'login'
    GROUP BY user_id
    HAVING datediff('2019-06-30',login_date)<=90) AS temp
GROUP BY login_date
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
1098. Unpopular Books
https://leetcode.com/problems/unpopular-books/
SELECT b.book_id, b.name
FROM Books AS b
WHERE available_from<='2019-05-23'
AND b.book_id NOT IN
    (Select book_id 
     FROM Orders
     WHERE dispatch_date BETWEEN '2018-06-23' AND '2019-06-23'
     GROUP BY book_id
     HAVING SUM(quantity)>=10)








