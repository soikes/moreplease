SELECT users.email_address user, 
    donations.amount, 
    charities.name charity
FROM users
INNER JOIN donations
    ON users.id = donations.user_id
INNER JOIN charities
    ON donations.charity_id = charities.id;
