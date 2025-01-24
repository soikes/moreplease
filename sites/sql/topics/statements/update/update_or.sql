UPDATE OR IGNORE users
SET id = 1, 
    name_first = 'James', 
    name_last = 'Mitchell', 
    email_address = 'jmitchell@email.net', 
    created_at = datetime('now'),
    active = 1
WHERE id = 2;
