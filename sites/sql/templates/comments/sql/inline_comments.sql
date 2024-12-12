SELECT name_first, name_last
FROM users
WHERE active = 0
AND age < 30; -- Under 30 is our core demographic.
