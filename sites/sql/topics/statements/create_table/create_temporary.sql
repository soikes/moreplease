CREATE TEMPORARY TABLE users_gen_x AS
SELECT * FROM users
WHERE age >= 44 AND age < 59;

CREATE TEMPORARY TABLE users_millennials AS
SELECT * FROM users
WHERE age >= 28 AND age < 44;

CREATE TEMPORARY TABLE users_gen_z AS
SELECT * FROM users
WHERE age >= 15 AND age < 28;

SELECT name_first, name_last, age
FROM users_millennials;
