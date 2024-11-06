package db

import (
	"strings"
)

type MarkdownFormatter struct {
	Columns []string
	Rows    [][]string
}

func (f MarkdownFormatter) String() string {
	const verticalSeparator = `|`
	const horizontalSeparator = `-`

	// Find the longest datum per column to set an appropriate width for each column.
	var widths []int = make([]int, 0)
	for _, col := range f.Columns {
		widths = append(widths, len(col)+2) // Add two - we need at least one space on either side.
	}
	for _, row := range f.Rows {
		if len(f.Columns) != len(row) {
			return ""
		}
		for i, data := range row {
			widths[i] = max(widths[i], len(data)+2)
		}
	}
	var output strings.Builder

	// Populate the column names.
	for i, col := range f.Columns {
		remaining := widths[i] - len(col)
		space, extra := remaining/2, remaining%2
		_, _ = output.WriteString(verticalSeparator)
		_, _ = output.WriteString(strings.Repeat(` `, space))
		_, _ = output.WriteString(col)
		_, _ = output.WriteString(strings.Repeat(` `, space+extra))
	}
	_, _ = output.WriteString(verticalSeparator)
	_, _ = output.WriteString("\n")

	// Create a column header separator.
	for i := range f.Columns {
		_, _ = output.WriteString(verticalSeparator)
		for range widths[i] {
			_, _ = output.WriteString(horizontalSeparator)
		}
	}
	_, _ = output.WriteString(verticalSeparator)
	_, _ = output.WriteString("\n")

	// Add the rows.
	for _, row := range f.Rows {
		for i, data := range row {
			remaining := widths[i] - len(data) - 1 // Left justify the data.
			_, _ = output.WriteString(verticalSeparator)
			_, _ = output.WriteString(` `)
			_, _ = output.WriteString(data)
			_, _ = output.WriteString(strings.Repeat(` `, remaining))
		}
		_, _ = output.WriteString(verticalSeparator)
		_, _ = output.WriteString("\n")
	}

	return output.String()
}

type BoxFormatter struct {
	Columns []string
	Rows    [][]string
}

// TODO: Implement.
// https://en.wikipedia.org/wiki/Box-drawing_characters
func (f BoxFormatter) String() string {
	const verticalSeparator = `|`
	const horizontalSeparator = `-`
	if len(f.Columns) != len(f.Rows) {
		return ""
	}
	return ""
}
