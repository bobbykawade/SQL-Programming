SELECT Score, DENSE_RANK() OVER(ORDER BY Score DESC) as 'Rank'
 FROM Scores


