SELECT DATE(Date_Time) AS Date, AVG(indAvg) as Avg
FROM (SELECT Date_Time, (User1Rating+User2Rating)/2 AS indAvg
	FROM sys.Date) d
GROUP BY DATE(Date_Time)
ORDER BY AVG(indAvg) DESC
LIMIT 3