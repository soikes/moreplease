DELETE FROM users
WHERE id = 8
RETURNING id, email_address;
