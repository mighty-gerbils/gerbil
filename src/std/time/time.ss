;;; -*- Gerbil -*-
;;; © vyzo
;;; time library
(cond-expand
  (,(compilation-target? C)
   (import (prefix-in :std/os/time system.)))
  (else
   ;; TODO js and other target support
   (syntax-error "unsupported compilation target")))

(export #t)

(defstruct Time ()
  transparent: #t
  acyclic: #t)

(defstruct (ExactTime Time) ((time :- :t))
  transparent: #t
  acyclic: #t)
(defstruct (InexactTime Time) ((time :- :flonum))
  name: time
  transparent: #t
  acyclic: #t
  final: #t)

(defstruct (CoarseTime ExactTime) ()
  name: time
  transparent: #t
  acyclic: #t
  final: #t)
(defstruct (PreciseTime ExactTime) ()
  name: time
  transparent: #t
  acyclic: #t
  final: #t)

(def (current-time-coarse) => CoarseTime
  (CoarseExactTime (system.current-time-coarse)))

(def (current-time-precise) => PreciseTime
  (PreciseExactTime (system.current-time-precise)))

(def (current-time-inexact) => InexactTime
  (InexactTime (##current-time-point)))
