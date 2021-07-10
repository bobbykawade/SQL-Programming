SELECT Email from Person 
GROUP BY Email
HAVING Count(Email) > 1