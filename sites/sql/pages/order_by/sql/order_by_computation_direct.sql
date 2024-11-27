SELECT name_first, name_last
FROM users
ORDER BY length(name_first) + length(name_last) ASC;
