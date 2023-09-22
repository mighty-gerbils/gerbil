;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-159: base library

(import :gerbil/gambit
        :std/error
        ../srfi-support
        ../1
        ../9
        ../125
        ../130
        ./environment
        ./string)
(export
   show fn forked with with! each each-in-list call-with-output
   displayed written written-shared written-simply numeric nothing
   escaped maybe-escaped numeric/si numeric/fitted numeric/comma
   ;; internal
   output-default extract-shared-objects write-to-string write-with-shares
   call-with-shared-ref call-with-shared-ref/cdr)

(include "base.scm")
(include "write.scm")
