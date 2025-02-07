CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, category TEXT, price REAL, remaining_stock INTEGER, vendor_id INTEGER);
CREATE TABLE vendors(id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE orders(id INTEGER PRIMARY KEY, product_id INTEGER, quantity INTEGER, date_ordered TEXT, date_arrived TEXT);

INSERT INTO products VALUES
    (1, 'Cool Splash Cologne', 'Toiletries', 49.99, 25, 2),
    (2, 'More Spice Please Chips', 'Food', 3.99, 60, 1),
    (3, 'Night Shift Coffee', 'Food', 6.99, 1, 1),
    (4, 'Crunchy Munchy Trail Mix', 'Food', 8.99, 5, 3),
    (5, 'Super Glide Floss', 'Toiletries', 1.99, 19, 4),
    (6, 'Big Bark Dog Food', 'Pet Care', 30.00, 2, 2),
    (7, 'Soft Purr Cat Food', 'Pet Care', 20.00, 2, 2),
    (8, 'Tiny Fresh Scent Tree', 'Automotive', 2.00, 7, 4);

INSERT INTO vendors VALUES
    (1, 'Quicky Express Food Co'),
    (2, 'Good Times Distributors'),
    (3, 'Natural Goodness'),
    (4, 'Hyper Logistics'),
    (5, 'Vend-tertainment');

INSERT INTO orders VALUES
(1, 4, 40, datetime('now', '-128 days', '+7 hours', '+58 minutes', '+5 seconds'), datetime('now', '-118 days', '+9 hours', '+4 minutes', '+5 seconds')),
(2, 1, 20, datetime('now', '-88 days', '+19 hours', '+30 minutes', '+10 seconds'), datetime('now', '-76 days', '+14 hours', '+20 minutes', '+10 seconds')),
(3, 4, 40, datetime('now', '-88 days', '+9 hours', '+1 minute', '+5 seconds'), datetime('now', '-73 days', '+9 hours', '+1 minute', '+5 seconds')),
(4, 5, 50, datetime('now', '-60 days', '+1 hour', '+7 seconds'), datetime('now', '-50 days', '+12 hours', '+50 minutes', '+12 seconds')),
(5, 2, 60, datetime('now', '-22 days', '+6 hours', '+6 minutes', '+3 seconds'), datetime('now', '-18 days', '+15 hours', '+5 minutes')),
(6, 3, 60, datetime('now', '-12 days', '+16 hours', '+40 minutes', '+7 seconds'), datetime('now', '-10 days', '+7 hours', '+5 minutes')),
(7, 6, 10, datetime('now', '-6 days', '+8 hours', '+1 minute', '+1 second'), NULL),
(8, 7, 10, datetime('now', '-3 days', '+8 hours', '+5 minutes', '+9 seconds'), NULL);
