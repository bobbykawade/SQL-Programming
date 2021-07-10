WITH Consecutive_CTE(Num, leadNum, lagNum) AS
(SELECT Num, LEAD(Num) OVER(ORDER BY Id), LAG(Num) OVER(ORDER BY Id) FROM Logs)

SELECT DISTINCT Num as ConsecutiveNums
FROM Consecutive_CTE 
WHERE Num = leadNum
AND Num = lagNum