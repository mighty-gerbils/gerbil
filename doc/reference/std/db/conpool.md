# Connection Pools

    (import :std/db/conpool)

A connection pool is simply a pool of database connections that use the same
connect function. Beyond that there&rsquo;s a `max` parameter where one can specify
the max connections.


<a id="org755c44e"></a>

## make-conpool

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

## conpool?

A predicate. I&rsquo;ll leave you to guess what it does by looking at the code.

    (conpool? pgpool) ;; => #t
    (conpool? 'not-pgpool) ;; => #f


<a id="orgf9a0b6f"></a>

## conpool-get

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
[conpool-close](#conpoolClose).

    (conpool-close pgpool)
    (set! pgpool (make-pgpool))


<a id="org97c2122"></a>

## conpool-put

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

We can still use [conpool-close](#conpoolClose), of course, but closing the entire conpool
because one connection is in error ruins the point of a pool, more or less.

    (conpool-close pgpool)
    (set! pgpool (make-pgpool))

To get around that, [conpool-release](#conpoolRelease) does exactly what we want.


<a id="conpoolRelease"></a>

## conpool-release

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

## conpool-close

If you&rsquo;ve read this far you already know: `conpool-close` is for closing a
conpool. After all, one does need to shut things down and often database servers
prefer a clean shutdown of an open connection.

    (conpool-close pgpool)

    (my-sql-ee sql-eval-query "select 1")
    ; Evaluation aborted on Connection pool is closed
