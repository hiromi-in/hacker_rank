---------------------Top earners--------------------------
SELECT (salary * months) AS total_earning, count(*)
FROM EMPLOYEE
GROUP BY total_earning
ORDER BY total_earning DESC
LIMIT 1;

-----Weather observation station 2-----------------------
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;
