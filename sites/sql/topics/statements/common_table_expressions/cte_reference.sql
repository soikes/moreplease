WITH category_avg AS (
    SELECT category, avg(price) AS avg
    FROM products
    GROUP BY category
)
SELECT 
    p.name,
    p.price,
    round(category_avg.avg, 2) AS category_avg,
    round(p.price - category_avg.avg, 2) AS diff_from_avg
FROM products p
INNER JOIN category_avg
ON p.category = category_avg.category
ORDER BY abs(diff_from_avg) DESC;
