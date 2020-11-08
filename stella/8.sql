SELECT ProfileId, OwnerSSN, Age, DatingAgeRangeStart, DatingAgeRangeEnd, DatingGeoRange, 
	M_F, Hobbies, Height, Weight, HairColor, CreationDate, LastModDate
FROM sys.Profile p
JOIN sys.User u
	ON p.OwnerSSN = u.SSN
ORDER BY u.DateOfLastAct DESC