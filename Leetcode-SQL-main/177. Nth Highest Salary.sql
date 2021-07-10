CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT Salary from
          (SELECT Salary, 
           DENSE_RANK() OVER(ORDER BY Salary DESC) rnk
           FROM Employee) AS emp
      WHERE rnk = N limit 1
      
      
  );
END