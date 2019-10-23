;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-159: show stuffs

(import ../13
        ./string
        ./base)
(export
   show fn forked with with! each each-in-list call-with-output
   displayed written written-shared written-simply
   numeric numeric/comma numeric/si numeric/fitted
   nothing nl fl space-to tab-to escaped maybe-escaped
   padded padded/left padded/right padded/both
   trimmed trimmed/left trimmed/right trimmed/both trimmed/lazy
   fitted fitted/left fitted/right fitted/both
   joined joined/prefix joined/suffix joined/last joined/dot joined/range
   upcased downcased)

(defalias substring substring*)
(include "show.scm")
