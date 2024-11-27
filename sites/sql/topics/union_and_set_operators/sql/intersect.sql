SELECT product_id, quantity
FROM orders
INTERSECT
SELECT product_id, quantity
FROM archived_orders_2023;
