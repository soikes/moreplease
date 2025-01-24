SELECT users.name_first, 
    users.email_address, 
    donations.amount
FROM users
INNER JOIN donations
ON users.id = donations.user_id
WHERE donations.amount >= 20.0;
