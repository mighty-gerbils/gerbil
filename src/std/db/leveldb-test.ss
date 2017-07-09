;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/db/leveldb unit-test
(import :std/test
        :std/db/leveldb
        :std/format
        :gerbil/gambit/random)

(export leveldb-test)
(def leveldb-test
  (test-suite "test :std/db/leveldb library"
    (def db (leveldb-open (format "/tmp/test.db.~a" (random-integer (expt 2 32)))))
    (test-case "test put/get/delete"
      (leveldb-put db "abc" "this-is-abc")
      (leveldb-put db "def" "this-is-def")
      (check (bytes->string (leveldb-get db "abc")) => "this-is-abc")
      (check (bytes->string (leveldb-get db "def")) => "this-is-def")
      (leveldb-delete db "abc")
      (check (leveldb-get db "abc") => #f)
      (leveldb-delete db "def")
      (check (leveldb-get db "def") => #f))

    (test-case "test write batch"
      (def wb (leveldb-writebatch))
      (leveldb-writebatch-put wb "abc" "this-is-abc")
      (leveldb-writebatch-put wb "def" "this-is-def")
      (leveldb-write db wb)
      (check (bytes->string (leveldb-get db "abc")) => "this-is-abc")
      (check (bytes->string (leveldb-get db "def")) => "this-is-def"))

    (test-case "test iterators"
      (def itor (leveldb-iterator db))
      (check (leveldb-iterator-valid? itor) => #f)
      (leveldb-iterator-seek-first itor)
      (check (leveldb-iterator-valid? itor) => #t)
      (check (bytes->string (leveldb-iterator-key itor)) => "abc")
      (check (bytes->string (leveldb-iterator-value itor)) => "this-is-abc")
      (leveldb-iterator-next itor)
      (check (leveldb-iterator-valid? itor) => #t)
      (check (bytes->string (leveldb-iterator-key itor)) => "def")
      (check (bytes->string (leveldb-iterator-value itor)) => "this-is-def")
      (leveldb-iterator-next itor)
      (check (leveldb-iterator-valid? itor) => #f)
      (leveldb-iterator-close itor))

    (leveldb-close db)))
