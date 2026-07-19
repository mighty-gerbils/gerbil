;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/sqlite unit-test
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/iter
           ./interface
           ./db
           ./sqlite)
   (export sqlite-test test-setup! test-cleanup!)

   (def (collect q)
     (for/collect (x q) x))

   (def db #f)
   (def (test-setup!)
     (set! db (new-db (sqlite-open ":memory:"))))
   (def (test-cleanup!)
     (DB-close db))

   (def sqlite-test
     (test-suite ":std/db/sqlite"
       (test-case "prepare table"
         (using (stmt (DB-prepare db "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)")
                      : Statement)
           (check (stmt.exec!) => #!void)
           (stmt.close))

         (using (stmt (DB-prepare db "INSERT INTO Users (FirstName, LastName, Secret) VALUES (?, ?, ?)")
                      : Statement)
           (stmt.bind! '("John" "Smith" "very secret"))
           (check (stmt.exec!) => #!void)
           (stmt.bind! '("Marc" "Smith" "oh so secret"))
           (check (stmt.exec!) => #!void)
           (stmt.close)))

       (test-case "read and modify table"
         (using (stmt (DB-prepare db "SELECT * FROM Users")
                      : Statement)
           (check (collect (stmt.query))
                  => '(#("John" "Smith" "very secret")
                       #("Marc" "Smith" "oh so secret")))
           (stmt.close))

         (using (stmt (DB-prepare db "SELECT * FROM Users WHERE FirstName = ?")
                      : Statement)
           (stmt.bind! '("John"))
           (check (collect (stmt.query))
                  => '(#("John" "Smith" "very secret")))
           (stmt.close))

         (using (stmt (DB-prepare db "DELETE FROM Users WHERE FirstName = ?")
                      : Statement)
           (stmt.bind! '("Marc"))
           (check (stmt.exec!) => #!void)
           (stmt.close))

         (using (stmt (DB-prepare db "SELECT * FROM Users")
                      : Statement)
           (check (collect (stmt.query))
                  => '(#("John" "Smith" "very secret")))
           (stmt.close)))))))
