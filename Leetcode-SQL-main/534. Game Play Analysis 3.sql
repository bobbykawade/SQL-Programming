# Write your MySQL query statement below
WITH DATE_CTE AS
(SELECT player_id, event_date from Activity
ORDER BY player_id, event_date)

SELECT a.player_id, d.event_date, SUM(a.games_played) AS games_played_so_far
FROM Activity a JOIN DATE_CTE d
ON a.player_id = d.player_id
WHERE a.event_date <= d.event_date
GROUP BY a.player_id, d.event_date