CREATE TABLE posts(
    id INTEGER PRIMARY KEY, 
    user_id INTEGER,
    content TEXT,
    created_at TEXT );

SELECT name, type 
FROM pragma_table_info('posts');
