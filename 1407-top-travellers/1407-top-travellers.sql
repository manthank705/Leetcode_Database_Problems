# Write your MySQL query statement below

SELECT u.name, 

CASE WHEN x.dist IS NULL THEN 0
ELSE x.dist
END AS travelled_distance  FROM
(
SELECT r.user_id, SUM(r.distance) AS dist
FROM Rides r 
GROUP BY r.user_id)x
RIGHT JOIN Users u ON u.id = x.user_id
ORDER BY travelled_distance DESC, u.name