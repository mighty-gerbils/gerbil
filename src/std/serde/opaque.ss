;;; -*- Gerbil -*-
;;; © vyzo
;;; opaque objects
(import XXX)
(export #t)

(defstruct Opaque (klass object)
  final: #t acyclic: #t)
