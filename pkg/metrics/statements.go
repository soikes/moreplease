package metrics

const schemaStmt = `CREATE TABLE IF NOT EXISTS visits(id INTEGER PRIMARY KEY, visitor TEXT, timestamp TEXT, host TEXT, path TEXT);`

// CREATE TABLE IF NOT EXISTS visitors(id TEXT PRIMARY KEY, day_valid TEXT);
// CREATE TABLE IF NOT EXISTS sessions(id TEXT PRIMARY KEY, visitor_id TEXT, duration_secs INTEGER);
