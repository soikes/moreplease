CREATE TABLE users(id INTEGER PRIMARY KEY, name_first TEXT, name_last TEXT, age INTEGER, email_address TEXT, active INTEGER);

INSERT INTO users VALUES
    (1, 'Marcus', 'Crawford', 25, 'marcus@mcrawford.ca', 1),
    (2, 'Elena', 'Moreno', 40, 'elena@hellocorp.com', 1),
    (3, 'Simon', 'Chen', 22, 'simon@sqlanalytics.io', 0),
    (4, 'Priya', 'Amini', 31, 'priya@aminiconsulting.com', 0),
    (5, 'Zara', 'Amini', 30, 'zara@aminiconsulting.com', 1);
