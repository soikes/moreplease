SELECT name, remaining_stock
FROM products p1
WHERE (
    SELECT price, remaining_stock
    FROM products p2
    WHERE p1.id = p2.id
)
BETWEEN (5, 10)
AND (15, 20);
