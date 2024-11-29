SELECT product_id, quantity
FROM orders
UNION ALL
SELECT product_id, quantity
FROM archived_orders_2023
UNION ALL
SELECT 10, 100;
