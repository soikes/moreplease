SELECT product_id, quantity
FROM orders
EXCEPT
SELECT product_id, quantity
FROM archived_orders_2023;
