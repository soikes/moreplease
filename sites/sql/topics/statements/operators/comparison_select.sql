SELECT 
    name_first, 
    name_last,
    (last_login < '2024-03-01') OR
        (last_login IS NULL)
        AS stale_user
FROM users;
