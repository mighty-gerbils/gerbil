;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/lmdb unit-test
(import :std/build-config)
(cond-expand
  (config-have-lmdb
   (import :std/test
           :std/db/lmdb
           :std/db/_lmdb
           :std/os/temporaries)
   (export lmdb-test test-setup! test-cleanup!)

   (def env #f)
   (def db #f)

   (def (test-setup!)
     (let (tmp (make-temporary-file-name "test.db"))
       (set! env (lmdb-open tmp))
       (set! db (lmdb-open-db env "test"))))

   (def (test-cleanup!)
     (lmdb-close-db db)
     (lmdb-close env))

   (def lmdb-test
     (test-suite "test :std/db/lmdb library"
       (test-case "test put txn"
         (let (txn (lmdb-txn-begin env))
           (lmdb-put txn db "hello" "world")
           (lmdb-put txn db "hello2" "world2")
           (check (bytes->string (lmdb-get txn db "hello")) => "world")
           (check (bytes->string (lmdb-get txn db "hello2")) => "world2")
           (lmdb-txn-commit txn)))
       (test-case "test get"
         (let (txn (lmdb-txn-begin env))
           (check (bytes->string (lmdb-get txn db "hello")) => "world")
           (check (bytes->string (lmdb-get txn db "hello2")) => "world2")
           (lmdb-txn-commit txn)))
       (test-case "test cursors"
         (let* ((txn (lmdb-txn-begin env))
                (cursor (lmdb-cursor-open txn db))
                (entries
                 (let lp ((next (lmdb-cursor-get cursor MDB_FIRST)) (vals []))
                   (match next
                     ((values key val)
                      (lp (lmdb-cursor-get cursor MDB_NEXT) (cons (cons (bytes->string key)
                                                                        (bytes->string val))
                                                                  vals)))
                     (#f (reverse vals))))))
           (check (length entries) => 2)
           (check (cdr (assoc "hello" entries)) => "world")
           (check (cdr (assoc "hello2" entries)) => "world2")
           (lmdb-txn-commit txn)))))))
