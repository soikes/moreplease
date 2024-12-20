SELECT count(*) AS fulfilled_orders,
    strftime('%m', date_arrived) AS month
FROM orders
WHERE month IS NOT NULL
GROUP BY month
HAVING fulfilled_orders > 2
ORDER BY month ASC;
