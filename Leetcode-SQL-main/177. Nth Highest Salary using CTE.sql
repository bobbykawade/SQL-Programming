CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      WITH NthHightest_CTE AS 
      (SELECT Salary, DENSE_RANK() OVER(ORDER BY Salary DESC) AS rnk
      FROM Employee)
      SELECT Salary FROM NthHightest_CTE
      WHERE rnk = N limit 1
      
      
  );
END