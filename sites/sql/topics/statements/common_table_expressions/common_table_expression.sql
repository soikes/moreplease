WITH avg_order_size AS (
    SELECT o.product_id AS product_id, avg(o.quantity) AS size
    FROM orders o
    GROUP BY o.product_id
)
SELECT 
    name, 
    avg_order_size.size AS avg_order_size, 
    remaining_stock
FROM products p
INNER JOIN avg_order_size
ON p.id = avg_order_size.product_id
WHERE remaining_stock < avg_order_size.size;
