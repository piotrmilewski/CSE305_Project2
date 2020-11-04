SELECT FirstName, LastName, Count(Profile)
FROM (SELECT D1.Profile1 as Profile, Date_Time
	FROM sys.Date D1
	UNION
	SELECT D2.Profile2 as Profile, Date_Time
	FROM sys.Date D2) d
INNER JOIN sys.Profile p1 ON p1.ProfileID = d.Profile
INNER JOIN sys.Person p2 ON p1.OwnerSSN = p2.SSN
GROUP BY FirstName, LastName
ORDER BY COUNT(Profile) DESC
LIMIT 3