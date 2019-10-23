;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; timeouts

(import :gerbil/gambit/os)
(export #t)

(def (make-timeout t (none absent-obj))
  (cond
   ((not t) none)
   ((time? t) t)
   ((real? t)
    (seconds->time (+ (##current-time-point) t)))
   (else
    (error "Bad argument; expected real, time or #f" t))))
