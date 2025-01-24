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
ORDER BY 
    CASE needs_restock
        WHEN 'Critical Restock' THEN 1
        WHEN 'Urgent Restock' THEN 2
        WHEN 'Restock Soon' THEN 3
        WHEN 'No Restock Needed' THEN 4
    END
ASC;
