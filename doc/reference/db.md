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

    (import :std/db/postgresql)

Have a look at [the postgresql-test.ss file](https://github.com/vyzo/gerbil/blob/master/src/std/db/postgresql-test.ss) to see more of how it is used with
the `:std/db/dbi`.


<a id="org04d26f9"></a>

### `postgresql-connect`

The first way is simply to use the function.

    (postgresql-connect host: "localhost" user: "foo" passwd: "bar")
    ;; => #<postgresql-connection #36>

But, often, we may want to close the connection when garbage collected so we,
the developer, don&rsquo;t need to worry about hanging connections. Thus,
`std/db/dbi#sql-connect` is often the better choice as it `will`&rsquo;s the
`sql-close` into being.

    (import :std/db/dbi)
    (def pg (sql-connect postgresql-connect host: "localhost" user: "foo" passwd: "bar"))
    ;; => #<postgresql-connection #36>


<a id="defcatalog"></a>

### `defcatalog`, Postgresql->Gerbil->Postgresql mapping

A catalog tells us what to do with what postgresql gives us.

Here&rsquo;s the basic syntax.

    ((_ (name mixin ...) (oids serialize deserialize) ...)

A mixin is not always needed. Here is our first version.

    (defcatalog my-default-catalog
      ;; BOOLOID
      ((16) (lambda _ "TRUE") (lambda _ 42))
      ;; INT8OID INT2OID INT4OID FLOAT4OID FLOAT8OID NUMERICOID
      ((20 21 23 700 701 1700) (lambda _ "42") (lambda _ 42)))

Try it out by `parameterize`&rsquo;ing the [`current-catalog`](#currentCatalog).

    (parameterize ((current-catalog my-default-catalog))
      (sql-eval-query pg "SELECT 1, FALSE WHERE $1" 'hey-you))
    ;; => (#(42 42))


<a id="orgd307da2"></a>

### `defcatalog-default`

By default there is a [`default-catalog`](#defaultCatalog). If we want to declare a new type within
the default this is where to go.

For example, **PostgreSQL** has a **JSON** type.

    (let (stmt (sql-prepare pg "SELECT typname, oid FROM pg_catalog.pg_type WHERE typname ILIKE '%json%'"))
              (cons (sql-columns stmt) (sql-query stmt)))

    ;; => (("typname" "oid") #("json" "114") #("jsonb" "3802") #("jsonpath" "4072")
    ;;      #("_json" "199") #("_jsonb" "3807") #("_jsonpath" "4073"))

And, **Gerbil** does as well! Actually, the `:std/test/json` just turns it into a hash table.

First we see the `oid`&rsquo;s for postgres&rsquo; json types. Select them as JSON to see
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

All we need is to (de)serialize them&#x2026;

    (def (serialize-json gerbil-json)
     (call-with-output-string "" (cut write-json gerbil-json <>)))

    (def (deserialize-json str)
      (call-with-input-string str read-json))

&#x2026; and add them to the default catalog.

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


<a id="defaultCatalog"></a>

### `default-catalog`

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


<a id="currentCatalog"></a>

### `current-catalog`

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

Don&rsquo;t forget to set it back :).

    (current-catalog default-catalog)

    (sql-eval-query pg "SELECT 1") ;; => (1)

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

    (import :std/db/conpool)

A connection pool is simply a pool of database connections that use the same
connect function. Beyond that there&rsquo;s a `max` parameter where one can specify
the max connections.


<a id="org755c44e"></a>

### `make-conpool`

We need a pool to grab db connections from. The init for a conpool is simple
enough.

    (lambda (self connect (max #f)) ... )

So let&rsquo;s make a pool.

    (def (make-pgpool)
      (make-conpool
       (cut sql-connect postgresql-connect
            host: "localhost" user: "foo" passwd: "bar" db: "baz")
       2))

    (def pgpool (make-pgpool))

We now have a pool of two connections to our database. Yay!


<a id="org171cbe6"></a>

### `conpool?`

A predicate. I&rsquo;ll leave you to guess what it does by looking at the code.

    (conpool? pgpool) ;; => #t
    (conpool? 'not-pgpool) ;; => #f


<a id="orgf9a0b6f"></a>

### `conpool-get`

A way to get a connection is somewhat important. `(conpool-get pool
timeout-in-seconds)` is that way.

    (def (conpool-get cp (timeo absent-obj)) ...)

That timeout is somewhat important was well. After all, we only have two
connections and once they are used, once, for now ....

    (def (my-first-query q . args)
      (apply sql-eval-query (conpool-get pgpool 5) q args))

    (my-first-query "select 42") ;; => (42)
    (my-first-query "select 42") ;; => (42)

    ;; But!!

    (my-first-query "select 42")

    ; Evaluation aborted on conpool-get: [timeout-error] Error getting connection; timeout

Because of that we need to close and reset the conpool for now using
[`conpool-close`](#conpoolClose).

    (conpool-close pgpool)
    (set! pgpool (make-pgpool))


<a id="org97c2122"></a>

### `conpool-put`

When we&rsquo;re done with a connection that&rsquo;s still working we need to put it back.

    (import :std/sugar)

    (def (my-sql-e sql-fn . args)
      (def con (conpool-get pgpool 5))
      (try
       (apply sql-fn con args)
       (finally (conpool-put pgpool con))))

It works.

    (my-sql-e sql-eval-query "select 42") ;; => (42)
    (my-sql-e sql-eval-query "select 42") ;; => (42)
    (my-sql-e sql-eval-query "select 42") ;; => (42)
    (my-sql-e sql-eval-query "select 42") ;; => (42)
    ;;; etc ...

But there&rsquo;s still a problem of course. Connections themselves may have errors so
they do not work.

Like, for example, erroring out in the middle of a transaction.

    (my-sql-e sql-eval-query "begin;") ;; => ()
    (my-sql-e sql-eval-query "select foo")
    ; Evaluation aborted on postgresql-prepare!: [sql-error] column "foo" does not
    ; exist --- irritants: (S . ERROR) (V . ERROR) (C . 42703) (M . column "foo"
    ; does not exist) (P . 8) (F . parse_relation.c) (L . 3349) (R .
    ; errorMissingColumn)

    (my-sql-e sql-eval-query "select 1")
    ; Evaluation aborted on postgresql-prepare!: [sql-error] current transaction is
    ; aborted, commands ignored until end of transaction block --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 25P02) (M . current transaction is aborted, commands
    ; ignored until end of transaction block) (F . postgres.c) (L . 1424) (R .
    ; exec_parse_message)

We can still use [`conpool-close`](#conpoolClose), of course, but closing the entire conpool
because one connection is in error ruins the point of a pool, more or less.

    (conpool-close pgpool)
    (set! pgpool (make-pgpool))

To get around that, [`conpool-release`](#conpoolRelease) does exactly what we want.


<a id="conpoolRelease"></a>

### `conpool-release`

In the case of an error the easy way is to release the connection. This
basically says to the pool maintenance guy that there&rsquo;s been some usage and we
need to refill it a little bit.

    (import :std/sugar)

    (def (my-sql-ee sql-fn . args)
      (def err #f)
      (def con (conpool-get pgpool 5))
      (try
       (apply sql-fn con args)
       (catch (e) (set! err e))
       (finally
        (if err (begin (conpool-release pgpool con) (raise err))
            (conpool-put pgpool con)))))

Now it always has the pool ready for swimmers.

    (my-sql-e sql-eval-query "begin;") ;; => ()
    (my-sql-e sql-eval-query "select foo")
    ; Evaluation aborted on postgresql-prepare!: [sql-error] column "foo" does not
    ; exist --- irritants: (S . ERROR) (V . ERROR) (C . 42703) (M . column "foo"
    ; does not exist) (P . 8) (F . parse_relation.c) (L . 3349) (R .
    ; errorMissingColumn)

    (my-sql-e sql-eval-query "select 1") ;; => (1)


<a id="conpoolClose"></a>

### `conpool-close`

If you&rsquo;ve read this far you already know: `conpool-close` is for closing a
conpool. After all, one does need to shut things down and often database servers
prefer a clean shutdown of an open connection.

    (conpool-close pgpool)

    (my-sql-ee sql-eval-query "select 1")
    ; Evaluation aborted on Connection pool is closed
