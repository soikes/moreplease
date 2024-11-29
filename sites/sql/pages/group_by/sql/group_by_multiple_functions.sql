SELECT category,
    min(price) AS min_price,
    max(price) AS max_price,
    round(avg(price), 2) AS avg_price
FROM products
GROUP BY category;
