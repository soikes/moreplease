SELECT name_first, name_last, age
FROM users
WHERE age BETWEEN 20 AND 30
AND last_login IS NOT NULL
AND name_first LIKE '%Char%';
