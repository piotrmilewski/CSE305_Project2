SELECT DATE(Date_Time) as Date, SUM(BookingFee) as Revenue
FROM sys.Date
WHERE DATE(Date_Time) = '2014-10-06'
GROUP BY DATE(Date_Time)