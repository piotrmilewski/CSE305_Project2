DROP TABLE IF EXISTS temp;

CREATE TABLE temp AS
SELECT Date, totalAVG
FROM (SELECT DATE(Date_Time) AS Date, (AVG(User1Rating)+AVG(User2Rating))/2 AS totalAVG
	  FROM sys.Date
      GROUP BY DATE(Date_Time)) d;

SELECT a.Date
FROM temp a
WHERE a.totalAvg = (SELECT MAX(b.totalAvg)
				     FROM temp b);

DROP TABLE temp;