// Code generated by templ - DO NOT EDIT.

// templ: version: v0.2.793
package main

//lint:file-ignore SA4006 This context is only used if a nested component is present.

import "github.com/a-h/templ"
import templruntime "github.com/a-h/templ/runtime"

import "soikke.li/moreplease/templates"
import st "soikke.li/moreplease/sites/sql/templates"

func index() templ.Component {
	return templruntime.GeneratedTemplate(func(templ_7745c5c3_Input templruntime.GeneratedComponentInput) (templ_7745c5c3_Err error) {
		templ_7745c5c3_W, ctx := templ_7745c5c3_Input.Writer, templ_7745c5c3_Input.Context
		if templ_7745c5c3_CtxErr := ctx.Err(); templ_7745c5c3_CtxErr != nil {
			return templ_7745c5c3_CtxErr
		}
		templ_7745c5c3_Buffer, templ_7745c5c3_IsBuffer := templruntime.GetBuffer(templ_7745c5c3_W)
		if !templ_7745c5c3_IsBuffer {
			defer func() {
				templ_7745c5c3_BufErr := templruntime.ReleaseBuffer(templ_7745c5c3_Buffer)
				if templ_7745c5c3_Err == nil {
					templ_7745c5c3_Err = templ_7745c5c3_BufErr
				}
			}()
		}
		ctx = templ.InitializeContext(ctx)
		templ_7745c5c3_Var1 := templ.GetChildren(ctx)
		if templ_7745c5c3_Var1 == nil {
			templ_7745c5c3_Var1 = templ.NopComponent
		}
		ctx = templ.ClearChildren(ctx)
		templ_7745c5c3_Var2 := templruntime.GeneratedTemplate(func(templ_7745c5c3_Input templruntime.GeneratedComponentInput) (templ_7745c5c3_Err error) {
			templ_7745c5c3_W, ctx := templ_7745c5c3_Input.Writer, templ_7745c5c3_Input.Context
			templ_7745c5c3_Buffer, templ_7745c5c3_IsBuffer := templruntime.GetBuffer(templ_7745c5c3_W)
			if !templ_7745c5c3_IsBuffer {
				defer func() {
					templ_7745c5c3_BufErr := templruntime.ReleaseBuffer(templ_7745c5c3_Buffer)
					if templ_7745c5c3_Err == nil {
						templ_7745c5c3_Err = templ_7745c5c3_BufErr
					}
				}()
			}
			ctx = templ.InitializeContext(ctx)
			templ_7745c5c3_Err = inner().Render(ctx, templ_7745c5c3_Buffer)
			if templ_7745c5c3_Err != nil {
				return templ_7745c5c3_Err
			}
			_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString(" ")
			if templ_7745c5c3_Err != nil {
				return templ_7745c5c3_Err
			}
			return templ_7745c5c3_Err
		})
		templ_7745c5c3_Err = templates.Base("More SQL Please").Render(templ.WithChildren(ctx, templ_7745c5c3_Var2), templ_7745c5c3_Buffer)
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		return templ_7745c5c3_Err
	})
}

func inner() templ.Component {
	return templruntime.GeneratedTemplate(func(templ_7745c5c3_Input templruntime.GeneratedComponentInput) (templ_7745c5c3_Err error) {
		templ_7745c5c3_W, ctx := templ_7745c5c3_Input.Writer, templ_7745c5c3_Input.Context
		if templ_7745c5c3_CtxErr := ctx.Err(); templ_7745c5c3_CtxErr != nil {
			return templ_7745c5c3_CtxErr
		}
		templ_7745c5c3_Buffer, templ_7745c5c3_IsBuffer := templruntime.GetBuffer(templ_7745c5c3_W)
		if !templ_7745c5c3_IsBuffer {
			defer func() {
				templ_7745c5c3_BufErr := templruntime.ReleaseBuffer(templ_7745c5c3_Buffer)
				if templ_7745c5c3_Err == nil {
					templ_7745c5c3_Err = templ_7745c5c3_BufErr
				}
			}()
		}
		ctx = templ.InitializeContext(ctx)
		templ_7745c5c3_Var3 := templ.GetChildren(ctx)
		if templ_7745c5c3_Var3 == nil {
			templ_7745c5c3_Var3 = templ.NopComponent
		}
		ctx = templ.ClearChildren(ctx)
		_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString("<div class=\"content narrow\"><div class=\"logo\"><img src=\"assets/logo.svg\"></div><p>Structured Query Language (SQL) is used to manage and retrieve data from databases. It is particularly suited to <a href=\"https://en.wikipedia.org/wiki/Relational_database\">relational data<span>")
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		templ_7745c5c3_Err = st.Outlink().Render(ctx, templ_7745c5c3_Buffer)
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString("</span></a> where the data has well-defined relationships.</p><p><em>More SQL Please</em>&ensp;is designed to be a simple, readable introduction to the SQL language and some related database concepts. It uses SQL statements that have been run against <a href=\"https://www.sqlite.org\">SQLite<span>")
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		templ_7745c5c3_Err = st.Outlink().Render(ctx, templ_7745c5c3_Buffer)
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString("</span></a> databases. Each topic utilizes a particular set of database tables, known as a schema, which can be shown or hidden at the top of the page anytime.</p><p>If you want to run the examples on your own device, <a href=\"https://sqlite.org/download.html\">download SQLite<span>")
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		templ_7745c5c3_Err = st.Outlink().Render(ctx, templ_7745c5c3_Buffer)
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString("</span></a> and run the scripts contained within each example in this website's <a href=\"https://github.com/soikes/byexample/tree/main/sql\">source code<span>")
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		templ_7745c5c3_Err = st.Outlink().Render(ctx, templ_7745c5c3_Buffer)
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString("</span></a>.</p><input type=\"search\" class=\"search search-tile\"><ul class=\"index\"><li><a href=\"/select\">SELECT</a></li><li><a href=\"/where\">WHERE</a></li><li><a href=\"/join\">JOIN</a></li><li><a href=\"/order_by\">ORDER BY</a></li><li><a href=\"/limit\">LIMIT</a></li><li><a href=\"/data_types\">Data Types</a></li><li><a href=\"/functions\">Functions</a></li><li><a href=\"/aggregate_functions\">Aggregate Functions</a></li><li><a href=\"/group_by\">GROUP BY</a></li><li><a href=\"select\">CASE</a></li><li><a href=\"select\">UNION and INTERSECT</a></li><li><a href=\"/window_functions\">Window Functions</a></li><li><a href=\"/rank_functions\">Rank Functions</a></li><li><a href=\"select\">INSERT</a></li><li><a href=\"select\">UPDATE</a></li><li><a href=\"select\">DELETE</a></li><li><a href=\"select\">CREATE TABLE</a></li><li><a href=\"select\">ALTER TABLE</a></li><li><a href=\"select\">DROP TABLE</a></li><li><a href=\"select\">Constraints</a></li><li><a href=\"select\">PRIMARY KEY</a></li><li><a href=\"select\">FOREIGN KEY</a></li><li><a href=\"select\">CASCADE</a></li><li><a href=\"select\">Indexes</a></li><li><a href=\"select\">Transactions</a></li><li><a href=\"select\">Subqueries</a></li><li><a href=\"select\">Temporary Tables</a></li><li><a href=\"select\">Common Table Expressions</a></li><li><a href=\"select\">Stored Procedures</a></li><li><a href=\"select\">Triggers</a></li><li><a href=\"select\">Views</a></li><li><a href=\"select\">Materialized Views</a></li><li><a href=\"select\">PIVOT</a></li><li><a href=\"select\">COLLATE</a></li><li><a href=\"select\">Recursive Queries</a></li><li><a href=\"select\">SQL Injection</a></li><li><a href=\"select\">Users and Permissions</a></li><li><a href=\"select\">String Manipulation</a></li><li><a href=\"select\">Date and Time</a></li><li><a href=\"select\">JSON Operations</a></li><li><a href=\"select\">Performance and EXPLAIN</a></li><li><a href=\"select\">Database Engines</a></li><li><a href=\"select\">Replicas</a></li><li><a href=\"select\">Backup and Recovery</a></li><li><a href=\"select\">Database Migrations</a></li><li><a href=\"select\">Dynamic SQL</a></li><li><a href=\"select\">Comments</a></li><li><a href=\"select\">Operators</a></li><li><a href=\"select\">RDBMS Applications</a></li><li><a href=\"select\">Schema Design</a></li></ul><div class=\"footer\"><small>by <a href=\"http://soikke.li\">Mike Soikkeli</a> | <a href=\"https://github.com/soikes/byexample/tree/main/sql\">source</a> | <a href=\"https://github.com/soikes/byexample/blob/main/LICENSE\">license</a></small></div></div>")
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		return templ_7745c5c3_Err
	})
}

func coffee() templ.Component {
	return templruntime.GeneratedTemplate(func(templ_7745c5c3_Input templruntime.GeneratedComponentInput) (templ_7745c5c3_Err error) {
		templ_7745c5c3_W, ctx := templ_7745c5c3_Input.Writer, templ_7745c5c3_Input.Context
		if templ_7745c5c3_CtxErr := ctx.Err(); templ_7745c5c3_CtxErr != nil {
			return templ_7745c5c3_CtxErr
		}
		templ_7745c5c3_Buffer, templ_7745c5c3_IsBuffer := templruntime.GetBuffer(templ_7745c5c3_W)
		if !templ_7745c5c3_IsBuffer {
			defer func() {
				templ_7745c5c3_BufErr := templruntime.ReleaseBuffer(templ_7745c5c3_Buffer)
				if templ_7745c5c3_Err == nil {
					templ_7745c5c3_Err = templ_7745c5c3_BufErr
				}
			}()
		}
		ctx = templ.InitializeContext(ctx)
		templ_7745c5c3_Var4 := templ.GetChildren(ctx)
		if templ_7745c5c3_Var4 == nil {
			templ_7745c5c3_Var4 = templ.NopComponent
		}
		ctx = templ.ClearChildren(ctx)
		_, templ_7745c5c3_Err = templ_7745c5c3_Buffer.WriteString("<div id=\"coffee\"><script data-name=\"BMC-Widget\" data-cfasync=\"false\" src=\"https://cdnjs.buymeacoffee.com/1.0.0/widget.prod.min.js\" data-id=\"mikesoikkeli\" data-description=\"Support me on Buy me a coffee!\" data-message=\"Your support helps keep More SQL Please a peaceful place to learn SQL.\u00a0Thank you for making that possible! ✨\" data-color=\"#FF813F\" data-position=\"Right\" data-x_margin=\"18\" data-y_margin=\"18\"></script></div>")
		if templ_7745c5c3_Err != nil {
			return templ_7745c5c3_Err
		}
		return templ_7745c5c3_Err
	})
}

var _ = templruntime.GeneratedTemplate
