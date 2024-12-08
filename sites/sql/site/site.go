// Package site describes the More SQL Please site in terms of its structure and page order.
package site

import "soikke.li/moreplease/models"

const (
	SelectPage models.PageID = iota
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
var MSP = models.Site{
	Title:    "More SQL Please",
	Language: models.LanguageSQL,
	Sections: []models.Section{
		models.NewSection("Basics", []models.Page{
			models.NewPage(SelectPage, "SELECT", "/select"),
			models.NewPage(WherePage, "WHERE", "/where"),
			models.NewPage(OrderByPage, "ORDER BY", "/order_by"),
			models.NewPage(LimitPage, "LIMIT", "/limit"),
			models.NewPage(OperatorsPage, "Operators", "/operators"),
			models.NewPage(CommentsPage, "Comments", "/comments"),
			models.NewPage(InsertPage, "INSERT", "/insert"),
			models.NewPage(UpdatePage, "UPDATE", "/update"),
			models.NewPage(DeletePage, "DELETE", "/delete"),
			models.NewPage(DataTypesPage, "Data Types", "/data_types"),
		}),
		models.NewSection("Intermediate", []models.Page{
			models.NewPage(JoinPage, "JOIN", "/join"),
			models.NewPage(FunctionsPage, "Functions", "/functions"),
			models.NewPage(AggregateFunctionsPage, "Aggregate Functions", "/aggregate_functions"),
			models.NewPage(GroupByPage, "GROUP BY", "/group_by"),
			models.NewPage(CasePage, "CASE", "/case"),
			models.NewPage(UnionAndSetOperatorsPage, "UNION and Set Operators", "/union_and_set_operators"),
			models.NewPage(PivotPage, "PIVOT", "/pivot"),
			models.NewPage(StringManipulationPage, "String Manipulation", "/string_manipulation"),
			models.NewPage(DateAndTimePage, "Date and Time", "/date_and_time"),
		}),
		models.NewSection("Table Operations", []models.Page{
			models.NewPage(CreateTablePage, "CREATE TABLE", "/create_table"),
			models.NewPage(AlterTablePage, "ALTER TABLE", "/alter_table"),
			models.NewPage(DropTablePage, "DROP TABLE", "/drop_table"),
			models.NewPage(ConstraintsPage, "Constraints", "/constraints"),
			models.NewPage(PrimaryKeyPage, "PRIMARY KEY", "/primary_key"),
			models.NewPage(ForeignKeyPage, "FOREIGN KEY", "/foreign_key"),
			models.NewPage(CascadePage, "CASCADE", "/cascade"),
			models.NewPage(IndexesPage, "Indexes", "/indexes"),
		}),
		models.NewSection("Advanced Queries", []models.Page{
			models.NewPage(SubqueriesPage, "Subqueries", "/subqueries"),
			models.NewPage(CommonTableExpressionsPage, "Common Table Expressions", "/common_table_expressions"),
			models.NewPage(TemporaryTablesPage, "Temporary Tables", "/temporary_tables"),
			models.NewPage(ViewsPage, "Views", "/views"),
			models.NewPage(MaterializedViewsPage, "Materialized Views", "/materialized_views"),
			models.NewPage(TransactionsPage, "Transactions", "/foreign_key"),
		}),
		models.NewSection("Advanced Features", []models.Page{
			models.NewPage(WindowFunctionsPage, "Window Functions", "/window_functions"),
			models.NewPage(RankFunctionsPage, "Rank Functions", "/rank_functions"),
			models.NewPage(StoredProceduresPage, "Stored Procedures", "/stored_procedures"),
			models.NewPage(TriggersPage, "Triggers", "/triggers"),
			models.NewPage(RecursiveQueriesPage, "Recursive Queries", "/recursive_queries"),
			models.NewPage(PerformanceAndExplainPage, "Performance and EXPLAIN", "/performance_and_explain"),
			models.NewPage(JSONOperationsPage, "JSON Operations", "/json_operations"),
		}),
		models.NewSection("Administration and Security", []models.Page{
			models.NewPage(UsersAndPermissionsPage, "Users and Permissions", "/users_and_permissions"),
			models.NewPage(SQLInjectionPage, "SQL Injection", "/sql_injection"),
			models.NewPage(DatabaseEnginesPage, "Database Engines", "/database_engines"),
			models.NewPage(ReplicasPage, "Replicas", "/replicas"),
			models.NewPage(BackupAndRecoveryPage, "Backup and Recovery", "/backup_and_recovery"),
			models.NewPage(DatabaseMigrationsPage, "Database Migrations", "/database_migrations"),
			models.NewPage(DynamicSQLPage, "Dynamic SQL", "/dynamic_sql"),
			models.NewPage(RDBMSApplicationsPage, "RDBMS Applications", "/rdbms_applications"),
			models.NewPage(SchemaDesignPage, "Schema Design", "/schema_design"),
		}),
		models.NewSection("Reference", []models.Page{
			models.NewPage(ExpertCookbookPage, "Expert Cookbook", "/expert_cookbook"),
			models.NewPage(TipsAndTricksPage, "Tips and Tricks", "/tips_and_tricks"),
			models.NewPage(GlossaryPage, "Glossary", "/glossary"),
		}),
	},
}
