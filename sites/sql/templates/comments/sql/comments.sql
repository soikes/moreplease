-- Find Canadian users for bilingual communications.
SELECT email_address
FROM users
WHERE active = 1
AND email_address LIKE '%.ca';
