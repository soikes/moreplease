CREATE TABLE doctors(id INTEGER PRIMARY KEY, name_first TEXT, name_last TEXT);
CREATE TABLE services(id INTEGER PRIMARY KEY, description TEXT, fee REAL);
CREATE TABLE claims(id INTEGER PRIMARY KEY, date TEXT DEFAULT CURRENT_TIMESTAMP, service_id INTEGER NOT NULL, doctor_id INTEGER NOT NULL);

INSERT INTO doctors(id, name_first, name_last) VALUES
    (1, 'Penelope', 'Carrington'),
    (2, 'Michael', 'Adeleke');

INSERT INTO services(id, description, fee) VALUES
    (1, 'Weather-Proof Hair System', 390.84),
    (2, 'Super Smile Installation', 128.62),
    (3, 'Night Vision Enhancement', 420.77),
    (4, 'Swiss Army Thumb', 789.10);

INSERT INTO claims(id, date, service_id, doctor_id) VALUES
    (1, '2024-04-12 09:10:01', 1, 1),
    (2, '2024-04-12 11:37:46', 4, 1),
    (3, '2024-04-13 05:00:12', 2, 2),
    (4, '2024-04-14 01:05:55', 4, 1),
    (5, '2024-04-14 16:00:32', 3, 1),
    (6, '2024-04-15 20:29:21', 1, 2);
