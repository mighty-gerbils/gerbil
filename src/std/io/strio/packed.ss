;;; -*- Gerbil -*-
;;; © vyzo
;;; packed small fixnum pairs
(import :gerbil/gambit/fixnum
        :std/sugar)
(export #t)

(defrule (unpack-first result)
  (fxarithmetic-shift-right result 32))
(defrule (unpack-second result)
  (fxand result #xffffffff))
(defrule (pack i o)
  (fxior (fxarithmetic-shift-left i 32) o))
