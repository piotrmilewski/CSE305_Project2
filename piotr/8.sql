SELECT FirstName, LastName
FROM (SELECT D1.Profile1 as Profile
	FROM sys.Date D1
    WHERE Profile2 = 'VazquezFromAlajuela'
	UNION
	SELECT D2.Profile2 as Profile
	FROM sys.Date D2
    WHERE Profile1 = 'VazquezFromAlajuela') d
INNER JOIN sys.Profile p1 ON p1.ProfileID = d.Profile
INNER JOIN sys.Person p2 ON p1.OwnerSSN = p2.SSN
