SELECT users.name_first, 
    users.email_address, 
    donations.amount
FROM users
LEFT JOIN donations
ON users.id = donations.user_id
WHERE donations.user_id IS NULL;
