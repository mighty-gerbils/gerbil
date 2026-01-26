;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/sqlite unit-test
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/db/dbi
           :std/db/sqlite
           :std/os/temporaries)
   (export sqlite-test test-setup! test-cleanup!)

   (def db #f)
   (def (test-setup!)
     (set! db (sql-connect sqlite-open ":memory:")) )
   (def (test-cleanup!)
     (sql-close db))

   (def sqlite-test
     (test-suite "test :std/db/sqlite"

       (test-case "prepare table"
         (let (stmt (sql-prepare db "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)"))
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "INSERT INTO Users (FirstName, LastName, Secret) VALUES (?, ?, ?)"))
           (sql-bind stmt "John" "Smith" "very secret")
           (check (sql-exec stmt) => #!void)
           (sql-bind stmt "Marc" "Smith" "oh so secret")
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt)))

       (test-case "read and modify table"

         (let (stmt (sql-prepare db "SELECT * FROM Users"))
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")
                                        #("Marc" "Smith" "oh so secret"))))

         (let (stmt (sql-prepare db "SELECT * FROM Users WHERE FirstName = ?"))
           (sql-bind stmt "John")
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")))
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "DELETE FROM Users WHERE FirstName = ?"))
           (sql-bind stmt "Marc")
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "SELECT * FROM Users"))
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")))
           (sql-finalize stmt)))))))
