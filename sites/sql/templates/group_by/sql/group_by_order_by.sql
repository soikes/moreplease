SELECT strftime("%m", o.date_ordered) AS month,
    p.category,
    count(*) AS total_orders
FROM orders o
INNER JOIN products p
    ON o.product_id = p.id
GROUP BY month, p.category
ORDER BY month DESC;
