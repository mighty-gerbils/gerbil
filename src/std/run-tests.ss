#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/test
        "build-config"
        "generic-test"
        "iter-test"
        "event-test"
        "actor-test")

(cond-expand
  (config-have-sqlite
   (import "db/sqlite-test")))

(def tests
  [generic-runtime-test generic-macro-test
   iter-test
   event-test
   actor-rpc-test actor-rpc-stream-test
   (if config-enable-sqlite [sqlite-test] []) ...
   ])

(apply run-tests! tests)
(test-report-summary!)