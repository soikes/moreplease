SELECT name, price
FROM products
WHERE price > (
    SELECT avg(price)
    FROM products
);
