# Write your MySQL query statement below
WITH MAX_SALARY_CTE AS 
(SELECT DepartmentId, MAX(Salary) AS Salary from Employee
GROUP BY DepartmentId)

SELECT d.Name as 'Department', e.Name as 'Employee', e.Salary 
FROM  Employee e JOIN Department d
ON e.DepartmentId = d.Id
WHERE e.Salary in (SELECT Salary FROM MAX_SALARY_CTE WHERE DepartmentId = e.DepartmentId)