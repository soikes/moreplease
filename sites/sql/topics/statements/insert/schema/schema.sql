CREATE TABLE users(id INTEGER PRIMARY KEY, name_first TEXT, name_last TEXT, age INTEGER, email_address TEXT, created_at TEXT DEFAULT (datetime('now')));

INSERT INTO users VALUES
(1, 'James', 'Mitchell', 30, 'jmitchell@email.net', '2023-04-30 09:20:00'),
(2, 'Simon', 'Chen', 22, 'simon@sqlanalytics.io', '2023-06-15 14:30:00'),
(3, 'Zara', 'Amini', 30, 'zara@aminiconsulting.com', '2023-08-22 11:15:00'),
(4, 'James', 'Weber', 46, 'wjames@email.org', '2023-11-05 15:45:00'),
(5, 'Charlotte', 'Davies', 30, 'charlotte@zapzoop.io', '2024-02-12 09:49:00'),
(6, 'Marcus', 'Crawford', 25, 'marcus@mcrawford.ca', '2024-03-01 09:10:01'),
(7, 'Elena', 'Moreno', 40, 'elena@hellocorp.com', '2024-03-12 19:29:11'),
(8, 'Priya', 'Amini', 31, 'priya@aminiconsulting.com', '2024-03-24 16:40:00');
