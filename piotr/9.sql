SELECT FirstName, LastName
FROM sys.User u
INNER JOIN sys.Person p ON p.SSN = u.SSN
WHERE u.Rating = (SELECT MAX(u2.Rating)
				  FROM sys.User u2)
