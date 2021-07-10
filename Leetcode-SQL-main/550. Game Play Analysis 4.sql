WITH FIRST_LOGIN_CTE AS
(SELECT player_id, MIN(event_date) as first_login
FROM Activity
GROUP BY player_id),
TOTAL_PLAYERS_CTE AS
(SELECT COUNT(DISTINCT player_id) AS num_players FROM ACTIVITY)

SELECT ROUND((
SELECT COUNT(1)
FROM Activity a JOIN FIRST_LOGIN_CTE f
WHERE a.player_id = f.player_id 
AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY))/
(SELECT num_players FROM TOTAL_PLAYERS_CTE), 2) AS fraction
