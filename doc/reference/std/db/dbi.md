# Generic Database Interface

    (import :std/db/dbi)


<a id="orgc142ed3"></a>

## sql-connect

First things first we must connect to a database. Though the actual function to
connect differs between databases, `sql-connect` also makes a `will` so that the
connection is automagically closed using [`sql-close`](#sqlClose) when garbage collected.

    (import :std/db/postgresql)
    (def db (sql-connect postgresql-connect host: "localhost" user: "foo" passwd: "bar"))
    ;; => #<postgresql-connection #36>


<a id="org1572080"></a>

## connection?

This predicate asks if the thing passed is in fact a connection.

    (connection? db) ;; => #t
    (connection? car) ;; => #f


<a id="sqlEval"></a>

## sql-eval

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

## sql-eval-query

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

## sql-prepare

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

## statement?

Is this an **SQL Statement**?

    (statement? istmt) ;; => #t
    (statement? 'foobar) ;; =? #f


<a id="orgacd84d5"></a>

## sql-columns

We&rsquo;ve got some predicative-ly confirmed prepared statements. `sql-columns` gives
us the column names.

    (map sql-columns [ istmt bind-istmt stmt bind-stmt ])
    ;; => (("bar") ("baz") ("bat") ("funnycolumn" "bar"))


<a id="sqlExec"></a>

## sql-exec

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

## sql-query

Similar to [`sql-eval-query`](#sqlEvalQuery) `sql-query` returns the results of the
[`sql-prepare`](#sqlPrepare)&rsquo;d statement in list form.

    (sql-query stmt) => ("(bar)" "(bar)" "(bar)")

Like [`sql-exec`](#sqlExec) it does not take arguments because they need to be bound with
[`sql-bind`](#sqlBind).


<a id="orgbc3f89d"></a>

## in-sql-query

For more advanced uses `in-sql-query` takes a statement and returns an [iterator](/reference/std/iterators.md).

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

## sql-bind

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

## sql-clear

Simply clear the local variables bound to a statement.

    (sql-clear bind-stmt) ;; => #<postgresql-statement>
    (sql-query bind-stmt)
    ; Evaluation aborted on postgresql-query!: [sql-error] bind message supplies 0
    ; parameters, but prepared statement "stmt149" requires 1 --- irritants: (S .
    ; ERROR) (V . ERROR) (C . 08P01) (M . bind message supplies 0 parameters, but
    ; prepared statement "stmt149" requires 1) (F . postgres.c) (L . 1665) (R .
    ; exec_bind_message)


<a id="sqlReset"></a>

## sql-reset

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

## sql-reset/clear

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

## sql-finalize

When a stored procedure is finalized it is gone for good. While this is done by
the [garbage collection](#sqlPrepare) there may be times when we want to get rid of it now.

    (map sql-finalize [stmt istmt bind-stmt bind-istmt])
    ;; => (#!void #!void #!void #!void)
    (sql-query stmt)
    ; Evaluation aborted on Invalid operation; statement finalized
    ; #<postgresql-statement>


<a id="orgfbab4ef"></a>

## sql-txn-begin

Begins a transaction. See [`sql-error?`](#sqlError) for a transaction if you do not know what
one is.

    (sql-txn-begin db) ;; => #!void


<a id="orgd4f2d76"></a>

## sql-txn-commit

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

## sql-txn-abort

Aborts a transaction. Sometimes we choose to abort, sometimes it is needed.

    (sql-txn-abort db)


<a id="sqlError"></a>

## sql-error?

Is this error a database error or something else? This predicate tells us so.

Using it with [try](/reference/std/sugar.md), we can for example we
can make a connection not error if we have a transaction that error
yet leave other errors thrown.

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

## sql-close

Close a database connection.

    (sql-eval-query db "SELECT 1") ;; => (1)
    (sql-close db) ;; => #!void
    (sql-eval-query db "SELECT 1")
    ; Evaluation aborted on Invalid operation; connection closed
    ; #<postgresql-connection>
    (sql-close db) ;; => #!void
    (sql-close db) ;; => #!void
