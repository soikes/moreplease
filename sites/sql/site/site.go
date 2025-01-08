// Package site describes the More SQL Please site in terms of its structure, pages and page order.
package site

import (
	"errors"
	"io/fs"
	"strings"

	"golang.org/x/net/html/atom"
	"soikke.li/moreplease/pkg/html"
	"soikke.li/moreplease/pkg/model"
	"soikke.li/moreplease/pkg/search"
	"soikke.li/moreplease/sites/sql/assets"
)

const (
	SelectPage                 model.PageID = `select`
	WherePage                  model.PageID = `where`
	OrderByPage                model.PageID = `order_by`
	LimitPage                  model.PageID = `limit`
	OperatorsPage              model.PageID = `operators`
	CommentsPage               model.PageID = `comments`
	InsertPage                 model.PageID = `insert`
	UpdatePage                 model.PageID = `update`
	DeletePage                 model.PageID = `delete`
	DataTypesPage              model.PageID = `data_types`
	JoinPage                   model.PageID = `join`
	FunctionsPage              model.PageID = `functions`
	AggregateFunctionsPage     model.PageID = `aggregate_functions`
	GroupByPage                model.PageID = `group_by`
	CasePage                   model.PageID = `case`
	UnionAndSetOperatorsPage   model.PageID = `union_and_set_operators`
	PivotPage                  model.PageID = `pivot`
	StringManipulationPage     model.PageID = `string_manipulation`
	DateAndTimePage            model.PageID = `date_and_time`
	CreateTablePage            model.PageID = `create_table`
	AlterTablePage             model.PageID = `alter_table`
	DropTablePage              model.PageID = `drop_table`
	ConstraintsPage            model.PageID = `constraints`
	PrimaryKeyPage             model.PageID = `primary_key`
	ForeignKeyPage             model.PageID = `foreign_key`
	CascadePage                model.PageID = `cascade`
	IndexesPage                model.PageID = `indexes`
	SubqueriesPage             model.PageID = `subqueries`
	CommonTableExpressionsPage model.PageID = `common_table_expressions`
	TemporaryTablesPage        model.PageID = `temporary_tables`
	ViewsPage                  model.PageID = `views`
	MaterializedViewsPage      model.PageID = `materialized_views`
	TransactionsPage           model.PageID = `transactions`
	WindowFunctionsPage        model.PageID = `window_functions`
	RankFunctionsPage          model.PageID = `rank_functions`
	StoredProceduresPage       model.PageID = `stored_procedures`
	TriggersPage               model.PageID = `triggers`
	RecursiveQueriesPage       model.PageID = `recursive_queries`
	PerformanceAndExplainPage  model.PageID = `performance_and_explain`
	JSONOperationsPage         model.PageID = `json_operations`
	UsersAndPermissionsPage    model.PageID = `users_and_permissions`
	SQLInjectionPage           model.PageID = `sql_injection`
	DatabaseEnginesPage        model.PageID = `database_engines`
	ReplicasPage               model.PageID = `replicas`
	BackupAndRecoveryPage      model.PageID = `backup_and_recovery`
	DatabaseMigrationsPage     model.PageID = `database_migrations`
	DynamicSQLPage             model.PageID = `dynamic_sql`
	RDBMSApplicationsPage      model.PageID = `rdbms_applications`
	SchemaDesignPage           model.PageID = `schema_design`
	ExpertCookbookPage         model.PageID = `expert_cookbook`
	TipsAndTricksPage          model.PageID = `tips_and_tricks`
	GlossaryPage               model.PageID = `glossary`
	IndexPage                  model.PageID = `index`
)

// MSP defines metadata and page order of the More SQL Please site.
var MSP = model.NewSite(
	"More SQL Please",
	model.LanguageSQL,
	[]model.Section{
		{
			Title: "Basics",
			Pages: []model.Page{
				model.NewPage(SelectPage, "SELECT", model.Enable()),
				model.NewPage(WherePage, "WHERE", model.Enable()),
				model.NewPage(OrderByPage, "ORDER BY", model.Enable()),
				model.NewPage(LimitPage, "LIMIT", model.Enable()),
				model.NewPage(DataTypesPage, "Data Types", model.Enable()),
				model.NewPage(OperatorsPage, "Operators", model.Enable()),
				model.NewPage(CommentsPage, "Comments", model.Enable()),
				model.NewPage(CreateTablePage, "CREATE TABLE", model.Enable()),
				model.NewPage(InsertPage, "INSERT", model.Enable()),
				model.NewPage(UpdatePage, "UPDATE", model.Enable()),
				model.NewPage(DeletePage, "DELETE"),
			},
		},
		{
			Title: "Intermediate",
			Pages: []model.Page{
				model.NewPage(JoinPage, "JOIN", model.Enable()),
				model.NewPage(FunctionsPage, "Functions", model.Enable()),
				model.NewPage(AggregateFunctionsPage, "Aggregate Functions", model.Enable()),
				model.NewPage(GroupByPage, "GROUP BY", model.Enable()),
				model.NewPage(UnionAndSetOperatorsPage, "UNION and Set Operators", model.Enable()),
				model.NewPage(CasePage, "CASE", model.Enable()),
				model.NewPage(PivotPage, "PIVOT"),
				model.NewPage(StringManipulationPage, "String Manipulation"),
				model.NewPage(DateAndTimePage, "Date and Time"),
			},
		},
		{
			Title: "Table Operations",
			Pages: []model.Page{
				model.NewPage(AlterTablePage, "ALTER TABLE"),
				model.NewPage(DropTablePage, "DROP TABLE"),
				model.NewPage(ConstraintsPage, "Constraints"),
				model.NewPage(PrimaryKeyPage, "PRIMARY KEY"),
				model.NewPage(ForeignKeyPage, "FOREIGN KEY"),
				model.NewPage(CascadePage, "CASCADE"),
				model.NewPage(IndexesPage, "Indexes"),
			},
		},
		{
			Title: "Advanced Queries",
			Pages: []model.Page{
				model.NewPage(SubqueriesPage, "Subqueries"),
				model.NewPage(CommonTableExpressionsPage, "Common Table Expressions"),
				model.NewPage(TemporaryTablesPage, "Temporary Tables"),
				model.NewPage(ViewsPage, "Views"),
				model.NewPage(MaterializedViewsPage, "Materialized Views"),
				model.NewPage(TransactionsPage, "Transactions"),
			},
		},
		{
			Title: "Advanced Features",
			Pages: []model.Page{
				model.NewPage(WindowFunctionsPage, "Window Functions"),
				model.NewPage(RankFunctionsPage, "Rank Functions"),
				model.NewPage(StoredProceduresPage, "Stored Procedures"),
				model.NewPage(TriggersPage, "Triggers"),
				model.NewPage(RecursiveQueriesPage, "Recursive Queries"),
				model.NewPage(PerformanceAndExplainPage, "Performance and EXPLAIN"),
				model.NewPage(JSONOperationsPage, "JSON Operations"),
			},
		},
		{
			Title: "Administration and Security",
			Pages: []model.Page{
				model.NewPage(UsersAndPermissionsPage, "Users and Permissions"),
				model.NewPage(SQLInjectionPage, "SQL Injection"),
				model.NewPage(DatabaseEnginesPage, "Database Engines"),
				model.NewPage(ReplicasPage, "Replicas"),
				model.NewPage(BackupAndRecoveryPage, "Backup and Recovery"),
				model.NewPage(DatabaseMigrationsPage, "Database Migrations"),
				model.NewPage(DynamicSQLPage, "Dynamic SQL"),
				model.NewPage(RDBMSApplicationsPage, "RDBMS Applications"),
				model.NewPage(SchemaDesignPage, "Schema Design"),
			},
		},
		{
			Title: "Reference",
			Pages: []model.Page{
				model.NewPage(ExpertCookbookPage, "Expert Cookbook"),
				model.NewPage(TipsAndTricksPage, "Tips and Tricks"),
				model.NewPage(GlossaryPage, "Glossary"),
			},
		},
	},
)

// AssetDocumentProvider implements search.DocumentProvider for More SQL Please
// using pre-rendered HTML assets from the assets directory.
type AssetDocumentProvider struct{}

func (m AssetDocumentProvider) Documents() ([]search.Document, error) {
	as := assets.Assets
	var docs []search.Document
	for _, sec := range MSP.Sections {
		for _, page := range sec.Pages {
			f, err := as.Open(page.ID.Asset())
			if err != nil {
				if errors.Is(err, fs.ErrNotExist) {
					continue
				}
				return nil, err
			}
			defer f.Close()
			var buf strings.Builder
			e := html.Extractor{
				RootTag: atom.Body,
				ExcludeTags: []atom.Atom{
					atom.Script,
					atom.Button,
				},
			}
			err = e.ExtractText(&buf, f)
			if err != nil {
				return nil, err
			}
			doc := search.Document{
				ID:      string(page.ID),
				Title:   page.Title,
				URL:     page.URL,
				Content: buf.String(),
			}
			docs = append(docs, doc)
		}
	}
	return docs, nil
}
