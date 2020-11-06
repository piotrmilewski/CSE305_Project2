SELECT month(Date_Time) as Month, year(Date_Time) as Year, sum(BookingFee) AS Revenue, count(*) as Number_Of_Dates
FROM sys.Date
WHERE month(Date_Time) = 9 AND year(Date_Time) = 2014
GROUP BY month(Date_Time), year(Date_Time);