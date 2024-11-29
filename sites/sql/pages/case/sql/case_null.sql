SELECT CASE
    WHEN date_arrived IS NULL
        THEN 'Pending'
    ELSE 'Arrived: ' || date_arrived
END AS arrival_status
FROM orders;
