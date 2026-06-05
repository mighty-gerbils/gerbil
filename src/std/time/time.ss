;;; -*- Gerbil -*-
;;; © vyzo
;;; time library
(export #t)

(defstruct Time ()
  transparent: #t
  acyclic: #t)

(defstruct (ExactTime Time) ()
  transparent: #t
  acyclic: #t)
(defstruct (InexactTime Time) ((time :- :flonum))
  name: time
  transparent: #t
  acyclic: #t
  final: #t)


(def (current-time-inexact) => InexactTime
  (InexactTime (##current-time-point)))
