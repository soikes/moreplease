// Package site describes the More SQL Please site in terms of its structure and page order.
package site

import "soikke.li/moreplease/web"

const (
	SelectPage web.PageID = iota
	WherePage
	OrderByPage
	LimitPage
	OperatorsPage
	CommentsPage
	InsertPage
	UpdatePage
	DeletePage
	DataTypesPage
	JoinPage
	FunctionsPage
	AggregateFunctionsPage
	GroupByPage
	CasePage
	UnionAndSetOperatorsPage
	PivotPage
	StringManipulationPage
	DateAndTimePage
	CreateTablePage
	AlterTablePage
	DropTablePage
	ConstraintsPage
	PrimaryKeyPage
	ForeignKeyPage
	CascadePage
	IndexesPage
	SubqueriesPage
	CommonTableExpressionsPage
	TemporaryTablesPage
	ViewsPage
	MaterializedViewsPage
	TransactionsPage
	WindowFunctionsPage
	RankFunctionsPage
	StoredProceduresPage
	TriggersPage
	RecursiveQueriesPage
	PerformanceAndExplainPage
	JSONOperationsPage
	UsersAndPermissionsPage
	SQLInjectionPage
	DatabaseEnginesPage
	ReplicasPage
	BackupAndRecoveryPage
	DatabaseMigrationsPage
	DynamicSQLPage
	RDBMSApplicationsPage
	SchemaDesignPage
	ExpertCookbookPage
	TipsAndTricksPage
	GlossaryPage
)

// Site is a sitemap that represents the attributes and structure of More SQL Please.
var MSP = web.Site{
	Title:    "More SQL Please",
	Language: web.LanguageSQL,
	Sections: []web.Section{
		web.NewSection("Basics", []web.Page{
			web.NewPage(SelectPage, "SELECT", "/select"),
			web.NewPage(WherePage, "WHERE", "/where"),
			web.NewPage(OrderByPage, "ORDER BY", "/order_by"),
			web.NewPage(LimitPage, "LIMIT", "/limit"),
			web.NewPage(OperatorsPage, "Operators", "/operators"),
			web.NewPage(CommentsPage, "Comments", "/comments"),
			web.NewPage(InsertPage, "INSERT", "/insert"),
			web.NewPage(UpdatePage, "UPDATE", "/update"),
			web.NewPage(DeletePage, "DELETE", "/delete"),
			web.NewPage(DataTypesPage, "Data Types", "/data_types"),
		}),
		web.NewSection("Intermediate", []web.Page{
			web.NewPage(JoinPage, "JOIN", "/join"),
			web.NewPage(FunctionsPage, "Functions", "/functions"),
			web.NewPage(AggregateFunctionsPage, "Aggregate Functions", "/aggregate_functions"),
			web.NewPage(GroupByPage, "GROUP BY", "/group_by"),
			web.NewPage(CasePage, "CASE", "/case"),
			web.NewPage(UnionAndSetOperatorsPage, "UNION and Set Operators", "/union_and_set_operators"),
			web.NewPage(PivotPage, "PIVOT", "/pivot"),
			web.NewPage(StringManipulationPage, "String Manipulation", "/string_manipulation"),
			web.NewPage(DateAndTimePage, "Date and Time", "/date_and_time"),
		}),
		web.NewSection("Table Operations", []web.Page{
			web.NewPage(CreateTablePage, "CREATE TABLE", "/create_table"),
			web.NewPage(AlterTablePage, "ALTER TABLE", "/alter_table"),
			web.NewPage(DropTablePage, "DROP TABLE", "/drop_table"),
			web.NewPage(ConstraintsPage, "Constraints", "/constraints"),
			web.NewPage(PrimaryKeyPage, "PRIMARY KEY", "/primary_key"),
			web.NewPage(ForeignKeyPage, "FOREIGN KEY", "/foreign_key"),
			web.NewPage(CascadePage, "CASCADE", "/cascade"),
			web.NewPage(IndexesPage, "Indexes", "/indexes"),
		}),
		web.NewSection("Advanced Queries", []web.Page{
			web.NewPage(SubqueriesPage, "Subqueries", "/subqueries"),
			web.NewPage(CommonTableExpressionsPage, "Common Table Expressions", "/common_table_expressions"),
			web.NewPage(TemporaryTablesPage, "Temporary Tables", "/temporary_tables"),
			web.NewPage(ViewsPage, "Views", "/views"),
			web.NewPage(MaterializedViewsPage, "Materialized Views", "/materialized_views"),
			web.NewPage(TransactionsPage, "Transactions", "/foreign_key"),
		}),
		web.NewSection("Advanced Features", []web.Page{
			web.NewPage(WindowFunctionsPage, "Window Functions", "/window_functions"),
			web.NewPage(RankFunctionsPage, "Rank Functions", "/rank_functions"),
			web.NewPage(StoredProceduresPage, "Stored Procedures", "/stored_procedures"),
			web.NewPage(TriggersPage, "Triggers", "/triggers"),
			web.NewPage(RecursiveQueriesPage, "Recursive Queries", "/recursive_queries"),
			web.NewPage(PerformanceAndExplainPage, "Performance and EXPLAIN", "/performance_and_explain"),
			web.NewPage(JSONOperationsPage, "JSON Operations", "/json_operations"),
		}),
		web.NewSection("Administration and Security", []web.Page{
			web.NewPage(UsersAndPermissionsPage, "Users and Permissions", "/users_and_permissions"),
			web.NewPage(SQLInjectionPage, "SQL Injection", "/sql_injection"),
			web.NewPage(DatabaseEnginesPage, "Database Engines", "/database_engines"),
			web.NewPage(ReplicasPage, "Replicas", "/replicas"),
			web.NewPage(BackupAndRecoveryPage, "Backup and Recovery", "/backup_and_recovery"),
			web.NewPage(DatabaseMigrationsPage, "Database Migrations", "/database_migrations"),
			web.NewPage(DynamicSQLPage, "Dynamic SQL", "/dynamic_sql"),
			web.NewPage(RDBMSApplicationsPage, "RDBMS Applications", "/rdbms_applications"),
			web.NewPage(SchemaDesignPage, "Schema Design", "/schema_design"),
		}),
		web.NewSection("Reference", []web.Page{
			web.NewPage(ExpertCookbookPage, "Expert Cookbook", "/expert_cookbook"),
			web.NewPage(TipsAndTricksPage, "Tips and Tricks", "/tips_and_tricks"),
			web.NewPage(GlossaryPage, "Glossary", "/glossary"),
		}),
	},
}
