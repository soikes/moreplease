package metrics

const schemaStmt = `CREATE TABLE IF NOT EXISTS visits(id INTEGER PRIMARY KEY, visitor TEXT, timestamp TEXT, host TEXT, path TEXT);`

// CREATE TABLE IF NOT EXISTS visitors(id TEXT PRIMARY KEY, day_valid TEXT);
// CREATE TABLE IF NOT EXISTS sessions(id TEXT PRIMARY KEY, visitor_id TEXT, duration_secs INTEGER);

const seedFakeData = `
INSERT INTO visits (visitor, timestamp, host, path) VALUES
	('8c2b8257936640a1df0fd8058e0fb45681c08bf5436ee7e159229f29679b1b66', datetime('now'), 'moresqlplease.com', 'bananas'),
	('8c2b8257936640a1df0fd8058e0fb45681c08bf5436ee7e159229f29679b1b66', datetime('now', '-10 minutes'), 'moresqlplease.com', 'clouds'),
	('8c2b8257936640a1df0fd8058e0fb45681c08bf5436ee7e159229f29679b1b66', datetime('now', '-5 minutes'), 'moresqlplease.com', 'clouds'),
	('e8c9bff1d1b46c790c711722d801fafc2b3e5f3aacec2cb207ce5e73fc81db2b', datetime('now', '-2 hours'), 'moresqlplease.com', 'clouds'),
	('7d5ded936a43682ffb8fcad4919a7752eec5585c403bb6d2d2de83e828374ec1', datetime('now', '-2 hours'), 'moresqlplease.com', 'books'),
	('f8a7b629b12b3e6f359e81e8d4234eba6df59b6a4ee0981b4d3be5019c854664', datetime('now', '-2 days'), 'moresqlplease.com', 'computers'),
	('a0e8d96c4658bad8463c4897a05b78db67a59132b008fc3e8f12597b6bb45427', datetime('now', '-2 days'), 'moresqlplease.com', 'tables'),
	('1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014', datetime('now', '-2 days'), 'moresqlplease.com', 'chairs'),
	('d2c8b0c1a6e629a89ef08250d69aa3787ee93c861b2f65b98fb4c235e6937753', datetime('now', '-8 days'), 'moresqlplease.com', 'phones'),
	('9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', datetime('now', '-8 days'), 'moresqlplease.com', 'dogs'),
	('e6c3da5b206634d7f3f3586d747ffdb36b5c675757b380c6a5fe5c570c714349', datetime('now', '-8 days'), 'moresqlplease.com', 'cats'),
	('2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824', datetime('now', '-8 days'), 'moresqlplease.com', 'birds');
`
