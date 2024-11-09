SELECT
    name_first,
    name_last,
    length(name_first) + length(name_last) AS length
FROM users
ORDER BY length ASC;
