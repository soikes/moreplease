CREATE FUNCTION format_transaction(
    name_first TEXT,
    name_last  TEXT,
    amount     NUMERIC
)
RETURNS TEXT
AS $$
BEGIN
    RETURN format('%s %s withdrew %.2f.',
        name_first,
        name_last,
        amount
    );
END;
$$;
