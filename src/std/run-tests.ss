#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/test
        "build-config"
        "generic-test"
        "iter-test"
        "event-test"
        "text/json-test"
        "text/utf8-test"
        "actor/xdr-test"
        "actor-test")

(cond-expand
  (config-have-sqlite
   (import "db/sqlite-test")))

(cond-expand
  (config-have-lmdb
   (import "db/lmdb-test")))

(cond-expand
  (config-have-leveldb
   (import "db/leveldb-test")))

(def tests
  [generic-runtime-test generic-macro-test
   iter-test
   event-test
   json-test
   utf8-test
   actor-xdr-test
   actor-rpc-test actor-rpc-stream-test
   (if config-enable-sqlite [sqlite-test] []) ...
   (if config-enable-lmdb [lmdb-test] []) ...
   (if config-enable-leveldb [leveldb-test] []) ...
   ])

(apply run-tests! tests)
(test-report-summary!)

(let (res (test-result))
  (displayln res)
  (case (test-result)
    ((OK) (exit 0))
    (else (exit 1))))
