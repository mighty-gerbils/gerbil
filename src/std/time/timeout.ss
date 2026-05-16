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
  (abs-timeout) => :t ;; (Maybe :time)
  )

(defcall-interface-method AbsTimeout abs-timeout
  (__abs-timeout obj))

(implement AbsTimeout IOTimeout
  (abs-timeout
   (lambda (self)
     (cond
      (self.t => (cut __abs-timeout <>))
      (else #f)))))

(implement AbsTimeout InexactTime
  (abs-timeout
   (lambda (self)
     (seconds->time self.time))))

(implement AbsTimeout :flonum
  (abs-timeout
   (lambda (self)
     (seconds->time (fl+ self (##current-time-point))))))

(implement AbsTimeout :real
  (abs-timeout
   (lambda (self)
     (seconds->time (fl+ (inexact self) (##current-time-point)) ))))

(implement AbsTimeout :time
  (abs-timeout identity))

(def (timeout? obj)
  (or (not obj)
      (is-AbsTimeout? obj)))

(def (timeout->abs-timeout timeo (none #!void))
  (defrule (no-timeout)
    (if (void? none)
      absent-obj
      none))

  (if timeo
    (let (timeo (__abs-timeout timeo))
      (if timeo
        (: timeo :time)
        (no-timeout)))
    (no-timeout)))
