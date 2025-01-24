SELECT DISTINCT o.product_id, o.quantity
FROM orders o
INNER JOIN archived_orders_2023 ao
ON o.product_id = ao.product_id
AND o.quantity = ao.quantity;
