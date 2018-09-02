# SQL Databases

Database interfaces.

## std/db/conpool

Database connection pool.

```
(import :std/db/conpool)

;; exports:

  make-conpool conpool?
  conpool-get conpool-put conpool-release conpool-close
```


## std/db/dbi

Generic SQL database interface.

```
(import :std/db/dbi)

;; exports:

  sql-connect sql-close sql-prepare
  sql-bind sql-clear sql-reset sql-reset/clear sql-finalize
  sql-eval sql-eval-query
  sql-exec sql-query in-sql-query sql-columns
  sql-txn-begin sql-txn-commit sql-txn-abort

```


## std/db/mysql
MySQL dbi driver.

```
(import :std/db/mysql)

;; exports:

  mysql-connect
```

## std/db/postgresql
PostgreSQL dbi driver.

```
(import :std/db/postgresql)

;; exports:

  postgreql-connect
  defcatalog
  defcatalog-default
  default-catalog
  current-catalog
```

## std/db/sqlite
SQLite dbi driver.

```
(import :std/db/sqlite)

;; exports:

  sqlite-open
```