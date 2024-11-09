SELECT name_first, name_last
FROM users
ORDER BY LENGTH(name_first) + LENGTH(name_last) ASC;
