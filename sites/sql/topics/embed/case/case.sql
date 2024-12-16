SELECT name,
    CASE
        WHEN price < 5.00 THEN
            'Budget'
        WHEN price < 40.00 THEN
            'Standard'
        ELSE 'Luxury'
    END AS category
FROM products;
