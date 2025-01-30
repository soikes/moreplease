package db

import "testing"

type commentTest struct {
	input  string
	output string
}

func TestTrimSQLComments(t *testing.T) {
	tests := []commentTest{
		{
			input:  `SELECT * FROM users;`,
			output: `SELECT * FROM users;`,
		},
		{
			input:  `-- SELECT * FROM users;`,
			output: ``,
		},
		{
			input:  `/* SELECT * FROM users; */`,
			output: ``,
		},
		{
			input: `SELECT 1; /* Block Comment */
		SELECT 2; -- Inline Comment
-- Inline Comment`,
			output: `SELECT 1; 
		SELECT 2; `,
		},
		{
			input:  `SELECT 1; -- Inline Comment`,
			output: `SELECT 1; `,
		},
		{
			input:  `/* Invalid Block Comment`,
			output: ``,
		},
		{
			input:  `Invalid Block Comment */`,
			output: `Invalid Block Comment */`,
		},
		{
			input:  `/* /* */`,
			output: ``,
		},
		{
			input:  `/* -- */ SELECT 1; -- SELECT 2;`,
			output: ` SELECT 1; `,
		},
	}
	for _, test := range tests {
		out := trimSQLComments(test.input)
		if out != test.output {
			t.Logf("expected `%s`, got: `%s`", test.output, out)
			t.Fail()
		}
	}
}
