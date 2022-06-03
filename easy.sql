---------------------Top earners--------------------------
SELECT (salary * months) AS total_earning, count(*)
FROM EMPLOYEE
GROUP BY total_earning
ORDER BY total_earning DESC
LIMIT 1;

-----Weather observation station 2-----------------------
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;

-----Weather observation station 13----------------------
SELECT TRUNCATE(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-----Weather observation station 14----------------------
SELECT TRUNCATE(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;

-----Weather observation station 15----------------------
SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;
