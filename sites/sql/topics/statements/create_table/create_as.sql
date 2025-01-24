CREATE TABLE users_2023 AS
SELECT * FROM users
WHERE created_at < '2024';

SELECT name_first, name_last, created_at 
FROM users_2023;
