SELECT FirstName, LastName, SUM(BookingFee) as TotalRevenue
FROM sys.Date d
INNER JOIN sys.Person p ON p.SSN = d.CustRep
GROUP BY CustRep
ORDER BY SUM(BookingFee) DESC
LIMIT 1