SELECT 
    s.title AS show, 
    e.title AS episode, 
    e.rating,
    round(avg_ratings.show_rating, 1) AS show_rating
FROM episodes e
INNER JOIN shows s
    ON e.show_id = s.id
INNER JOIN (
    SELECT
        show_id,
        avg(rating) AS show_rating
    FROM episodes
    GROUP BY show_id
) AS avg_ratings
    ON e.show_id = avg_ratings.show_id
ORDER BY show_rating DESC;
