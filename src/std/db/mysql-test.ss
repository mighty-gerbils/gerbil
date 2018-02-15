;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/mysql unit-test
(import :std/test
        :std/db/dbi
        :std/db/mysql)
(export mysql-test)
(def mysql-test
  (test-suite "test :std/db/mysql"
    (def db (sql-connect mysql-connect host: "localhost" user: "test" passwd: "test" db: "test"))

    (test-case "prepare tables"
      (with-catch void (cut sql-eval db "DROP TABLE Users"))
      (with-catch void (cut sql-eval db "DROP TABLE HitCount"))

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

    (with-catch void (cut sql-eval db "DROP TABLE Users"))
    (with-catch void (cut sql-eval db "DROP TABLE HitCount"))

    (sql-close db)))
