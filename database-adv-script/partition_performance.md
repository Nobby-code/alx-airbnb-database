Objective: Implement table partitioning to optimize queries on large datasets.

Instructions:

Assume the Booking table is large and query performance is slow. Implement partitioning on the Booking table based on the start_date column. Save the query in a file partitioning.sql

Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).

Write a brief report on the improvements you observed.

In non-partitioned tables, this query will scan the whole table.

In partitioned tables, PostgreSQL will use partition pruning, scanning only the relevant partition

Partitioning based on start_date significantly improved query performance when filtering by date. Recommended for large historical data queries.
