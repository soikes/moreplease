SELECT 
    s.title,
    'S' || e.season || 'E' || e.number AS episode,
    s.genre,
    e.rating,
    rank() OVER (
        PARTITION BY s.genre ORDER BY e.rating DESC
    ) AS rank_by_genre
FROM episodes e
INNER JOIN shows s
ON e.show_id = s.id;
