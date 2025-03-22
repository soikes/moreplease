CREATE TABLE shows (id INT PRIMARY KEY, title TEXT, genre TEXT);
CREATE TABLE episodes (id INT PRIMARY KEY, show_id INTEGER, title TEXT, season INTEGER, number INTEGER, air_date TEXT, rating REAL, viewers INTEGER, budget INTEGER);

INSERT INTO shows (id, title, genre) VALUES 
    (1, 'Lost', 'Drama'),
    (2, 'Breaking Bad', 'Drama'),
    (3, 'Schitt''s Creek', 'Comedy'),
    (4, 'Planet Earth', 'Documentary'),
    (5, 'Cowboy Bebop', 'Animation'),
    (6, 'Game of Thrones', 'Drama');

INSERT INTO episodes (id, show_id, title, season, number, air_date, rating, viewers, budget) VALUES
    (1, 1, 'Pilot', 1, 1, '2004-09-22', 9.1, 18650000, 14000000),
    (2, 1, 'Stranger in a Strange Land', 3, 9, '2007-02-21', 6.8, 12840000, 3000000),
    (3, 1, 'The End', 6, 17, '2010-05-23', 8.8, 13500000, 5000000),

    (4, 2, 'Pilot', 1, 1, '2008-01-20', 8.9, 1410000, 3000000),
    (5, 2, 'Face Off', 4, 13, '2011-10-09', 9.9, 1930000, 3500000),
    (6, 2, 'Felina', 5, 16, '2013-09-29', 9.9, 10280000, 4000000),

    (7, 3, 'Our Cup Runneth Over', 1, 1, '2015-01-13', 7.6, 263000, 500000),
    (8, 3, 'Stop Saying Lice!', 3, 11, '2017-03-21', 8.0, 751000, 750000),
    (9, 3, 'Happy Ending', 6, 14, '2020-04-07', 9.5, 1305000, 1000000),

    (10, 4, 'From Pole to Pole', 1, 1, '2006-03-05', 9.4, 4700000, 2000000),
    (11, 4, 'Mountains', 1, 2, '2006-03-12', 9.3, 4420000, 2000000),
    (12, 4, 'Fresh Water', 1, 3, '2006-03-19', 9.2, 4320000, 2000000),

    (13, 5, 'Asteroid Blues', 1, 1, '1998-10-24', 8.9, 1200000, 400000),
    (14, 5, 'Ballad of Fallen Angels', 1, 5, '1998-11-21', 9.4, 1500000, 400000),
    (15, 5, 'The Real Folk Blues (Part 2)', 1, 26, '1999-04-24', 9.6, 2100000, 500000),

    (16, 6, 'Winter Is Coming', 1, 1, '2011-04-17', 9.3, 2220000, 6000000),
    (17, 6, 'The Rains of Castamere', 3, 9, '2013-06-02', 9.9, 5220000, 8000000),
    (18, 6, 'The Iron Throne', 8, 6, '2019-05-19', 4.1, 13610000, 15000000);
