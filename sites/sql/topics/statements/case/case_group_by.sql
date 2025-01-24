SELECT avg(quantity),
    CASE
        WHEN quantity <= 10 THEN 'Small'
        WHEN quantity <= 50 THEN 'Medium'
        WHEN quantity > 50 THEN 'Large'
    END AS order_size
FROM orders
GROUP BY order_size;
