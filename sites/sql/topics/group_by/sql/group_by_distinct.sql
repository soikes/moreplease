SELECT category, count(DISTINCT supplier_id)
    AS suppliers
FROM products
GROUP BY category;
