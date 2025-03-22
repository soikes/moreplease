SELECT 
    s.title AS show, 
    e.title AS episode, 
    rating,
    round(
        avg(rating) OVER (PARTITION BY s.id),
    1) AS show_rating
FROM episodes e
INNER JOIN shows s
    ON e.show_id = s.id
ORDER BY show_rating DESC;
