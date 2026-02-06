;;; -*- Gerbil -*-
;;; © vyzo
;;; timeouts
(import :std/interface
        ./time)
(export #t)

(defstruct Timeout (t)
  transparent: #t
  final: #t)

(def !NoTimeout (Timeout #f))

(interface AbsTimeout
  (abs-timeout) => :t ;; (Maybe :time)
  )

(defmethod {abs-timeout Timeout}
  (lambda (self)
    (and self.t (__abs-timeout t)))
  interface: AbsTimeout)

(defmethod {abs-timeout InexactTime}
  (lambda (self)
    (seconds->time self.time)))

(defmethod {abs-timeout :flonum}
  (lambda (self)
    (seconds->time (fl+ self (##current-time-point)) ))
  interface: AbsTimeout)

(defmethod {abs-timeout :real}
  (lambda (self)
    (seconds->time (fl+ (inexact self) (##current-time-point)) ))
  interface: AbsTimeout)

(defmethod {abs-timeout :time}
  identity
  interface: AbsTimeout)

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

(defcall-interface-method AbsTimeout abs-timeout
  (__abs-timeout obj))
