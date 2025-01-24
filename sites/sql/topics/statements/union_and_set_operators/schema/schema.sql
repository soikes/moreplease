CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, category TEXT, price REAL, remaining_stock INTEGER, vendor_id INTEGER);
CREATE TABLE orders(id INTEGER PRIMARY KEY, product_id INTEGER, quantity INTEGER, date_ordered TEXT, date_arrived TEXT);
CREATE TABLE archived_orders_2023(id INTEGER PRIMARY KEY, product_id INTEGER, quantity INTEGER, date_ordered TEXT, date_arrived TEXT);

INSERT INTO products VALUES
    (1, 'Cool Splash Cologne', 'Toiletries', 49.99, 25, 2),
    (2, 'More Spice Please Chips', 'Food', 3.99, 60, 1),
    (3, 'Night Shift Coffee', 'Food', 6.99, 1, 1),
    (4, 'Crunchy Munchy Trail Mix', 'Food', 8.99, 5, 3),
    (5, 'Super Glide Floss', 'Toiletries', 1.99, 19, 4),
    (6, 'Big Bark Dog Food', 'Pet Care', 30.00, 2, 2),
    (7, 'Soft Purr Cat Food', 'Pet Care', 30.00, 2, 2),
    (8, 'Tiny Fresh Scent Tree', 'Automotive', 2.00, 7, 4);
    
INSERT INTO orders VALUES
    (1, 4, 40, '2024-06-01 07:58:05', '2024-06-03 09:04:05'),
    (2, 1, 20, '2024-06-14 19:30:10', '2024-06-26 14:20:10'),
    (3, 5, 50, '2024-07-03 01:00:07', '2024-07-09 12:50:12'),
    (4, 2, 60, '2024-07-24 06:06:03', '2024-07-30 15:05:00'),
    (5, 3, 60, '2024-08-15 16:40:07', '2024-08-19 07:05:00'),
    (6, 6, 10, '2024-09-01 08:01:01', NULL);
    
INSERT INTO archived_orders_2023 VALUES
    (7, 1, 20, '2023-12-15 10:30:00', '2023-12-20 14:15:00'),
    (8, 2, 25, '2023-11-28 08:45:22', '2023-12-02 11:20:15'),
    (9, 4, 40, '2023-08-22 11:05:15', '2023-08-29 15:30:00'),
    (10, 8, 100, '2023-07-14 09:20:00', '2023-07-18 10:15:30'),
    (11, 6, 5, '2023-06-30 14:55:25', '2023-07-05 16:40:10'),
    (12, 7, 10, '2023-05-12 07:30:00', '2023-05-16 13:25:45');
