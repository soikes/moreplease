SELECT count(*) AS fulfilled_orders,
    strftime("%m", date_arrived) AS month
FROM orders
GROUP BY month
ORDER BY month ASC;
