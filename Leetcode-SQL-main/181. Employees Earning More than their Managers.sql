SELECT Name as Employee
FROM Employee e
WHERE e.Salary > (SELECT Salary FROM Employee
                 WHERE Id = e.ManagerId)