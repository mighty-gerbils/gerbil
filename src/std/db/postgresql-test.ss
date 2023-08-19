(cond-expand
  (enable-postgresql-test
   (import :std/test :std/iter
           :std/db/dbi
           :std/db/postgresql-driver
           :std/db/postgresql
           :std/misc/channel
           :std/misc/plist
           :std/sugar
           :std/error
           :gerbil/gambit/threads
           :gerbil/gambit/exceptions)
   (export postgresql-test
           test-setup!
           test-cleanup!)

   (def (create-test-user-and-database
         host: (h "localhost")
         port: (p 5432)
         user: (u "postgres")
         passwd: (pw "postgres"))
     (def db (sql-connect postgresql-connect host: h port: p user: u passwd: pw))
     (try (sql-eval db "CREATE ROLE test PASSWORD 'test' LOGIN")
          (catch (e) (display-exception e)))
     (try (sql-eval db "CREATE DATABASE test OWNER test")
          (catch (e) (display-exception e))))

   (def (drop-test-user-and-database
         host: (h "localhost")
         port: (p 5432)
         user: (u "postgres")
         passwd: (pw "postgres"))
     (def db (sql-connect postgresql-connect host: h port: p user: u passwd: pw))
     (try (sql-eval db "DROP DATABASE test")
          (catch (e) (display-exception e)))
     (try (sql-eval db "DROP ROLE test")
          (catch (e) (display-exception e))))

   (def (test-setup!)
     (create-test-user-and-database))

   (def (test-cleanup!)
     (drop-test-user-and-database))

   (def postgresql-test
     (test-suite "db/postgresql"
       (test-case "postgresql driver"
         (def pg (postgresql-connect! "127.0.0.1" 5432 "test" "test" "test"))
         (def (values? . args)
           (lambda (res)
             (equal? (values->list res) args)))
         (def (query-count-results res)
           (let ((values inp token) res)
             (let lp ((i 0))
               (let (next (channel-get inp))
                 (cond
                  ((or (eof-object? next) (postgresql-CommandComplete? next)) i)
                  ((query-token? next)
                   (postgresql-continue! pg next)
                   (lp i))
                  ((exception? next)
                   (raise next))
                  (else
                   (lp (fx1+ i))))))))
         (def (query-results res)
           (let ((values inp token) res)
             (let lp ((r []))
               (let (next (channel-get inp))
                 (cond
                  ((or (postgresql-CommandComplete? next) (eof-object? next))
                   (reverse r))
                  ((query-token? next)
                   (postgresql-continue! pg next)
                   (lp r))
                  ((exception? next)
                   (raise next))
                  (else
                   (lp (cons next r))))))))
         (def (genstring g)
           (symbol->string
            (gensym g)))

         (def (insert2k)
           ;; this needs to be more than query-limit in the driver (current 1k)
           (let lp ((i 0))
             (when (fx< i 2000)
               (postgresql-exec! pg "stmt3" [(genstring 'first) (genstring 'last) (genstring 'secret)])
               (lp (fx1+ i)))))

         (check (postgresql-prepare-statement! pg "stmt0" "DROP TABLE IF EXISTS Users")
                ? (values? [] []))
         (check (try (postgresql-exec! pg "stmt0" []) (void) (catch (sql-error? e) (void)))
                ? void?)
         (check (postgresql-prepare-statement! pg "stmt1" "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)")
                ? (values? [] []))
         (check (postgresql-exec! pg "stmt1" [])
                => "CREATE TABLE")
         (check (postgresql-prepare-statement! pg "stmt2" "SELECT * FROM Users")
                ? (lambda (res)
                    (let ((values params cols) res)
                      (and (null? params)
                           (equal? '("firstname" "lastname" "secret") (map car cols))))))
         (check (query-count-results
                 (postgresql-query! pg "stmt2" []))
                => 0)
         (check (postgresql-prepare-statement! pg "stmt3" "INSERT INTO Users (FirstName, LastName, Secret) VALUES ($1, $2, $3)")
                ? (values? [1043 1043 1043] []))
         (check (postgresql-exec! pg "stmt3" ["John" "Smith" "very secret"])
                => "INSERT 0 1")
         (check (query-results
                 (postgresql-query! pg "stmt2" []))
                => '(("John" "Smith" "very secret")))
         (check (insert2k) ? void?)
         (check (query-count-results
                 (postgresql-query! pg "stmt2" []))
                => 2001)
         (check (postgresql-exec! pg "stmt0" [])
                => "DROP TABLE")
         (postgresql-close! pg))

       (test-case "postgresql Generic DBI"
         (def db (sql-connect postgresql-connect
                              host: "localhost"
                              port: 5432
                              user: "test"
                              passwd: "test"
                              db: "test"))
         (try
          (let (stmt (sql-prepare db "DROP TABLE IF EXISTS Users"))
            (sql-exec stmt))
          (catch (sql-error? e) (void)))
         (check db ? connection?)
         (let (stmt (sql-prepare db "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)"))
           (check (sql-exec stmt) ? void?)
           (sql-finalize stmt))
         (let (stmt (sql-prepare db "INSERT INTO Users (FirstName, LastName, Secret) VALUES ($1, $2, $3)"))
           (sql-txn-begin db)
           (sql-bind stmt "John" "Smith" "very secret")
           (check (sql-exec stmt) ? void?)
           (sql-bind stmt "Marc" "Smith" "oh so secret")
           (check (sql-exec stmt) ? void?)
           (sql-txn-commit db)
           (sql-finalize stmt))
         (let (stmt (sql-prepare db "SELECT * FROM Users"))
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")
                                        #("Marc" "Smith" "oh so secret")))
           (sql-finalize stmt))
         (let* (stmt (sql-prepare db "SELECT * FROM Users"))
           (check (postgresql-command-complete stmt) => #f)
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")
                                        #("Marc" "Smith" "oh so secret")))
           (check (postgresql-command-complete stmt) => "SELECT 2")
           (sql-finalize stmt)
           (check (postgresql-command-complete stmt) => #f))
         (let (stmt (sql-prepare db "SELECT * FROM Users WHERE FirstName = $1"))
           (sql-bind stmt "John")
           (check (for/collect (res (:iter stmt)) res)
                  => '(#("John" "Smith" "very secret")))
           (check (postgresql-command-complete stmt) => "SELECT 1")
           (sql-finalize stmt))
         (let* ((stmt (sql-prepare db "SELECT FirstName FROM Users"))
                (iter (:iter stmt)))
           (check (iter-next! iter) => "John")
           (check (postgresql-command-complete stmt) => #f)
           (check (iter-next! iter) => "Marc")
           (check (postgresql-command-complete stmt) => #f)
           (check (iter-next! iter) ? iter-end?)
           (check (postgresql-command-complete stmt) => "SELECT 2")
           (sql-finalize stmt)
           (check (postgresql-command-complete stmt) => #f))
         (let (res (sql-eval-query db "SELECT * FROM Users"))
           (check res => '(#("John" "Smith" "very secret")
                           #("Marc" "Smith" "oh so secret"))))
         (let (res (sql-eval db "DELETE FROM Users WHERE FirstName = $1"
                             "Marc"))
           (check res ? void?))
         (let (res (sql-eval-query db "SELECT * FROM Users"))
           (check res => '(#("John" "Smith" "very secret"))))
         (sql-eval db "DROP TABLE Users")
         (sql-close db))

       (test-case "postgresql-query"
         (def db (sql-connect postgresql-connect
                              host: "localhost"
                              port: 5432
                              user: "test"
                              passwd: "test"
                              db: "test"))
         (def (plist<-sql-query cmd)
           (cons (postgresql-command-complete cmd)
                 (map (lambda (row) (map cons (sql-columns cmd)
                                    (if (vector? row)
                                      (vector->list row)
                                      (list row))))
                      (sql-query cmd))))
         (let* ((q (postgresql-query db "DROP TABLE IF EXISTS Users;
       CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR);
       INSERT INTO Users (FirstName) VALUES ('foo'), ('bar') RETURNING 'bar' AS foo;
       SELECT * FROM Users;
       SELECT * FROM Users LIMIT 1;
       SELECT count(*) FROM Users;
       DROP TABLE Users;"))
                (qres (sql-query q))
                (res
                 (map plist<-sql-query qres)))
           (match res
             ([drop create ins sel1 sel2 sel3 drop2]
              (check (car drop) => "DROP TABLE")
              (check (cdr drop) ? null?)
              (check (car create) => "CREATE TABLE")
              (check (cdr create) ? null?)
              (check (car ins) => "INSERT 0 2")
              (check (cadr ins) => '(("foo" . "bar")))
              (check (caddr ins) => '(("foo" . "bar")))
              (check (car sel1) => "SELECT 2")
              (check (cadr sel1) => '(("firstname" . "foo") ("lastname" . #f) ("secret" . #f)))
              (check (caddr sel1) => '(("firstname" . "bar") ("lastname" . #f) ("secret" . #f)))
              (check (cdddr sel1) ? null?)
              (check (car sel2) => "SELECT 1")
              (check (cadr sel2) => '(("firstname" . "foo") ("lastname" . #f) ("secret" . #f)))
              (check (cddr sel2) ? null?)
              (check (car sel3) => "SELECT 1")
              (check (cadr sel3) => '(("count" . 2)))
              (check (car drop2) => "DROP TABLE")
              (check (cdr drop2) ? null?))))
         (sql-close db))))))
