CREATE TABLE users(id INTEGER PRIMARY KEY, name_first TEXT, name_last TEXT, email_address TEXT, created_at TEXT DEFAULT (datetime('now')), active INTEGER);

INSERT INTO users VALUES
(1, 'James', 'Mitchell', 'jmitchell@email.net', '2023-04-30 09:20:00', 1),
(2, 'Simon', 'Chen', 'simon@sqlanalytics.io', '2023-06-15 14:30:00', 1),
(3, 'Zara', 'Amini', 'zara@aminiconsulting.com', '2023-08-22 11:15:00', 1),
(4, 'James', 'Weber', 'wjames@email.org', '2023-11-05 15:45:00', 1),
(5, 'Charlotte', 'Davies', 'charlotte@zapzoop.io', '2024-02-12 09:49:00', 0),
(6, 'Marcus', 'Crawford', 'marcus@mcrawford.ca', '2024-03-01 09:10:01', 0),
(7, 'Elena', 'Moreno', 'elena@hellocorp.com', '2024-03-12 19:29:11', 1),
(8, 'Priya', 'Amini', 'priya@aminiconsulting.com', '2024-03-24 16:40:00', 1);
