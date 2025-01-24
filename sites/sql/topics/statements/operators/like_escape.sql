SELECT name_first, name_last
FROM users
WHERE name_first LIKE '\\_Charlotte' ESCAPE '\\';
