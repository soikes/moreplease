SELECT product_id, quantity
FROM orders
UNION
SELECT product_id, quantity
FROM archived_orders_2023;
