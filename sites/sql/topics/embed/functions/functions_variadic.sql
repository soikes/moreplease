SELECT printf("%s %s withdrew %.2f.",
    u.name_first,
    u.name_last,
    abs(t.amount)
) AS output
FROM users u
INNER JOIN transactions t
ON u.id = t.user_id
WHERE t.amount < 0;
