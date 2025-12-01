# SQLite driver

The `:std/db/sqlite` library provides a driver for a SQLite database.

::: tip To use the bindings from this module:
```scheme
(import :std/db/sqlite)
```
:::

## sqlite-open

```scheme
(sqlite-open (file : :string)
             (flags : :fixnum := (fxior SQLITE_OPEN_READWRITE SQLITE_OPEN_CREATE)))
;; => #<sqlite-connection #42>
```

Please document me!
