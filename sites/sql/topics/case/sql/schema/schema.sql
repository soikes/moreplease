CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, category TEXT, price REAL, remaining_stock INTEGER, vendor_id INTEGER);
CREATE TABLE vendors(id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE orders(id INTEGER PRIMARY KEY, product_id INTEGER, quantity INTEGER, date_ordered TEXT, date_arrived TEXT);

INSERT INTO products VALUES
    (1, "Cool Splash Cologne", "Toiletries", 49.99, 25, 2),
    (2, "More Spice Please Chips", "Food", 3.99, 60, 1),
    (3, "Night Shift Coffee", "Food", 6.99, 1, 1),
    (4, "Crunchy Munchy Trail Mix", "Food", 8.99, 5, 3),
    (5, "Super Glide Floss", "Toiletries", 1.99, 19, 4),
    (6, "Big Bark Dog Food", "Pet Care", 30.00, 2, 2),
    (7, "Soft Purr Cat Food", "Pet Care", 30.00, 2, 2),
    (8, "Tiny Fresh Scent Tree", "Automotive", 2.00, 7, 4);

INSERT INTO vendors VALUES
    (1, "Quicky Express Food Co"),
    (2, "Good Times Distributors"),
    (3, "Natural Goodness"),
    (4, "Hyper Logistics"),
    (5, "Vend-tertainment");

INSERT INTO orders VALUES
    (1, 4, 40, "2024-06-01 07:58:05", "2024-06-03 09:04:05"),
    (2, 1, 20, "2024-06-14 19:30:10", "2024-06-26 14:20:10"),
    (3, 4, 40, "2024-07-01 09:01:05", "2024-07-13 09:01:05"),
    (4, 5, 50, "2024-07-03 01:00:07", "2024-07-09 12:50:12"),
    (5, 2, 60, "2024-07-24 06:06:03", "2024-07-30 15:05:00"),
    (6, 3, 60, "2024-08-15 16:40:07", "2024-08-19 07:05:00"),
    (7, 6, 10, "2024-09-01 08:01:01", NULL),
    (8, 7, 10, "2024-09-01 08:05:09", NULL);
