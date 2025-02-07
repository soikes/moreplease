SELECT products.name AS product, 
products.remaining_stock,
pending_orders.q AS incoming_stock
FROM (
    SELECT product_id AS pid, quantity AS q
    FROM orders
    WHERE date_arrived IS NULL
) AS pending_orders
INNER JOIN products 
ON pending_orders.pid = products.id
WHERE products.remaining_stock < 5;
