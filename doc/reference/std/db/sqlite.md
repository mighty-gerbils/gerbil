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

Opens the SQLite database at `file` with the options specified in the `flags` bit field, returning
a connection. The following constants are exported by the `:std/db/_sqlite` module and are supported
by the `flags` bit field:

- `SQLITE_OPEN_READONLY`: Open the database with read-only capabilities
- `SQLITE_OPEN_READWRITE`: Open the database with read/write capabilities
- `SQLITE_OPEN_CREATE`: Create the database `file` if it doesn't exist
- `SQLITE_OPEN_URI`: Interprets `file` as a URI (useful for [controlling options via query
    parameters](https://sqlite.org/uri.html#recognized_query_parameters))
- `SQLITE_OPEN_MEMORY`: If specified, the database will be opened in-memory (`file` is used as the
    database name when cache-sharing is enabled)
- `SQLITE_OPEN_NOMUTEX`: Enables "multi-thread" mode (separate threads using SQLite should use a
    different connection)
- `SQLITE_OPEN_FULLMUTEX`: Enables "serialized" mode (separate threads using SQLite can use the same
    connection)
- `SQLITE_OPEN_SHAREDCACHE`: Enables [cache-sharing](https://sqlite.org/sharedcache.html) ([this is
    no longer recommended](https://sqlite.org/sharedcache.html#dontuse))
- `SQLITE_OPEN_PRIVATECACHE` Disables [cache-sharing](https://sqlite.org/sharedcache.html)

::: tip
At least one of `SQLITE_OPEN_READONLY` or `SQLITE_OPEN_READWRITE` must be specified
:::

To learn more about the above flags, along with general SQLite connection information, [see the
official SQLite documentation](https://sqlite.org/c3ref/open.html).
