1113. Reported Posts
https://leetcode.com/problems/reported-posts/
SELECT extra AS report_reason, COUNT(DISTINCT(post_id)) AS report_count
FROM Actions
WHERE action_date = subdate（“2019-09-05”，1）
    AND extra IS NOT NULL
    AND action = "report"
GROUP BY extra
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
512. Game Play Analysis II
https://leetcode.com/problems/game-play-analysis-ii/
SELECT player_id, device_id
FROM activity
WHERE (player_id, event_date) in 
    (SELECT player_id, MIN(event_date)
     FROM activity
     GROUP BY player_id)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
534. Game Play Analysis III
https://leetcode.com/problems/game-play-analysis-iii/
SELECT a1.player_id, a1.event_date, SUM(a2.games_played) AS games_played_so_far
FROM activity a1
LEFT JOIN activity a2
ON a1.player_id = a2.player_id
AND a1.event_date >= a2.event_date
GROUP BY 1,2
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
550. Game Play Analysis IV
https://leetcode.com/problems/game-play-analysis-iv/
SELECT ROUND(
    (SELECT COUNT(DISTINCT player_id)
        FROM Activity
        WHERE (player_id, subdate(event_date,1))
            IN (SELECT player_id, MIN(event_date)
                FROM Activity
                GROUP BY player_id))
      /
      (SELECT COUNT(DISTINCT player_id)
        FROM activity)
    ,2) as fraction
