SELECT 
    vendor_sales.name AS vendor,
    round(vendor_sales.total_spend, 2) AS total_2mo_spend
FROM (
    SELECT 
        v.name,
        SUM(product_orders.quantity * product_orders.price) AS total_spend
    FROM vendors v
    INNER JOIN (
        SELECT 
            p.vendor_id,
            p.id,
            p.price,
            o.quantity
        FROM products p
        INNER JOIN orders o
        ON p.id = o.product_id
        WHERE o.date_ordered BETWEEN 
            date('now', '-2 months') 
            AND date('now')
    ) product_orders
    ON v.id = product_orders.vendor_id
    GROUP BY v.name
) AS vendor_sales
ORDER BY total_2mo_spend DESC;

-- Equivalent:
/* 
SELECT v.name AS vendor, 
    round(sum(o.quantity * p.price), 2) AS total_2mo_spend
FROM vendors v
INNER JOIN products p
    ON v.id = p.vendor_id
INNER JOIN orders o
    ON p.id = o.product_id
WHERE o.date_ordered BETWEEN 
    date('now', '-2 month') 
    AND date('now')
GROUP BY v.name
ORDER BY total_2mo_spend DESC;
*/
