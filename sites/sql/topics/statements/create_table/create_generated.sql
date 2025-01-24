CREATE TABLE user_names(
    user_id INTEGER PRIMARY KEY, 
    name_first TEXT, 
    name_last TEXT,
    name_full AS 
        (name_first || ' ' || name_last) VIRTUAL 
    );

SELECT name, type 
FROM pragma_table_xinfo('user_names');
