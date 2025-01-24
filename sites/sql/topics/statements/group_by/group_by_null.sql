SELECT strftime('%m', date_arrived) AS month_arrived,
    count(*) AS orders
FROM orders
GROUP BY month_arrived
ORDER BY month_arrived ASC;
