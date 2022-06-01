---------------Contest Leaderboard--------------

WITH test
AS
(SELECT hacker_id AS id, MAX(score) AS score
FROM Submissions
GROUP BY hacker_id, challenge_id)

SELECT t.id, h.name, SUM(t.score)
FROM test t
JOIN Hackers h
ON t.id = h.hacker_id
GROUP BY t.id, h.name
HAVING SUM(t.score) <> 0
ORDER BY SUM(t.score) DESC, t.id
;


-----------SQL Project Planning-------------------
SELECT Start_Date, Min(End_Date)
FROM
(SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date From Projects))a,
(SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects))b
WHERE Start_Date < End_Date
GROUP BY Start_Date
ORDER BY DATEDIFF(MIN(End_Date),Start_Date),Start_Date;


--------------Placements-----------------------
WITH test AS
(SELECT s.ID AS ID, s.Name AS Name, p.Salary AS Salary, f.Friend_ID AS BF
FROM Students s
JOIN Friends f
ON s.ID = f.ID
JOIN Packages p
ON f.ID = p.ID)

SELECT t.Name
FROM test t
JOIN
Packages p
ON t.BF = p.ID
WHERE t.salary < p.Salary
ORDER BY p.salary
;
