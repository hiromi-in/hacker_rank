SELECT CASE WHEN Occupation = 'Doctor' THEN Name+'(D)'
            WHEN Occupation = 'Actor' THEN Name+'(A)'
            WHEN Occupation = 'Professor' THEN Name+'(P)'
            WHEN Occupation = 'Singer' THEN Name+'(S)'
            END AS Name
FROM OCCUPATIONS
UNION
(SELECT CASE WHEN Occupation = 'Doctor' THEN 'There are a total of ' + CONVERT(varchar(2),SUM(CASE WHEN Occupation = 'Doctor' THEN 1 ELSE 0 END)) + ' doctors.'
             WHEN Occupation = 'Singer' THEN 'There are a total of ' + CONVERT(varchar(2),SUM(CASE WHEN Occupation = 'Singer' THEN 1 ELSE 0 END)) + ' singers.'
             WHEN Occupation = 'Actor' THEN 'There are a total of ' + CONVERT(varchar(2),SUM(CASE WHEN Occupation = 'Actor' THEN 1 ELSE 0 END)) + ' actors.'
             WHEN Occupation = 'Professor' THEN 'There are a total of ' + CONVERT(varchar(2),SUM(CASE WHEN Occupation = 'Professor' THEN 1 ELSE 0 END)) + ' professors.'
        END AS Occ
FROM OCCUPATIONS 
GROUP BY Occupation
)
 ORDER BY COUNT(Occupation), Occupation
