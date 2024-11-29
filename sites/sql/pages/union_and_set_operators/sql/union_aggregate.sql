SELECT 2024 AS year, sum(quantity) AS purchase_volume
FROM orders
UNION ALL
SELECT 2023 AS year, sum(quantity)
FROM archived_orders_2023
GROUP BY year;
