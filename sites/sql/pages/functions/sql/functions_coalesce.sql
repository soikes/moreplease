SELECT name_first, coalesce(length(name_first), 0)
    AS length
FROM users;
