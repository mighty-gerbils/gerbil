;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host utilities
(import :std/time/precise)
(export #t)

(definline (coarse-time-now)
  => :integer
  (CoarseTime-seconds (current-time-coarse)))
