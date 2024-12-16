/*  
    This query retrieves a list of unique
    domains that have registered on our site
    so we can see which companies have 
    adopted the product.
*/
SELECT DISTINCT 
    substr(email_address, 
        instr(email_address, "@") + 1
    )
AS domain
FROM users
WHERE active = 1;
