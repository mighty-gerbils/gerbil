#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/test
        "generic-test"
        "iter-test"
        "event-test"
        "actor-test")

(run-tests! generic-runtime-test
            generic-macro-test
            iter-test
            event-test
            actor-rpc-test)
(test-report-summary!)