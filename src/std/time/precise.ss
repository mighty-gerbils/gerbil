;;; -*- Gerbil -*-
;;; © vyzo
;;; precise time
(cond-expand
  (,(compilation-target? C)
   (import :std/os/time))
  (else
   (syntax-error "unsupported target")))

(import :std/interface
        ./time
        ./timeout)
(export #t)

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
  (CoarseTime (current-system-time-coarse)))

(def (current-time-precise) => PreciseTime
  (PreciseTime (current-system-time-precise)))

(def (CoarseTime-seconds (t : CoarseTime))
  => :integer
  (timeval-tv_sec t.time))

(def (CoarseTime-useconds (t : CoarseTime))
  => :integer
  (timeval-tv_usec t.time))

(def (PreciseTime-seconds (t : PreciseTime))
  => :integer
  (timespec-tv_sec t.time))

(def (PreciseTime-nseconds (t : PreciseTime))
  => :integer
  (timespec-tv_nsec t.time))

(implement AbsTimeout
  (CoarseTime
   (abs-timeout
    (lambda (self)
      (seconds->time
       (fl+ (inexact (timeval-tv_sec self.time))
            (fl/ (inexact (timeval-tv_usec self.time)) 1e6))))))
  (PreciseTime
   (abs-timeout
    (lambda (self)
      (seconds->time
       (fl+ (inexact (timespec-tv_sec self.time))
            (fl/ (inexact (timespec-tv_nsec self.time)) 1e9)))))))
