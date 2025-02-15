WITH 
order_retail_value AS (
    SELECT 
        o.id AS order_id, 
        p.id AS product_id, 
        avg(o.quantity * p.price) AS avg_total
    FROM orders o
    INNER JOIN products p
    ON o.product_id = p.id
    GROUP BY p.id
),
stock_retail_value AS (
    SELECT 
        p.id AS product_id, 
        p.name AS product, 
        p.remaining_stock * p.price AS total
    FROM products p
)
SELECT 
    s.product,
    round(s.total, 2) AS stock_value,
    round(o.avg_total, 2) AS avg_order_value,
    round(s.total - o.avg_total, 2) AS overstock_value
FROM stock_retail_value s
INNER JOIN order_retail_value o
ON s.product_id = o.product_id
WHERE overstock_value > 0
ORDER BY overstock_value DESC;
