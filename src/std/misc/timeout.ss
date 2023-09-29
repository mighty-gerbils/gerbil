;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; timeouts

(import :std/error
        :std/sugar)
(export #t)

(def (make-timeout t (none absent-obj))
  (cond
   ((not t) none)
   ((time? t) t)
   ((real? t)
    (seconds->time (+ (##current-time-point) t)))
   (else
    (raise-bad-argument make-timeout "real, time or #f" t))))

(defrule (timeout? o)
  (or (real? o) (time? o)))
