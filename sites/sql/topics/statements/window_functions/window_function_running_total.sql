WITH cumulative_stats AS (
    SELECT
    show_id,
    air_date,
    sum(viewers) OVER (ORDER BY air_date ASC)
        AS cumulative_viewers,
    sum(budget) OVER (ORDER BY air_date ASC)
        AS cumulative_budget
    FROM episodes
)
SELECT 
    air_date,
    cumulative_budget,
    cumulative_viewers,
    round(cast(cumulative_budget AS REAL) / cumulative_viewers, 2)
        AS spend_per_viewer
FROM cumulative_stats
INNER JOIN shows s
    ON s.id = show_id
WHERE s.genre = 'Drama'
ORDER BY air_date ASC;
