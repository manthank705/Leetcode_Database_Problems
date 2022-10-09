# Write your MySQL query statement below
SELECT x.activity_date AS day, Count(1) AS active_users
FROM
(
SELECT user_id, activity_date
FROM Activity
GROUP BY  user_id, activity_date
)x
WHERE x.activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY x.activity_date
