SELECT u.name_first name, u.email_address email, d.amount
FROM users u
INNER JOIN donations d
ON u.id = d.user_id;
