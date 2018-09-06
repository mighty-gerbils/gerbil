# SQL Databases

## Overview

## Generic Database Interface

::: tip usage
(import :std/db/dbi)
:::

### connection?
::: tip usage
```
(connection? ...)
```
:::

Please document me!

### statement?
::: tip usage
```
(statement? ...)
```
:::

Please document me!

### sql-error?
::: tip usage
```
(sql-error? ...)
```
:::

Please document me!

### sql-connect
::: tip usage
```
(sql-connect ...)
```
:::

Please document me!

### sql-close
::: tip usage
```
(sql-close ...)
```
:::

Please document me!

### sql-prepare
::: tip usage
```
(sql-prepare ...)
```
:::

Please document me!

### sql-bind
::: tip usage
```
(sql-bind ...)
```
:::

Please document me!

### sql-clear
::: tip usage
```
(sql-clear ...)
```
:::

Please document me!

### sql-reset
::: tip usage
```
(sql-reset ...)
```
:::

Please document me!

### sql-reset/clear
::: tip usage
```
(sql-reset/clear ...)
```
:::

Please document me!

### sql-finalize
::: tip usage
```
(sql-finalize ...)
```
:::

Please document me!

### sql-eval
::: tip usage
```
(sql-eval ...)
```
:::

Please document me!

### sql-eval-query
::: tip usage
```
(sql-eval-query ...)
```
:::

Please document me!

### sql-exec
::: tip usage
```
(sql-exec ...)
```
:::

Please document me!

### sql-query
::: tip usage
```
(sql-query ...)
```
:::

Please document me!

### in-sql-query
::: tip usage
```
(in-sql-query ...)
```
:::

Please document me!

### sql-columns
::: tip usage
```
(sql-columns ...)
```
:::

Please document me!

### sql-txn-begin
::: tip usage
```
(sql-txn-begin ...)
```
:::

Please document me!

### sql-txn-commit
::: tip usage
```
(sql-txn-commit ...)
```
:::

Please document me!

### sql-txn-abort
::: tip usage
```
(sql-txn-abort ...)
```
:::

Please document me!



## SQLite driver

::: tip usage
(import :std/db/sqlite)
:::

### sqlite-open
::: tip usage
```
(sql-connect sqlite-open ...)
```
:::

Please document me!


## PostgreSQL driver

::: tip usage
(import :std/db/postgresql)
:::

### postgresql-connect
::: tip usage
```
(sql-connect postgresql-connect ...)
```
:::

Please document me!

### defcatalog
::: tip usage
```
(defcatalog ...)
```
:::

Please document me!

### defcatalog-default
::: tip usage
```
(defcatalog-default ...)
```
:::

Please document me!

### default-catalog
::: tip usage
```
(def default-catalog)
```
:::

Please document me!

### current-catalog
::: tip usage
```
(current-catalog ...)
```
:::

Please document me!


## MySQL driver

::: tip usage
(import :std/db/mysql)
:::

### mysql-connect
::: tip usage
```
(sql-connect mysql-connect ...)
```
:::

Please document me!

## Connection Pools

::: tip usage
(import :std/db/conpool)
:::

### make-conpool
::: tip usage
```
(make-conpool ...)
```
:::

Please document me!

### conpool?
::: tip usage
```
(conpool? ...)
```
:::

Please document me!

### conpool-get
::: tip usage
```
(conpool-get ...)
```
:::

Please document me!

### conpool-put
::: tip usage
```
(conpool-put ...)
```
:::

Please document me!

### conpool-release
::: tip usage
```
(conpool-release ...)
```
:::

Please document me!

### conpool-close
::: tip usage
```
(conpool-close ...)
```
:::

Please document me!

## Example