# Write your MySQL query statement below
SELECT x.class FROM
(
SELECT class, COUNT(1) AS total FROM Courses
GROUP BY class)x
WHERE x.total>=5;

