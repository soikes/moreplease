CREATE TABLE users(id INTEGER PRIMARY KEY, name_first TEXT, name_last TEXT, active BOOL, email_address TEXT);

INSERT INTO users VALUES
    (1, "Michael", "Soikkeli", true, "mike@soikke.li"),
    (2, "Pichael", "Soikkeli", false, "pike@soikke.li"),
    (3, "Michael", "Smith", false, "mike@smith.ca"),
    (4, "Alana", "Lyons", true, "alana@lyons.ca"),
    (5, "Bort", "Simpson", true, "bort@springfield.gov");
