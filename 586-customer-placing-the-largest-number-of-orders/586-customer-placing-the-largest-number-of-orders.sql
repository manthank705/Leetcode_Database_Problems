# Write your MySQL query statement below
SELECT x.customer_number
FROM
(SELECT customer_number, count(order_number) AS total
FROM orders
GROUP BY customer_number)x
ORDER BY x.total DESC
LIMIT 1;