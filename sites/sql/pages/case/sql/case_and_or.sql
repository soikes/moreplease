SELECT name,
    remaining_stock,
    CASE
        WHEN remaining_stock < 5
            THEN 'Critical Restock'
        WHEN remaining_stock <= 10 AND category = 'Food'
            THEN 'Urgent Restock'
        WHEN remaining_stock <= 20
            THEN 'Restock Soon'
        ELSE 'No Restock Needed'
    END
AS needs_restock
FROM products
ORDER BY needs_restock;
