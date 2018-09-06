# Key-Value Stores

## LevelDB

This is an optional library providing a LevelDB interface;
for example usage see the [guide](/guide/intro.md#key-value-stores).

::: tip usage
(import :std/db/leveldb)
:::

### leveldb-error?
::: tip usage
```
(leveldb-error? ...)
```
:::

Please document me!

### leveldb?
::: tip usage
```
(leveldb? ...)
```
:::

Please document me!

### leveldb-open
::: tip usage
```
(leveldb-open ...)
```
:::

Please document me!

### leveldb-close
::: tip usage
```
(leveldb-close ...)
```
:::

Please document me!

### leveldb-put
::: tip usage
```
(leveldb-put ...)
```
:::

Please document me!

### leveldb-get
::: tip usage
```
(leveldb-get ...)
```
:::

Please document me!

### leveldb-delete
::: tip usage
```
(leveldb-delete ...)
```
:::

Please document me!

### leveldb-write
::: tip usage
```
(leveldb-write ...)
```
:::

Please document me!

### leveldb-key?
::: tip usage
```
(leveldb-key? ...)
```
:::

Please document me!

### leveldb-writebatch
::: tip usage
```
(leveldb-writebatch ...)
```
:::

Please document me!

### leveldb-writebatch-clear
::: tip usage
```
(leveldb-writebatch-clear ...)
```
:::

Please document me!

### leveldb-writebatch-put
::: tip usage
```
(leveldb-writebatch-put ...)
```
:::

Please document me!

### leveldb-writebatch-delete
::: tip usage
```
(leveldb-writebatch-delete ...)
```
:::

Please document me!

### leveldb-iterator
::: tip usage
```
(leveldb-iterator ...)
```
:::

Please document me!

### leveldb-iterator-close
::: tip usage
```
(leveldb-iterator-close ...)
```
:::

Please document me!

### leveldb-iterator-valid?
::: tip usage
```
(leveldb-iterator-valid? ...)
```
:::

Please document me!

### leveldb-iterator-seek-first
::: tip usage
```
(leveldb-iterator-seek-first ...)
```
:::

Please document me!

### leveldb-iterator-seek-last
::: tip usage
```
(leveldb-iterator-seek-last ...)
```
:::

Please document me!

### leveldb-iterator-seek
::: tip usage
```
(leveldb-iterator-seek ...)
```
:::

Please document me!

### leveldb-iterator-next
::: tip usage
```
(leveldb-iterator-next ...)
```
:::

Please document me!

### leveldb-iterator-prev
::: tip usage
```
(leveldb-iterator-prev ...)
```
:::

Please document me!

### leveldb-iterator-key
::: tip usage
```
(leveldb-iterator-key ...)
```
:::

Please document me!

### leveldb-iterator-value
::: tip usage
```
(leveldb-iterator-value ...)
```
:::

Please document me!

### leveldb-iterator-error
::: tip usage
```
(leveldb-iterator-error ...)
```
:::

Please document me!

### in-leveldb
::: tip usage
```
(in-leveldb ...)
```
:::

Please document me!

### in-leveldb-keys
::: tip usage
```
(in-leveldb-keys ...)
```
:::

Please document me!

### leveldb-compact-range
::: tip usage
```
(leveldb-compact-range ...)
```
:::

Please document me!

### leveldb-destroy-db
::: tip usage
```
(leveldb-destroy-db ...)
```
:::

Please document me!

### leveldb-repair-db
::: tip usage
```
(leveldb-repair-db ...)
```
:::

Please document me!

### leveldb-options
::: tip usage
```
(leveldb-options ...)
```
:::

Please document me!

### leveldb-default-options
::: tip usage
```
(leveldb-default-options ...)
```
:::

Please document me!

### leveldb-read-options
::: tip usage
```
(leveldb-read-options ...)
```
:::

Please document me!

### leveldb-default-read-options
::: tip usage
```
(leveldb-default-read-options ...)
```
:::

Please document me!

### leveldb-write-options
::: tip usage
```
(leveldb-write-options ...)
```
:::

Please document me!

### leveldb-default-write-options
::: tip usage
```
(leveldb-default-write-options ...)
```
:::

Please document me!



## LMDB

This is an optional library providing an LMDB interface;
for example usage see the [tutorial](/tutorials/kvstore.md).

::: tip usage
(import :std/db/lmdb)
:::

### lmdb-error?
::: tip usage
```
(lmdb-error? ...)
```
:::

Please document me!

### lmdb-env?
::: tip usage
```
(lmdb-env? ...)
```
:::

Please document me!

### lmdb-db?
::: tip usage
```
(lmdb-db? ...)
```
:::

Please document me!

### lmdb-db-env
::: tip usage
```
(lmdb-db-env ...)
```
:::

Please document me!

### lmdb-db-name
::: tip usage
```
(lmdb-db-name ...)
```
:::

Please document me!

### lmdb-txn?
::: tip usage
```
(lmdb-txn? ...)
```
:::

Please document me!

### lmdb-txn-env
::: tip usage
```
(lmdb-txn-env ...)
```
:::

Please document me!

### lmdb-cursor?
::: tip usage
```
(lmdb-cursor? ...)
```
:::

Please document me!

### lmdb-cursor-txn
::: tip usage
```
(lmdb-cursor-txn ...)
```
:::

Please document me!

### lmdb-cursor-db
::: tip usage
```
(lmdb-cursor-db ...)
```
:::

Please document me!

### lmdb-open
::: tip usage
```
(lmdb-open ...)
```
:::

Please document me!

### lmdb-sync
::: tip usage
```
(lmdb-sync ...)
```
:::

Please document me!

### lmdb-close
::: tip usage
```
(lmdb-close ...)
```
:::

Please document me!

### lmdb-stat
::: tip usage
```
(lmdb-stat ...)
```
:::

Please document me!

### lmdb-open-db
::: tip usage
```
(lmdb-open-db ...)
```
:::

Please document me!

### lmdb-close-db
::: tip usage
```
(lmdb-close-db ...)
```
:::

Please document me!

### lmdb-db-stat
::: tip usage
```
(lmdb-db-stat ...)
```
:::

Please document me!

### lmdb-db-drop
::: tip usage
```
(lmdb-db-drop ...)
```
:::

Please document me!

### lmdb-txn-begin
::: tip usage
```
(lmdb-txn-begin ...)
```
:::

Please document me!

### lmdb-txn-id
::: tip usage
```
(lmdb-txn-id ...)
```
:::

Please document me!

### lmdb-txn-commit
::: tip usage
```
(lmdb-txn-commit ...)
```
:::

Please document me!

### lmdb-txn-abort
::: tip usage
```
(lmdb-txn-abort ...)
```
:::

Please document me!

### lmdb-txn-reset
::: tip usage
```
(lmdb-txn-reset ...)
```
:::

Please document me!

### lmdb-txn-renew
::: tip usage
```
(lmdb-txn-renew ...)
```
:::

Please document me!

### lmdb-get
::: tip usage
```
(lmdb-get ...)
```
:::

Please document me!

### lmdb-put
::: tip usage
```
(lmdb-put ...)
```
:::

Please document me!

### lmdb-del
::: tip usage
```
(lmdb-del ...)
```
:::

Please document me!

### lmdb-cursor-open
::: tip usage
```
(lmdb-cursor-open ...)
```
:::

Please document me!

### lmdb-cursor-close
::: tip usage
```
(lmdb-cursor-close ...)
```
:::

Please document me!

### lmdb-cursor-renew
::: tip usage
```
(lmdb-cursor-renew ...)
```
:::

Please document me!

### lmdb-cursor-get
::: tip usage
```
(lmdb-cursor-get ...)
```
:::

Please document me!

### lmdb-cursor-put
::: tip usage
```
(lmdb-cursor-put ...)
```
:::

Please document me!

### lmdb-cursor-del
::: tip usage
```
(lmdb-cursor-del ...)
```
:::

Please document me!

### lmdb-cursor-count
::: tip usage
```
(lmdb-cursor-count ...)
```
:::

Please document me!
