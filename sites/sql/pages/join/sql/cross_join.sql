SELECT users.name_first, users.email_address, donations.amount
FROM users
CROSS JOIN donations;
