SELECT concat(
    upper(name_last), ', ', substr(name_first, 1, 1)
) 
AS name_full
FROM users
ORDER BY name_full ASC;
