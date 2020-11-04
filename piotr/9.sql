SELECT FirstName, LastName
FROM sys.User u
INNER JOIN sys.Person p ON p.SSN = u.SSN
ORDER BY Rating DESC
LIMIT 3
