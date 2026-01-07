;;; -*- Gerbil -*-
;;; © vyzo
;;; time library
(cond-expand
  (,(compilation-target? C)
   (import (prefix-in :std/os/time system.)))
  (else
   ;; TODO js and other target support
   (syntax-error "unsupported compilation target")))

(export Time ExactTime CoarseExactTime PreciseExactTime InexactTime
        current-time-coarse
        current-time-precise
        current-time-inexact)

(defstruct Time ()
  transparent: #t)

(defstruct (ExactTime Time) ((time :- :pair))
  transparent: #t)
(defstruct (InexactTime Time) ((time :- :flonum))
  name: time
  final: #t
  transparent: #t)

(defstruct (CoarseExactTime ExactTime) ()
  name: time
  final: #t
  transparent: #t)
(defstruct (PreciseExactTime ExactTime) ()
  name: time
  final: #t
  transparent: #t)

(def (current-time-coarse) => CoarseExactTime
  (CoarseExactTime (system.current-time-coarse)))

(def (current-time-precise) => PreciseExactTime
  (PreciseExactTime (system.current-time-precise)))

(def (current-time-inexact) => InexactTime
  (InexactTime (##current-time-point)))
