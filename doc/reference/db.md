# SQL Databases

## Overview



<a id="orga921273"></a>

## Generic Database Interface

    (import :std/db/dbi)


<a id="orgc142ed3"></a>

### `sql-connect`

First things first we must connect to a database. Though the actual function to
connect differs between databases, `sql-connect` also makes a `will` so that the
connection is automagically closed using [`sql-close`](#sqlClose) when garbage collected.

    (import :std/db/postgresql)
    (def db (sql-connect postgresql-connect host: "localhost" user: "foo" passwd: "bar"))
    ;; => #<postgresql-connection #36>


<a id="org1572080"></a>

### `connection?`

This predicate asks if the thing passed is in fact a connection.

    (connection? db) ;; => #t
    (connection? car) ;; => #f


<a id="sqlEval"></a>

### `sql-eval`

Often when interacting with the **DB** we do not actually need a result.
`sql-eval` returns *unspecified* when run. In fact, three letters out of four,
(C)reate, (U)pdate and (D)elete, often need nothing at all.

    (sql-eval db "CREATE TEMPORARY TABLE foo (bar text)") ;; => #!void
    (sql-eval db "INSERT INTO foo VALUES ('huh?')") ;; => #!void
    (sql-eval db "UPDATE foo SET bar = 'bar' WHERE bar = 'huh?'") ;; => #!void
    (sql-eval db "DELETE FROM foo WHERE bar = 'bar'") ;; => #!void

It can take arguments.

    (sql-eval db "INSERT INTO foo VALUES ($1)" "yay!") ;; => #!void


<a id="sqlEvalQuery"></a>

### `sql-eval-query`

The **R** in **CRUD** is likely what is most often used.

    (sql-eval-query db "SELECT * from foo") ;; =>  ("yay!")

Of course `SELECT` is not the only query that returns things. It can take
arguments as well.

    (sql-eval-query
     db "INSERT INTO foo
    VALUES ('huh?') returning foo.*") ;; => ("huh?")
    (sql-eval-query
     db "INSERT INTO foo
    VALUES ('huh?, again?') returning foo.*") ;; => ("huh?, again?")


    (sql-eval-query db "WITH q AS (
     UPDATE foo SET bar = 'bar'
     WHERE bar != 'huh?' returning true)
      SELECT count(*) FROM q") ;; => (2)


    (sql-eval-query db "DELETE FROM foo returning foo.*")
    ;; => ("huh?" "bar" "bar")


<a id="sqlPrepare"></a>

### `sql-prepare`

Often an evaluation of a query is not enough.

-   There&rsquo;s the simple matter of column names as we only return a list of
    results.

-   We may want to pass arguments.

For that purpose there&rsquo;s a prepared statement. They are `willed to run`
[`sql-finalize`](#sqlFinalize) before taking out the trash.

    (def istmt (sql-prepare db "INSERT INTO foo VALUES ('bar') RETURNING foo.*;"))

    (def bind-istmt (sql-prepare db "INSERT INTO foo VALUES ($1) returning 'hahaha' AS baz"))

    (def stmt (sql-prepare db "SELECT foo AS bat FROM foo"))
    (def bind-stmt (sql-prepare db "SELECT true AS funnyColumn, * FROM foo WHERE bar = $1"))


<a id="org7432ad3"></a>

### `statement?`

Is this an **SQL Statement**?

    (statement? istmt) ;; => #t
    (statement? 'foobar) ;; =? #f


<a id="orgacd84d5"></a>

### `sql-columns`

We&rsquo;ve got some predicative-ly confirmed prepared statements. `sql-columns` gives
us the column names.

    (map sql-columns [ istmt bind-istmt stmt bind-stmt ])
    ;; => (("bar") ("baz") ("bat") ("funnycolumn" "bar"))


<a id="sqlExec"></a>

### `sql-exec`

Like the name says this function executes a prepared statement from
[`sql-prepare`](#sqlPrepare). Like [`sql-eval`](#sqlEval), which in fact uses this after it prepares a
statement for you, it returns a useless value.

    (sql-exec istmt)

A statement can be executed many times.

    [ (sql-exec istmt) (sql-exec istmt) ] ;; =>  (#!void #!void)

    (sql-eval-query db "SELECT * FROM foo")
    ("bar" "bar" "bar")

Unlike [`sql-eval`](#sqlEval), `sql-exec` does not take arguments.

    (sql-exec bind-istmt "yay!")
    ; Evaluation aborted on Wrong number of arguments passed to procedure
    ; (std/db/dbi#sql-exec '#<postgresql-statement #77> "yay!")

Not only that, calling it with a statement that requires arguments is an error
as well.

    (sql-exec bind-istmt)
    ; Evaluation aborted on postgresql-exec!: [sql-error] bind message supplies 0
    ; parameters, but prepared statement "stmt539" requires 1 --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 08P01) (M . bind message supplies 0 parameters, but
    ; prepared statement "stmt539" requires 1) (F . postgres.c) (L . 1665) (R .
    ; exec_bind_message)

That&rsquo;s because arguments need to be bound with [`sql-bind`](#sqlBind).


<a id="sqlQuery"></a>

### `sql-query`

Similar to [`sql-eval-query`](#sqlEvalQuery) `sql-query` returns the results of the
[`sql-prepare`](#sqlPrepare)&rsquo;d statement in list form.

    (sql-query stmt) => ("(bar)" "(bar)" "(bar)")

Like [`sql-exec`](#sqlExec) it does not take arguments because they need to be bound with
[`sql-bind`](#sqlBind).


<a id="orgbc3f89d"></a>

### `in-sql-query`

For more advanced uses `in-sql-query` takes a statement and returns an [iterator.](iterators.md)

    (import :std/iter)

    (for ((r (in-sql-query stmt)))
      (displayln r))
    ;(bar)
    ;(bar)
    ;(bar)
    ;; => #!void

Being able to take rows from the DB one at a time has some advantages,
especially with [reset](#sqlReset), or even [reset/clear](#sqlResetClear).


<a id="sqlBind"></a>

### `sql-bind`

For [`sql-prepare`](#sqlPrepare)&rsquo;d statements that take arguments `sql-bind` sets them to the
value before we run the statement.

    (sql-bind bind-istmt "yay!") ;; => #!void
    (sql-bind bind-stmt "yay!") ;; => #!void

It does not run it, just sets up the specified environment.

    (sql-query stmt) ;; => ("(bar)" "(bar)" "(bar)")

To run it we of course use [`sql-exec`](#sqlExec) or [`sql-query`](#sqlQuery).

    (sql-exec bind-istmt) ;; => #!void
    (sql-query bind-stmt) ;; =>  (#(#t "yay!"))

A bound statement can run many times.

    (sql-exec bind-istmt) ;; => #!void

    (sql-query bind-stmt) ;; => (#(#t "yay!") #(#t "yay!"))

A statement can be rebound.

    (sql-bind bind-istmt "huh?") ;; => ("hahaha")
    (sql-query bind-istmt) ;; => #!void
    (sql-query stmt)
    ;; => ("(bar)" "(bar)" "(bar)" "(yay!)" "(yay!)" "(huh?)")

It can also be [cleared](#sqlClear), [reset](#sqlReset), or even [reset/clear](#sqlResetClear)&rsquo;d.


<a id="sqlClear"></a>

### `sql-clear`

Simply clear the local variables bound to a statement.

    (sql-clear bind-stmt) ;; => #<postgresql-statement>
    (sql-query bind-stmt)
    ; Evaluation aborted on postgresql-query!: [sql-error] bind message supplies 0
    ; parameters, but prepared statement "stmt149" requires 1 --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 08P01) (M . bind message supplies 0 parameters, but
    ; prepared statement "stmt149" requires 1) (F . postgres.c) (L . 1665) (R .
    ; exec_bind_message)


<a id="sqlReset"></a>

### `sql-reset`

When interacting with the DB a stored proc, after being run, has a reference to
the results and can be considered &ldquo;set&rdquo;.

Imagine a statement that returns a certain amount of rows.

    (for ((r (in-sql-query stmt)))
      (displayln r))
    ;(bar)
    ;(bar)
    ;(bar)
    ;(yay!)
    ;(yay!)
    ;(huh?)
    ;; => #!void

For some reason we only want a few. We can so do so and reset it so the database
knows we are done with it.

    (def count 0)
    (for ((r (in-sql-query stmt)))
      (set! count (1+ count))
      (displayln r count)
      (when (= count 3) (sql-reset stmt)))
    ;(bar)1
    ;(bar)2
    ;(bar)3
    ;; => #!void


<a id="sqlResetClear"></a>

### `sql-reset/clear`

This [clears](#sqlClear), and [resets](#sqlReset), a stored procedure.

    (sql-query bind-stmt) ;; => (#(#t "yay!") #(#t "yay!"))
    (for ((r (in-sql-query bind-stmt)))
      (displayln r) (sql-reset/clear bind-stmt))
    ;#(#t yay!)
    ;; => #!void
    (sql-query bind-stmt)
    ; Evaluation aborted on postgresql-query!: [sql-error] bind message supplies 0
    ; parameters, but prepared statement "stmt137" requires 1 --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 08P01) (M . bind message supplies 0 parameters, but
    ; prepared statement "stmt137" requires 1) (F . postgres.c) (L . 1665) (R .
    ; exec_bind_message)


<a id="sqlFinalize"></a>

### `sql-finalize`

When a stored procedure is finalized it is gone for good. While this is done by
the [garbage collection](#sqlPrepare) there may be times when we want to get rid of it now.

    (map sql-finalize [stmt istmt bind-stmt bind-istmt])
    ;; => (#!void #!void #!void #!void)
    (sql-query stmt)
    ; Evaluation aborted on Invalid operation; statement finalized
    ; #<postgresql-statement>


<a id="orgfbab4ef"></a>

### `sql-txn-begin`

Begins a transaction. See [`sql-error?`](#sqlError) for a transaction if you do not know what
one is.

    (sql-txn-begin db) ;; => #!void


<a id="orgd4f2d76"></a>

### `sql-txn-commit`

Commits a transaction if there&rsquo;s one that can be commited. It errors if the
transaction cannot be commited and otherwise, if there is no transaction, does
nothing at all.

See [`sql-error?`](#sqlError) for a transaction that can and cannot be commited.

    (sql-txn-commit db) ;; => #!void
    (sql-txn-commit db) ;; => #!void
    (sql-txn-commit db) ;; => #!void
    (sql-txn-commit db) ;; => #!void
    (sql-txn-commit db) ;; => #!void


<a id="orgf3adeda"></a>

### `sql-txn-abort`

Aborts a transaction. Sometimes we choose to abort, sometimes it is needed.

    (sql-txn-abort db)


<a id="sqlError"></a>

### `sql-error?`

Is this error a database error or something else? This predicate tells us so.

Using it with [try](sugar.md), we can for example we can make a connection not error if we
have a transaction that error yet leave other errors thrown.

To start with, no catcher.

    (sql-txn-begin db) ;; => #!void
    (sql-eval-query db "SELECT 1") ;; => (1)
    (sql-eval-query db "SELECT asd")
    ; Evaluation aborted on postgresql-prepare!: [sql-error] column "asd" does not
    ; exist --- irritants: (S . ERROR) (V . ERROR) (C . 42703) (M . column "asd"
    ; does not exist) (P . 8) (F . parse_relation.c) (L . 3349) (R .
    ; errorMissingColumn)

    (sql-txn-commit db))
    ; Evaluation aborted on postgresql-exec!: [sql-error] current transaction is
    ; aborted, commands ignored until end of transaction block --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 25P02) (M . current transaction is aborted, commands
    ; ignored until end of transaction block) (F . postgres.c) (L . 1682) (R .
    ; exec_bind_message)

    (sql-eval-query db "SELECT 1")
    ; Evaluation aborted on postgresql-prepare!: [sql-error] current transaction is
    ; aborted, commands ignored until end of transaction block --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 25P02) (M . current transaction is aborted, commands
    ; ignored until end of transaction block) (F . postgres.c) (L . 1424) (R .
    ; exec_parse_message)

Now a better `try`.

    (import :std/sugar)

    (try
     (sql-txn-begin db)
     (sql-eval-query db "SELECT 1")
     (sql-eval-query db "SELECT asd")
     (catch sql-error? => (lambda _ (sql-txn-abort db)))
     (finally (sql-txn-commit db))) ;; => #!void

    (sql-eval-query db "SELECT 1") ;; => (1)


<a id="sqlClose"></a>

### `sql-close`

Close a database connection.

    (sql-eval-query db "SELECT 1") ;; => (1)
    (sql-close db) ;; => #!void
    (sql-eval-query db "SELECT 1")
    ; Evaluation aborted on Invalid operation; connection closed
    ; #<postgresql-connection>
    (sql-close db) ;; => #!void
    (sql-close db) ;; => #!void


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
::: warning
The driver for MySQL is deprecated and will be removed in a future
release; it will certainly not be in-tree for v1.0.

If you are using MySQL and want to keep it alive, consider hosting and
maintaining an out of tree package for the driver.
:::

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
