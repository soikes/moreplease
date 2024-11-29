WITH stock_statuses AS (
    SELECT name,
        remaining_stock,
        CASE
            WHEN remaining_stock < 5
                THEN 1
            WHEN remaining_stock <= 10 AND category = 'Food'
                THEN 2
            WHEN remaining_stock <= 20
                THEN 3
            ELSE 4
        END
    AS id
    FROM products
),
status_labels AS (
    SELECT 1 AS status_id, 
    'Critical Restock' AS label
    UNION SELECT 2, 'Urgent Restock'
    UNION SELECT 3, 'Restock Soon'
    UNION SELECT 4, 'No Restock Needed'
)
SELECT ss.name, 
    ss.remaining_stock, 
    sl.label AS needs_restock
FROM stock_statuses ss
INNER JOIN status_labels sl
    ON ss.id = sl.status_id
ORDER BY ss.id;
