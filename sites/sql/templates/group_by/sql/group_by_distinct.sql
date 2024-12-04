SELECT category, count(DISTINCT vendor_id)
    AS vendors
FROM products
GROUP BY category;
