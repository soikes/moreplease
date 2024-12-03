WITH shelf_life AS (
    SELECT 'Food' AS category, 21 AS shelf_life_days
    UNION
    SELECT 'Toiletries', 365*2
    UNION
    SELECT 'Pet Care', 365
    UNION
    SELECT 'Automotive', 365*5
)
SELECT p.name, p.category, sl.shelf_life_days
FROM products p
INNER JOIN shelf_life sl
ON p.category = sl.category;
