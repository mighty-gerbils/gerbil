#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :gerbil/expander
        :std/test
        :std/foreign-test
        :std/sugar
        "build-config")

(def this-dir (path-normalize (path-directory (this-source-file))))
(add-load-path (path-directory this-dir))

(def (->symbol . args) (string->symbol (apply string-append args)))

(def tests [])
(def (register-test path)
  (when (string? path)
    (let* ((name (path-strip-extension path))
           (mod (->symbol ":std/" name))
           (sym (->symbol "std/" name "#" (path-strip-directory name))))
      (import-module mod #t #t)
      (set! tests (cons (eval sym) tests)))))
(defrule (cond-test cond path)
  (cond-expand (cond path) (else #f)))
(def all-tests
  ["actor-test"
   "actor/xdr-test"
   "amb-test"
   "coroutine-test"
   "event-test"
   ;;"foreign-test" ;; requires compiling the test
   "generic-test"
   "iter-test"
   "misc/barrier-test"
   "misc/bytes-test"
   "misc/channel-test"
   "misc/completion-test"
   "misc/deque-test"
   "misc/func-test"
   "misc/hash-test"
   "misc/list-test"
   "misc/lru-test"
   "misc/number-test"
   "misc/pqueue-test"
   "misc/queue-test"
   "misc/rbtree-test"
   "misc/string-test"
   "net/httpd-test"
   "net/sasl-test"
   (cond-test linux "os/signalfd-test") ;; FIXME: if run after os/signal-handler-test, blocks forever
   "os/signal-handler-test"
   "protobuf/protobuf-test"
   "sugar-test"
   "text/csv-test"
   "text/json-test"
   "text/utf16-test"
   "text/utf32-test"
   "text/utf8-test"
   ;;"web/fastcgi-test" ;; requires a running webserver
   ;;"web/rack-test" ;; requires a running webserver
   (cond-test config-have-leveldb "db/leveldb-test")
   (cond-test config-have-libyaml "text/yaml-test")
   (cond-test config-have-lmdb "db/lmdb-test")
   ;;(cond-test config-have-mysql "db/mysql-test") ;; requires a running server
   ;;(cond-test config-have-postgresql "db/postgresql-test") ;; requires a running server
   (cond-test config-have-sqlite "db/sqlite-test")
   (cond-test (or linux bsd) "net/socket/server-test")])

(def (main . args)
  (for-each register-test (if (null? args) all-tests args))
  (apply run-tests! (reverse tests))
  (test-report-summary!)
  (exit (case (test-result) ((OK) 0) (else 1))))
