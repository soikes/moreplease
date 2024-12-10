// Package site describes the More SQL Please site in terms of its structure and page order.
package site

import (
	"soikke.li/moreplease/models"
)

const (
	SelectPage                 models.PageID = `select`
	WherePage                                = `where`
	OrderByPage                              = `order_by`
	LimitPage                                = `limit`
	OperatorsPage                            = `operators`
	CommentsPage                             = `comments`
	InsertPage                               = `insert`
	UpdatePage                               = `update`
	DeletePage                               = `delete`
	DataTypesPage                            = `data_types`
	JoinPage                                 = `join`
	FunctionsPage                            = `functions`
	AggregateFunctionsPage                   = `aggregate_functions`
	GroupByPage                              = `group_by`
	CasePage                                 = `case`
	UnionAndSetOperatorsPage                 = `union_and_set_operators`
	PivotPage                                = `pivot`
	StringManipulationPage                   = `string_manipulation`
	DateAndTimePage                          = `date_and_time`
	CreateTablePage                          = `create_table`
	AlterTablePage                           = `alter_table`
	DropTablePage                            = `drop_table`
	ConstraintsPage                          = `constraints`
	PrimaryKeyPage                           = `primary_key`
	ForeignKeyPage                           = `foreign_key`
	CascadePage                              = `cascade`
	IndexesPage                              = `indexes`
	SubqueriesPage                           = `subqueries`
	CommonTableExpressionsPage               = `common_table_expressions`
	TemporaryTablesPage                      = `temporary_tables`
	ViewsPage                                = `views`
	MaterializedViewsPage                    = `materialized_views`
	TransactionsPage                         = `transactions`
	WindowFunctionsPage                      = `window_functions`
	RankFunctionsPage                        = `rank_functions`
	StoredProceduresPage                     = `stored_procedures`
	TriggersPage                             = `triggers`
	RecursiveQueriesPage                     = `recursive_queries`
	PerformanceAndExplainPage                = `performance_and_explain`
	JSONOperationsPage                       = `json_operations`
	UsersAndPermissionsPage                  = `users_and_permissions`
	SQLInjectionPage                         = `sql_injection`
	DatabaseEnginesPage                      = `database_engines`
	ReplicasPage                             = `replicas`
	BackupAndRecoveryPage                    = `backup_and_recovery`
	DatabaseMigrationsPage                   = `database_migrations`
	DynamicSQLPage                           = `dynamic_sql`
	RDBMSApplicationsPage                    = `rdbms_applications`
	SchemaDesignPage                         = `schema_design`
	ExpertCookbookPage                       = `expert_cookbook`
	TipsAndTricksPage                        = `tips_and_tricks`
	GlossaryPage                             = `glossary`
	IndexPage                                = `index`
)

// MSP defines metadata and page order of the More SQL Please site.
var MSP = models.Site{
	Title:    "More SQL Please",
	Language: models.LanguageSQL,
	Sections: []models.Section{
		models.NewSection("Basics", []models.Page{
			models.NewPage(SelectPage, "SELECT"),
			models.NewPage(WherePage, "WHERE"),
			models.NewPage(OrderByPage, "ORDER BY"),
			models.NewPage(LimitPage, "LIMIT"),
			models.NewPage(OperatorsPage, "Operators"),
			models.NewPage(CommentsPage, "Comments"),
			models.NewPage(InsertPage, "INSERT"),
			models.NewPage(UpdatePage, "UPDATE"),
			models.NewPage(DeletePage, "DELETE"),
			models.NewPage(DataTypesPage, "Data Types"),
		}),
		models.NewSection("Intermediate", []models.Page{
			models.NewPage(JoinPage, "JOIN"),
			models.NewPage(FunctionsPage, "Functions"),
			models.NewPage(AggregateFunctionsPage, "Aggregate Functions"),
			models.NewPage(GroupByPage, "GROUP BY"),
			models.NewPage(CasePage, "CASE"),
			models.NewPage(UnionAndSetOperatorsPage, "UNION and Set Operators"),
			models.NewPage(PivotPage, "PIVOT"),
			models.NewPage(StringManipulationPage, "String Manipulation"),
			models.NewPage(DateAndTimePage, "Date and Time"),
		}),
		models.NewSection("Table Operations", []models.Page{
			models.NewPage(CreateTablePage, "CREATE TABLE"),
			models.NewPage(AlterTablePage, "ALTER TABLE"),
			models.NewPage(DropTablePage, "DROP TABLE"),
			models.NewPage(ConstraintsPage, "Constraints"),
			models.NewPage(PrimaryKeyPage, "PRIMARY KEY"),
			models.NewPage(ForeignKeyPage, "FOREIGN KEY"),
			models.NewPage(CascadePage, "CASCADE"),
			models.NewPage(IndexesPage, "Indexes"),
		}),
		models.NewSection("Advanced Queries", []models.Page{
			models.NewPage(SubqueriesPage, "Subqueries"),
			models.NewPage(CommonTableExpressionsPage, "Common Table Expressions"),
			models.NewPage(TemporaryTablesPage, "Temporary Tables"),
			models.NewPage(ViewsPage, "Views"),
			models.NewPage(MaterializedViewsPage, "Materialized Views"),
			models.NewPage(TransactionsPage, "Transactions"),
		}),
		models.NewSection("Advanced Features", []models.Page{
			models.NewPage(WindowFunctionsPage, "Window Functions"),
			models.NewPage(RankFunctionsPage, "Rank Functions"),
			models.NewPage(StoredProceduresPage, "Stored Procedures"),
			models.NewPage(TriggersPage, "Triggers"),
			models.NewPage(RecursiveQueriesPage, "Recursive Queries"),
			models.NewPage(PerformanceAndExplainPage, "Performance and EXPLAIN"),
			models.NewPage(JSONOperationsPage, "JSON Operations"),
		}),
		models.NewSection("Administration and Security", []models.Page{
			models.NewPage(UsersAndPermissionsPage, "Users and Permissions"),
			models.NewPage(SQLInjectionPage, "SQL Injection"),
			models.NewPage(DatabaseEnginesPage, "Database Engines"),
			models.NewPage(ReplicasPage, "Replicas"),
			models.NewPage(BackupAndRecoveryPage, "Backup and Recovery"),
			models.NewPage(DatabaseMigrationsPage, "Database Migrations"),
			models.NewPage(DynamicSQLPage, "Dynamic SQL"),
			models.NewPage(RDBMSApplicationsPage, "RDBMS Applications"),
			models.NewPage(SchemaDesignPage, "Schema Design"),
		}),
		models.NewSection("Reference", []models.Page{
			models.NewPage(ExpertCookbookPage, "Expert Cookbook"),
			models.NewPage(TipsAndTricksPage, "Tips and Tricks"),
			models.NewPage(GlossaryPage, "Glossary"),
		}),
	},
}
