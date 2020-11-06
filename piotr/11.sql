DROP TABLE IF EXISTS temp;

CREATE TABLE temp AS
SELECT FirstName, LastName, COUNT(Profile) AS NumberOfDates
FROM (SELECT D1.Profile1 as Profile, Date_Time
	  FROM sys.Date D1
	  UNION
	  SELECT D2.Profile2 as Profile, Date_Time
	  FROM sys.Date D2) d
INNER JOIN sys.Profile p1 ON p1.ProfileID = d.Profile
INNER JOIN sys.Person p2 ON p1.OwnerSSN = p2.SSN
GROUP BY FirstName, LastName;

SELECT a.FirstName, a.LastName
FROM temp a
WHERE a.NumberOfDates = (SELECT MAX(b.NumberOfDates)
						 FROM temp b);

DROP TABLE temp;