SELECT count(*) AS total_orders,
    p.category,
    strftime("%m", o.date_ordered) AS month
FROM orders o
INNER JOIN products p
    ON o.product_id = p.id
GROUP BY p.category, month
ORDER BY month ASC;
