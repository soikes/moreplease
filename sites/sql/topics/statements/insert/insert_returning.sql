INSERT INTO users 
    (name_first, name_last, age, email_address, created_at)
VALUES ('Joshua', 'Seti', 54, 'josh@st.co', datetime('now'))
RETURNING email_address, created_at;
