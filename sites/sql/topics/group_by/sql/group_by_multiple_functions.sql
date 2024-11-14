SELECT category, min(price), max(price), round(avg(price), 2)
FROM products
GROUP BY category;
