# PostgreSQL driver

The `:std/db/postgresql` library provides a driver for a PostgreSQL database.

::: tip To use the bindings from this module:
```scheme
(import :std/db/postgresql)
```
:::

Have a look at [the postgresql-test.ss file](https://github.com/mighty-gerbils/gerbil/blob/master/src/std/db/postgresql-test.ss)
to see more of how it is used with the `:std/db/dbi`.

## postgresql-connect
```scheme
(postgresql-connect url
   [ssl: 'try] [ssl-context: (default-client-ssl-context)] [timeout: #f])
OR
(postgresql-connect [host: "localhost"] user: u passwd: p db: d
   [ssl: 'try] [ssl-context: (default-client-ssl-context)] [timeout: #f])
=> postgresql-connection
```

To connect to a database, you can simply to use the function.
Either provide a `url` as a positional argument
(defaults to `#f` which designates using the mechanism below instead),
or provide separately the `host`, `port`, `user`, `passwd`, `db`,
which all default to `#f`.
The `url` and its components roughly follow the same meaning as in `libpq`:
https://www.postgresql.org/docs/current/libpq-connect.html

A `host` value of `#f` designates the local address `"127.0.0.1"`.
A `port` value of `#f` designates port `5432`.
A `user` value of `#f` designates the value of the `USER` environment variable.
A `passwd` value of `#f` designates the empty password `""`.
A `db` value of `#f` designates the same value as `user`.

Either way, you may specify the keyword arguments
`ssl` (defaults to `'try`), which unless false will cause an SSL connection to be attempted,
though unless it is `#t` will not cause an error if SSL is unsupported by the server.
The `ssl-context` will be used for the connection, as well as the `timeout`.

Now, often, we may want to close the connection when garbage collected so we,
the developer, don’t need to worry about hanging connections. Thus,
[`std/db/dbi#sql-connect`](dbi.md#sql-connect) is often the better choice as it `will`’s the
`sql-close` into being.

    (import :std/db/dbi)
    (def pg (sql-connect postgresql-connect host: "localhost" user: "foo" passwd: "bar"))
    ;; => #<postgresql-connection #36>

## defcatalog, Postgresql->Gerbil->Postgresql mapping

A catalog tells us what to do with what postgresql gives us.

Here’s the basic syntax.

    ((_ (name mixin ...) (oids serialize deserialize) ...)

A mixin is not always needed. Here is our first version.

    (defcatalog my-default-catalog
      ;; BOOLOID
      ((16) (lambda _ "TRUE") (lambda _ 42))
      ;; INT8OID INT2OID INT4OID FLOAT4OID FLOAT8OID NUMERICOID
      ((20 21 23 700 701 1700) (lambda _ "42") (lambda _ 42)))

Try it out by `parameterize`’ing the [`current-catalog`](#currentCatalog).

    (parameterize ((current-catalog my-default-catalog))
      (sql-eval-query pg "SELECT 1, FALSE WHERE $1" 'hey-you))
    ;; => (#(42 42))

## defcatalog-default

By default there is a [`default-catalog`](#defaultCatalog). If we want to declare a new type within
the default this is where to go.

For example, **PostgreSQL** has a **JSON** type.

    (let (stmt (sql-prepare pg "SELECT typname, oid FROM pg_catalog.pg_type WHERE typname ILIKE '%json%'"))
              (cons (sql-columns stmt) (sql-query stmt)))

    ;; => (("typname" "oid") #("json" "114") #("jsonb" "3802") #("jsonpath" "4072")
    ;;      #("_json" "199") #("_jsonb" "3807") #("_jsonpath" "4073"))

And, **Gerbil** does as well! Actually, the `:std/test/json` just turns it into a hash table.

First we see the `oid`’s for postgres’ json types. Select them as JSON to see
that as well.

    (import :std/text/json)

    (def res
      (let (stmt
            (sql-prepare pg "SELECT json_build_object(typname, oid)
      FROM pg_catalog.pg_type WHERE typname ILIKE '%json%'"))

              (cons (sql-columns stmt) (sql-query stmt))))
    ;; => (("json_build_object") "{\"json\" : \"114\"}" "{\"jsonb\" : \"3802\"}"
    ;;      "{\"jsonpath\" : \"4072\"}" "{\"_json\" : \"199\"}" "{\"_jsonb\" :
    ;;      \"3807\"}" "{\"_jsonpath\" : \"4073\"}")
    ;;

    (def json-res (map (cut call-with-input-string <> read-json) (cdr res)))

    (map table->list json-res)
    ;; => (((json . "114")) ((jsonb . "3802")) ((jsonpath . "4072"))
    ;;    ((_json . "199")) ((_jsonb . "3807")) ((_jsonpath . "4073")))

All we need is to (de)serialize them…

    (def (serialize-json gerbil-json)
     (call-with-output-string "" (cut write-json gerbil-json <>)))

    (def (deserialize-json str)
      (call-with-input-string str read-json))

… and add them to the default catalog.

    (defcatalog-default ((114 3802) serialize-json deserialize-json))

Now our query return hash tables.

    (let (stmt (sql-prepare pg "SELECT json_build_object(typname, oid) FROM pg_catalog.pg_type WHERE typname ILIKE '%json%'"))
      (cons (sql-columns stmt) (sql-query stmt)))
    ;; => (("json_build_object") #<table #47> #<table #48> #<table #49> #<table #50>
    ;;      #<table #51> #<table #52>)

Even better, we can pass them to queries!

    (let (stmt (sql-prepare pg "SELECT * from json_each_text($1)"))
      (cons (sql-columns stmt) (begin (sql-bind stmt (list->hash-table '(("foo" . 1) ("bar" . "baz"))))
                                      (sql-query stmt))))
    ;; => (("key" "value") #("bar" "baz") #("foo" "1"))

## default-catalog

What if we only want to change certain things from the default and not have them
be default, yet still have most of the default (de)serializers available?
`default-catalog` and [`defcatalog`](#defcatalog) to the rescue.

Yes, mixin time!

First, note the difference. The default has a timestamp whereas ours does not.

    (sql-eval-query pg "SELECT '2021-03-12'::timestamp, 1")
    ;; => (#(#<date #57 nanosecond: 0 second: 0 minute: 0 hour: 0 day: 12 month: 3
    ;;       year: 2021 zone-offset: 0> 1))
    (parameterize ((current-catalog my-default-catalog))
      (sql-eval-query pg "SELECT '2021-03-12'::timestamp, 1"))
    ;;=> (#("2021-03-12 00:00:00" 42))

Make a new catalog with some mixins.

    (defcatalog (united-default-catalog my-default-catalog default-catalog))

Which works as expected.

    (parameterize ((current-catalog united-default-catalog))
      (sql-eval-query pg "SELECT '2021-03-12'::timestamp, 1"))
    ;; => (#(#<date #58 nanosecond: 0 second: 0 minute: 0 hour: 0 day: 12 month: 3
    ;;         year: 2021 zone-offset: 0> 42))


## current-catalog

The `current-catalog` parameter determines which catalog is used by default.

    (eq? (current-catalog) default-catalog) ;; =? #t

We can `parameterize` it.

     [ (parameterize ((current-catalog my-default-catalog))
         (sql-eval-query pg "SELECT '2021-03-12'::timestamp, 1"))
       (parameterize ((current-catalog united-default-catalog))
         (sql-eval-query pg "SELECT '2021-03-12'::timestamp, 1")) ]
    ;; => ( (#("2021-03-12 00:00:00" 42))
    ;;      (#(#<date #62 nanosecond: 0 second: 0 minute: 0 hour: 0 day: 12 month: 3
    ;    ;       year: 2021 zone-offset: 0> 42)))

Use it to declare a global default.

    (current-catalog my-default-catalog)

    (sql-eval-query pg "SELECT 1") ;; => (42)

Don’t forget to set it back :).

    (current-catalog default-catalog)

    (sql-eval-query pg "SELECT 1") ;; => (1)
