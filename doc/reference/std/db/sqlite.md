# SQLite driver

The `:std/db/sqlite` library provides a driver for a SQLite database.

::: tip To use the bindings from this module:
```scheme
(import :std/db/sqlite)
```
:::

## sqlite-open
```
(sql-connect sqlite-open ...)
(sqlite-open file (flags (fxior SQLITE_OPEN_READWRITE SQLITE_OPEN_CREATE)))
```

Please document me!
