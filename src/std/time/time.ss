;;; -*- Gerbil -*-
;;; © vyzo
;;; time library
(cond-expand
  (,(compilation-target? C)
   (import :std/os/time))
  (else
   (syntax-error "unsupported target")))

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

(defstruct (CoarseTime ExactTime) ((time :- timeval))
  name: time
  transparent: #t
  acyclic: #t
  final: #t)
(defstruct (PreciseTime ExactTime) ((time :- timespec))
  name: time
  transparent: #t
  acyclic: #t
  final: #t)

(def (current-time-coarse) => CoarseTime
  (CoarseExactTime (current-system-time-coarse)))

(def (current-time-precise) => PreciseTime
  (PreciseExactTime (current-system-time-precise)))

(def (current-time-inexact) => InexactTime
  (InexactTime (##current-time-point)))
