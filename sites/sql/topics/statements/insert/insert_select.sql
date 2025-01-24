INSERT INTO users 
    (name_first, name_last, age, email_address, created_at)
SELECT 
    name_first, name_last, age, email_address, created_at
FROM users;
