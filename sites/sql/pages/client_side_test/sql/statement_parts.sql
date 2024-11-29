SELECT strftime("%H", d.date)
FROM users u
INNER JOIN donations d
ON u.id = d.user_id;
