SELECT category, sum(remaining_stock)
    AS total_remaining
FROM products
GROUP BY category;
