SELECT p.name AS product, o.quantity, o.date_ordered
FROM orders o
INNER JOIN products p
ON o.product_id = p.id
WHERE (p.id, o.quantity) IN (
    SELECT product_id, quantity
    FROM orders
    WHERE id = 1
);
