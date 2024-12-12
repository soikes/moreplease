// Package site describes the More SQL Please site in terms of its structure and page order.
package site

import (
	"soikke.li/moreplease/models"
)

const (
	SelectPage                 models.PageID = `select`
	WherePage                  models.PageID = `where`
	OrderByPage                models.PageID = `order_by`
	LimitPage                  models.PageID = `limit`
	OperatorsPage              models.PageID = `operators`
	CommentsPage               models.PageID = `comments`
	InsertPage                 models.PageID = `insert`
	UpdatePage                 models.PageID = `update`
	DeletePage                 models.PageID = `delete`
	DataTypesPage              models.PageID = `data_types`
	JoinPage                   models.PageID = `join`
	FunctionsPage              models.PageID = `functions`
	AggregateFunctionsPage     models.PageID = `aggregate_functions`
	GroupByPage                models.PageID = `group_by`
	CasePage                   models.PageID = `case`
	UnionAndSetOperatorsPage   models.PageID = `union_and_set_operators`
	PivotPage                  models.PageID = `pivot`
	StringManipulationPage     models.PageID = `string_manipulation`
	DateAndTimePage            models.PageID = `date_and_time`
	CreateTablePage            models.PageID = `create_table`
	AlterTablePage             models.PageID = `alter_table`
	DropTablePage              models.PageID = `drop_table`
	ConstraintsPage            models.PageID = `constraints`
	PrimaryKeyPage             models.PageID = `primary_key`
	ForeignKeyPage             models.PageID = `foreign_key`
	CascadePage                models.PageID = `cascade`
	IndexesPage                models.PageID = `indexes`
	SubqueriesPage             models.PageID = `subqueries`
	CommonTableExpressionsPage models.PageID = `common_table_expressions`
	TemporaryTablesPage        models.PageID = `temporary_tables`
	ViewsPage                  models.PageID = `views`
	MaterializedViewsPage      models.PageID = `materialized_views`
	TransactionsPage           models.PageID = `transactions`
	WindowFunctionsPage        models.PageID = `window_functions`
	RankFunctionsPage          models.PageID = `rank_functions`
	StoredProceduresPage       models.PageID = `stored_procedures`
	TriggersPage               models.PageID = `triggers`
	RecursiveQueriesPage       models.PageID = `recursive_queries`
	PerformanceAndExplainPage  models.PageID = `performance_and_explain`
	JSONOperationsPage         models.PageID = `json_operations`
	UsersAndPermissionsPage    models.PageID = `users_and_permissions`
	SQLInjectionPage           models.PageID = `sql_injection`
	DatabaseEnginesPage        models.PageID = `database_engines`
	ReplicasPage               models.PageID = `replicas`
	BackupAndRecoveryPage      models.PageID = `backup_and_recovery`
	DatabaseMigrationsPage     models.PageID = `database_migrations`
	DynamicSQLPage             models.PageID = `dynamic_sql`
	RDBMSApplicationsPage      models.PageID = `rdbms_applications`
	SchemaDesignPage           models.PageID = `schema_design`
	ExpertCookbookPage         models.PageID = `expert_cookbook`
	TipsAndTricksPage          models.PageID = `tips_and_tricks`
	GlossaryPage               models.PageID = `glossary`
	IndexPage                  models.PageID = `index`
)

// MSP defines metadata and page order of the More SQL Please site.
var MSP = models.NewSite(
	"More SQL Please",
	models.LanguageSQL,
	[]models.Section{
		{
			Title: "Basics",
			Pages: []models.Page{
				models.NewPage(SelectPage, "SELECT", models.Enable()),
				models.NewPage(WherePage, "WHERE", models.Enable()),
				models.NewPage(OrderByPage, "ORDER BY", models.Enable()),
				models.NewPage(LimitPage, "LIMIT", models.Enable()),
				models.NewPage(OperatorsPage, "Operators"),
				models.NewPage(CommentsPage, "Comments", models.Enable()),
				models.NewPage(InsertPage, "INSERT"),
				models.NewPage(UpdatePage, "UPDATE"),
				models.NewPage(DeletePage, "DELETE"),
				models.NewPage(DataTypesPage, "Data Types", models.Enable()),
			},
		},
		{
			Title: "Intermediate",
			Pages: []models.Page{
				models.NewPage(JoinPage, "JOIN", models.Enable()),
				models.NewPage(FunctionsPage, "Functions", models.Enable()),
				models.NewPage(AggregateFunctionsPage, "Aggregate Functions", models.Enable()),
				models.NewPage(GroupByPage, "GROUP BY", models.Enable()),
				models.NewPage(UnionAndSetOperatorsPage, "UNION and Set Operators", models.Enable()),
				models.NewPage(CasePage, "CASE", models.Enable()),
				models.NewPage(PivotPage, "PIVOT"),
				models.NewPage(StringManipulationPage, "String Manipulation"),
				models.NewPage(DateAndTimePage, "Date and Time"),
			},
		},
		{
			Title: "Table Operations",
			Pages: []models.Page{
				models.NewPage(CreateTablePage, "CREATE TABLE"),
				models.NewPage(AlterTablePage, "ALTER TABLE"),
				models.NewPage(DropTablePage, "DROP TABLE"),
				models.NewPage(ConstraintsPage, "Constraints"),
				models.NewPage(PrimaryKeyPage, "PRIMARY KEY"),
				models.NewPage(ForeignKeyPage, "FOREIGN KEY"),
				models.NewPage(CascadePage, "CASCADE"),
				models.NewPage(IndexesPage, "Indexes"),
			},
		},
		{
			Title: "Advanced Queries",
			Pages: []models.Page{
				models.NewPage(SubqueriesPage, "Subqueries"),
				models.NewPage(CommonTableExpressionsPage, "Common Table Expressions"),
				models.NewPage(TemporaryTablesPage, "Temporary Tables"),
				models.NewPage(ViewsPage, "Views"),
				models.NewPage(MaterializedViewsPage, "Materialized Views"),
				models.NewPage(TransactionsPage, "Transactions"),
			},
		},
		{
			Title: "Advanced Features",
			Pages: []models.Page{
				models.NewPage(WindowFunctionsPage, "Window Functions"),
				models.NewPage(RankFunctionsPage, "Rank Functions"),
				models.NewPage(StoredProceduresPage, "Stored Procedures"),
				models.NewPage(TriggersPage, "Triggers"),
				models.NewPage(RecursiveQueriesPage, "Recursive Queries"),
				models.NewPage(PerformanceAndExplainPage, "Performance and EXPLAIN"),
				models.NewPage(JSONOperationsPage, "JSON Operations"),
			},
		},
		{
			Title: "Administration and Security",
			Pages: []models.Page{
				models.NewPage(UsersAndPermissionsPage, "Users and Permissions"),
				models.NewPage(SQLInjectionPage, "SQL Injection"),
				models.NewPage(DatabaseEnginesPage, "Database Engines"),
				models.NewPage(ReplicasPage, "Replicas"),
				models.NewPage(BackupAndRecoveryPage, "Backup and Recovery"),
				models.NewPage(DatabaseMigrationsPage, "Database Migrations"),
				models.NewPage(DynamicSQLPage, "Dynamic SQL"),
				models.NewPage(RDBMSApplicationsPage, "RDBMS Applications"),
				models.NewPage(SchemaDesignPage, "Schema Design"),
			},
		},
		{
			Title: "Reference",
			Pages: []models.Page{
				models.NewPage(ExpertCookbookPage, "Expert Cookbook"),
				models.NewPage(TipsAndTricksPage, "Tips and Tricks"),
				models.NewPage(GlossaryPage, "Glossary"),
			},
		},
	},
)
