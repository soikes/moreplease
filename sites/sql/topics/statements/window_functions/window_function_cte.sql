WITH episode_rating_stats AS (
    SELECT
    s.title as show,
    e.title as title,
    e.season,
    e.number,
    rating,
    round(
        avg(rating) OVER (PARTITION BY s.id),
    1) AS show_rating
    FROM episodes e
    INNER JOIN shows s
        ON e.show_id = s.id
)
SELECT
    show,
    's' || season || 'e' || number AS episode,
    title,
    printf('%d%', round(rating / show_rating, 2) * 100) 
        AS episode_strength
FROM episode_rating_stats
ORDER BY round(rating / show_rating, 2) DESC;
