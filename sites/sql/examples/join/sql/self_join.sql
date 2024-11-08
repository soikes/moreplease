SELECT
    u1.email_address AS referrer_email,
    u2.email_address AS referred_email
FROM users u1
INNER JOIN users u2
ON u1.id = u2.referrer_id;
