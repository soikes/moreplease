UPDATE users 
SET email_address = 'james@mitchellfamily.co'
WHERE id = 1
RETURNING id, email_address;
