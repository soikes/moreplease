SELECT name as product_ordered_past_month
FROM products p
WHERE EXISTS (
    SELECT *
    FROM orders o
    WHERE p.id = o.product_id
        AND o.date_ordered 
        BETWEEN date('now', '-1 month') 
            AND date('now')
);
