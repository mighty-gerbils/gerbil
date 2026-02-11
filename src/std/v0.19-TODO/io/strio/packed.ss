;;; -*- Gerbil -*-
;;; © vyzo
;;; packed small fixnum pairs
(import :gerbil/gambit
        :std/sugar)
(export #t)

(cond-expand
  (,(fixnum? (expt 2 32))
   ;; 64bit arch; max buffer size is 256MB, we can safely pack
   (defrule (pack i o)
     (fxior (fxarithmetic-shift-left i 32) o))
   (defrule (unpack-first result)
     (fxarithmetic-shift-right result 32))
   (defrule (unpack-second result)
     (fxand result #xffffffff)))
  (else
   ;; 32bit arch or less; we can't safely pack, so use a pair
   (defrule (pack i o)
     (cons i o))
   (defrule (unpack-first result)
     (car result))
   (defrule (unpack-second result)
     (cdr result))))
