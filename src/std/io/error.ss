;;; -*- Gerbil -*-
;;; © vyzo
;;; io errors
(import :std/error)
(export #t)

(defstruct (io-closed-error io-error) ())

(def (raise-io-closed-error where what . irritants)
  (raise (make-io-closed-error what irritants where)))
