SELECT v.name, avg(
    round(
        julianday(o.date_arrived) - julianday(o.date_ordered),
        0)
    )
    AS average_lead_time_days
FROM vendors v
INNER JOIN orders o
ON v.id = o.vendor_id
GROUP BY v.id;
