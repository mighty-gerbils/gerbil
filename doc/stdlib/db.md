# Databases

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


## std/db/leveldb
LevelDB interface.

```
(import :std/db/leveldb)

;; exports:

  leveldb-error?
  leveldb?
  leveldb-open leveldb-close
  leveldb-put leveldb-get leveldb-delete leveldb-write leveldb-key?
  leveldb-writebatch leveldb-writebatch-clear
  leveldb-writebatch-put leveldb-writebatch-delete
  leveldb-iterator leveldb-iterator-close leveldb-iterator-valid?
  leveldb-iterator-seek-first leveldb-iterator-seek-last
  leveldb-iterator-seek
  leveldb-iterator-next leveldb-iterator-prev
  leveldb-iterator-key leveldb-iterator-value
  leveldb-iterator-error
  in-leveldb in-leveldb-keys
  leveldb-compact-range
  leveldb-destroy-db
  leveldb-repair-db
  leveldb-options leveldb-default-options
  leveldb-read-options leveldb-default-read-options
  leveldb-write-options leveldb-default-write-options
```

## std/db/lmdb
LMDB interface.

```
(import :std/db/lmdb)

;; exports:

  lmdb-error?
  lmdb-env?
  lmdb-db? lmdb-db-env lmdb-db-name
  lmdb-txn? lmdb-txn-env
  lmdb-cursor? lmdb-cursor-txn lmdb-cursor-db
  lmdb-open lmdb-sync lmdb-close lmdb-stat
  lmdb-open-db lmdb-close-db lmdb-db-stat lmdb-db-drop
  lmdb-txn-begin lmdb-txn-id
  lmdb-txn-commit lmdb-txn-abort
  lmdb-txn-reset lmdb-txn-renew
  lmdb-get lmdb-put lmdb-del
  lmdb-cursor-open lmdb-cursor-close lmdb-cursor-renew
  lmdb-cursor-get lmdb-cursor-put lmdb-cursor-del lmdb-cursor-count
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