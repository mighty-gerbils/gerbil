;;; -*- Gerbil -*-
;;; © vyzo
;;; opaque objects
(export #t)

(defstruct Opaque (klass object)
  final: #t acyclic: #t)
