CREATE TABLE profiles(id INTEGER PRIMARY KEY, username TEXT, active INTEGER, friends INTEGER, rating REAL, profile_image BLOB, created_at TEXT, data_storage ANY);

INSERT INTO profiles VALUES
    (1, "lilacsky", 1, 40, 4.6, "x'89504E...'", '2024-04-12 09:10:01', 'asdf'),
    (2, "lucyloop", 0, 0, NULL, NULL, '2024-01-01 09:50:12', 1234),
    (3, "max_pixels", 1, 67, 4.3, "x'703AFC...'", '2024-03-29 19:30:53', 567.89),
    (4, "r.patel", 1, 35, 4.5, "x'12529B...'", '2024-06-24 23:29:29', "X'F00BA3...'"),
    (5, "ilikecats03", 1, 29, 4.9, "x'571AFA...'", '2024-07-05 09:50:10', NULL);
