# Write your MySQL query statement below
SELECT x.event_day AS day, x.emp_id, SUM(x.time) AS total_time
FROM
(SELECT emp_id, event_day, (out_time - in_time) AS time
FROM Employees)x
GROUP BY x.event_day, x.emp_id;