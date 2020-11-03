SELECT month(Date_Time) as Month, year(Date_Time) as Year, sum(BookingFee) AS Revenue, count(*) as Number_Of_Dates
FROM sys.Date
GROUP BY month(Date_Time), year(Date_Time);