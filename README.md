# redshift-utils
Collection of useful Redshift queries.

* [Redshift Spectrum queries](select_redshift_spectrum_queries_costs.sql) - Provides information about Redshift Spectrum queries by users and cost of each query
* [User permmissions for tables in a schema](select_permissions_for_user_for_tables_in_schema.sql) - User access for each table in schema.
* [Get load errors](select_load_errors.sql) - Returns error occurured as a result of `COPY` command.
* [Tables' sizes](select_tables_sizes.sql) - Returns sizes of tables in descending order.
* [Long running queries](select_long_running_queries.sql) - Returns longest queries for last day also with usernames.