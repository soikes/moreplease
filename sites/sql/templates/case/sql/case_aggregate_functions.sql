SELECT 
    v.name AS vendor,
    SUM(CASE
        WHEN p.price < 5.00 THEN 1
        ELSE 0
    END) AS budget,
    SUM(CASE
        WHEN p.price < 40.00 THEN 1
        ELSE 0
    END) AS standard,
    SUM(CASE
        WHEN p.price >= 40.00 THEN 1
        ELSE 0
    END) AS luxury
FROM vendors v
LEFT JOIN products p
ON v.id = p.vendor_id
GROUP BY v.id;
