;;; -*- Gerbil -*-
;;; © vyzo
;;; time library
(cond-expand
  (,(compilation-target? C)
   (import (prefix-in :std/os/time system.)))
  (else
   ;; TODO js and other target support
   (syntax-error "unsupported compilation target")))

(export Time ExactTime CoarseTime PreciseTime InexactTime
        current-time-coarse
        current-time-precise
        current-time-inexact)

(defstruct Time ()
  transparent: #t
  acyclic: #t)

(defstruct (ExactTime Time) ((time :- :pair))
  transparent: #t
  acyclic: #t)
(defstruct (InexactTime Time) ((time :- :flonum))
  name: time
  final: #t
  transparent: #t
  acyclic: #t)

(defstruct (CoarseTime ExactTime) ()
  name: time
  final: #t
  transparent: #t
  acyclic: #t)
(defstruct (PreciseTime ExactTime) ()
  name: time
  final: #t
  transparent: #t
  acyclic: #t)

(def (current-time-coarse) => CoarseTime
  (CoarseExactTime (system.current-time-coarse)))

(def (current-time-precise) => PreciseTime
  (PreciseExactTime (system.current-time-precise)))

(def (current-time-inexact) => InexactTime
  (InexactTime (##current-time-point)))
