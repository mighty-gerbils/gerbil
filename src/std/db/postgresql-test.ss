;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/postgresql unit test
(import :std/test
        :std/db/dbi
        :std/db/postgresql-driver
        :std/db/postgresql
        :std/misc/channel
        :std/sugar)
(export postgresql-test)

(def postgresql-test
  (test-suite "test :std/db/postgresql"
    (test-case "test postgresql driver"
      (def pg (postgresql-connect! "127.0.0.1" 5432 "test" "test" #f))

      (def (values? . args)
        (lambda (res)
          (equal? (values->list res) args)))

      (def (query-count-results inp)
        (let lp ((i 0))
          (let (next (channel-get inp))
            (cond
             ((eof-object? next) i)
             ((query-token? next)
              (postgresql-continue! pg next)
              (lp i))
             ((exception? next)
              (raise next))
             (else
              (lp (fx1+ i)))))))

      (def (query-results inp)
        (let lp ((r []))
          (let (next (channel-get inp))
            (cond
             ((eof-object? next)
              (reverse r))
             ((query-token? next)
              (postgresql-continue! pg next)
              (lp r))
             ((exception? next)
              (raise next))
             (else
              (lp (cons next r)))))))

      (def (genstring g)
        (symbol->string
         (gensym g)))

      (def (insert2k)
        ;; this needs to be more than query-limit in the driver (current 1k)
        (let lp ((i 0))
          (when (fx< i 2000)
            (postgresql-exec! pg "stmt3" [(genstring 'first) (genstring 'last) (genstring 'secret)])
            (lp (fx1+ i)))))

      (check (postgresql-prepare-statement! pg "stmt0" "DROP TABLE Users")
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

    (test-case "test postgresql dbi"
      (def db (sql-connect postgresql-connect user: "test" passwd: "test"))

      (try
       (let (stmt (sql-prepare db "DROP TABLE Users"))
         (sql-exec stmt))
       (catch (sql-error? e) (void)))

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
                                      #("Marc" "Smith" "oh so secret"))))

      (let (stmt (sql-prepare db "SELECT * FROM Users WHERE FirstName = $1"))
        (sql-bind stmt "John")
        (check (sql-query stmt) => '(#("John" "Smith" "very secret")))
        (sql-finalize stmt))

      (let (stmt (sql-prepare db "DELETE FROM Users WHERE FirstName = $1"))
        (sql-bind stmt "Marc")
        (check (sql-exec stmt) ? void?)
        (sql-finalize stmt))

      (let (stmt (sql-prepare db "SELECT * FROM Users"))
        (check (sql-query stmt) => '(#("John" "Smith" "very secret")))
        (sql-finalize stmt))

      (let (stmt (sql-prepare db "DROP TABLE Users"))
        (sql-exec stmt))

      (sql-close db))))
