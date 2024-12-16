package metrics

// Connect to a sqlite3 db and store metrics:

// TABLES:
// visitors
// 	 id        string
//   day_valid datetime
//
// visits
// 	 visitor_id string
//   timestamp  time
//   path       string
//
// sessions
//   visitor_id string
//   duration   string
