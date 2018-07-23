#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/test
        "build-config"
        "generic-test"
        "iter-test"
        "event-test"
        "misc/string-test"
        "misc/list-test"
        "misc/channel-test"
        "misc/lru-test"
        "text/csv-test"
        "text/json-test"
        "text/utf8-test"
        "actor/xdr-test"
        "actor-test"
        "net/httpd-test"
        "net/sasl-test")

(cond-expand
  (config-have-sqlite
   (import "db/sqlite-test")))

(cond-expand
  (config-have-lmdb
   (import "db/lmdb-test")))

(cond-expand
  (config-have-leveldb
   (import "db/leveldb-test")))

(cond-expand
  ((or linux bsd)
   (import "net/socket/server-test")))
  (linux
   (import "os/signalfd-test"
           "os/signal-handler-test")))

(def tests
  [generic-runtime-test generic-macro-test
   iter-test
   event-test
   csv-test
   json-test
   utf8-test
   string-test
   list-test
   channel-test
   lru-test
   actor-xdr-test
   actor-rpc-test actor-rpc-stream-test
   httpd-test
   sasl-test
   (if config-enable-sqlite [sqlite-test] []) ...
   (if config-enable-lmdb [lmdb-test] []) ...
   (if config-enable-leveldb [leveldb-test] []) ...
   (cond-expand
     ((or linux bsd)
      [socket-server-test])
     (else []))
   ...
   (cond-expand
     (linux [signalfd-test signal-handler-test])
     (else []))
   ...
   ])

(apply run-tests! tests)
(test-report-summary!)

(case (test-result)
  ((OK) (exit 0))
  (else (exit 1)))
