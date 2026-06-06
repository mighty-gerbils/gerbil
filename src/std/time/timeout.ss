;;; -*- Gerbil -*-
;;; © vyzo
;;; timeouts
(import :std/interface
        ./time)
(export #t)

(defstruct IOTimeout (t)
  transparent: #t
  final: #t)

(def !NoTimeout (IOTimeout #f))

(interface AbsTimeout
  (abs-timeout) => :t ;; (Maybe :flonum)
  )

(defcall-interface-method AbsTimeout abs-timeout
  (__abs-timeout obj))

(implement AbsTimeout
  (IOTimeout
   (abs-timeout
    (lambda (self)
      (cond
       (self.t => (cut __abs-timeout <>))
       (else #f)))))
  (InexactTime
   (abs-timeout &InexactTime-time))
  (:flonum
   (abs-timeout
    (lambda (self)
      (fl+ self (##current-time-point)))))
  (:real
   (abs-timeout
    (lambda (self)
      (fl+ (inexact self) (##current-time-point)) )))
  (:time
   (abs-timeout time->seconds)))

(def (timeout? obj)
  (or (not obj)
      (is-AbsTimeout? obj)))

(def (timeout->deadline timeo)
  => IOTimeout
  (cond
   ((__abs-timeout timeo)
    => (lambda (t) (IOTimeout (InexactTime t))))
   (else !NoTimeout)))

(def (timeout->abs-timeout timeo (none #!void))
  (defrule (no-timeout)
    (if (void? none)
      absent-obj
      none))

  (if timeo
    (let (timeo (__abs-timeout timeo))
      (if timeo
        (: timeo :flonum)
        (no-timeout)))
    (no-timeout)))
