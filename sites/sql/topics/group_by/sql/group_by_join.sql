SELECT s.name, avg(
    round(
        julianday(o.date_arrived) - julianday(o.date_ordered),
        0)
    )
    AS average_lead_time_days
FROM suppliers s
INNER JOIN orders o
ON s.id = o.supplier_id
GROUP BY s.id;
