SELECT name, category, price
FROM products p1
WHERE price = (
    SELECT max(price)
    FROM products p2
    WHERE p1.category = p2.category
)
ORDER BY price DESC;
