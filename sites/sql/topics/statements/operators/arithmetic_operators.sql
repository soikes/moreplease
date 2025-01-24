SELECT 
    name_first, 
    name_last, 
    (age - (age % 10)) / 10 AS decades_old
FROM users;
