SELECT upper(u.name_first) AS first_name,
    strftime('%H:%M', t.date) AS transaction_time,
    abs(round(t.amount * 1.10, 2)) AS amount_incl_fee
FROM users u
INNER JOIN transactions t
    ON u.id = t.user_id
WHERE abs(amount_incl_fee) >= 20.0
ORDER BY strftime('%H', t.date) DESC;
