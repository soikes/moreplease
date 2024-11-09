CREATE TABLE users(id INTEGER PRIMARY KEY, name_first TEXT, name_last TEXT, email_address TEXT);
CREATE TABLE donations(id INTEGER PRIMARY KEY, user_id INTEGER, date TEXT, amount REAL);

INSERT INTO users VALUES
    (1, 'Marcus', 'Crawford', 'marcus@mcrawford.ca'),
    (2, 'Elena', 'Moreno', 'elena@hellocorp.com'),
    (3, 'Simon', 'Chen', 'simon@sqlanalytics.io'),
    (4, 'Priya', 'Amini', 'priya@aminiconsulting.com'),
    (5, 'Zara', 'Amini', 'zara@aminiconsulting.com');

INSERT INTO donations VALUES
    (1, 1, '2024-04-12 09:10:01', 20.0),
    (2, 3, '2024-04-19 12:40:15', 10.0),
    (3, 5, '2024-05-01 19:51:45', 40.0),
    (4, 2, '2024-05-03 14:09:11', 75.0),
    (5, 99, '2024-06-01 01:11:44', 100.0);
