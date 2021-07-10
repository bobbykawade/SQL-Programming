WITH GAME_CTE AS
(SELECT player_id, MIN(event_date) as first_login
FROM Activity 
GROUP BY player_id
ORDER BY player_id)

SELECT Activity.player_id, Activity.device_id FROM Activity JOIN GAME_CTE
ON GAME_CTE.player_id = Activity.player_id
WHERE Activity.event_date = GAME_CTE.first_login
