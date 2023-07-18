;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/mysql unit-test
(import :std/build-config)
(cond-expand
  ((and config-have-mysql enable-mysql-test)
   (import :std/test
           :std/db/dbi
           :std/db/mysql)
   (export mysql-test test-setup! test-cleanup!)

   (def db #f)
   (def (test-setup!)
     (set! db (sql-connect mysql-connect host: "localhost" user: "test" passwd: "test" db: "test"))
     (with-catch void (cut sql-eval db "DROP TABLE Users"))
     (with-catch void (cut sql-eval db "DROP TABLE HitCount")))
   (def (test-cleanup!)
     (with-catch void (cut sql-eval db "DROP TABLE Users"))
     (with-catch void (cut sql-eval db "DROP TABLE HitCount"))
     (sql-close db))

   (def mysql-test
     (test-suite "test :std/db/mysql"
       (test-case "prepare tables"
         (let (stmt (sql-prepare db "CREATE TABLE Users (FirstName VARCHAR(20), LastName VARCHAR(20), Secret VARCHAR(20))"))
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "INSERT INTO Users (FirstName, LastName, Secret) VALUES (?, ?, ?)"))
           (sql-bind stmt "John" "Smith" "very secret")
           (check (sql-exec stmt) => #!void)
           (sql-reset stmt)
           (sql-clear stmt)
           (sql-bind stmt "Marc" "Smith" "oh so secret")
           (check (sql-exec stmt) => #!void)
           (sql-bind stmt "Minnie" "Smith" #f)
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "CREATE TABLE HitCount (User VARCHAR(20), Hits INTEGER)"))
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "INSERT INTO HitCount (User,Hits) VALUES (?, ?)"))
           (sql-bind stmt "john" 20)
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt)))

       (test-case "read and modify table"
         (let (stmt (sql-prepare db "SELECT * FROM Users"))
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")
                                        #("Marc" "Smith" "oh so secret")
                                        #("Minnie" "Smith" #f))))

         (let (stmt (sql-prepare db "SELECT * FROM Users WHERE FirstName = ?"))
           (sql-bind stmt "John")
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")))
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "DELETE FROM Users WHERE FirstName = ?"))
           (sql-bind stmt "Marc")
           (check (sql-exec stmt) => #!void)
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "SELECT * FROM Users"))
           (check (sql-query stmt) => '(#("John" "Smith" "very secret")
                                        #("Minnie" "Smith" #f)))
           (sql-finalize stmt))

         (let (stmt (sql-prepare db "SELECT * FROM HitCount"))
           (check (sql-query stmt) => '(#("john" 20)))
           (sql-finalize stmt)))
       ))))
