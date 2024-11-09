SELECT name_first, age, email_address
FROM users
WHERE email_address LIKE '%.com'
AND age NOT IN (40, 31);
