SELECT FirstName, LastName, SUM(BookingFee) as TotalRevenue
FROM (SELECT D1.Profile1 as Profile, D1.BookingFee
	FROM sys.Date D1
	UNION
	SELECT D2.Profile2 as Profile, D2.BookingFee
	FROM sys.Date D2) d
INNER JOIN sys.Profile p1 ON p1.ProfileID = d.Profile
INNER JOIN sys.Person p2 ON p1.OwnerSSN = p2.SSN
GROUP BY OwnerSSN
ORDER BY SUM(BookingFee) DESC
LIMIT 1