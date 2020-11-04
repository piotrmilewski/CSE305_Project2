Select P.SSN, P.FirstName, P.LastName, P.Street, P.City, P.State, P.Zipcode, P.Email, P.Telephone, U.PPP, U.Rating, U.DateOfLastAct
FROM sys.Person P
INNER JOIN sys.User U on U.SSN = P.SSN;