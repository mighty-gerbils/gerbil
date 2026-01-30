;;; -*- Gerbil -*-
;;; © vyzo
;;; timeouts
(import XXX)
(export #t)

(defstruct Timeout (t)
  transparent: #t
  final: #t)

(def !NoTimeout (Timeout #f))

(def (timeout? obj)
  XXX
  )

(def (timeout->abs-timeout->seconds timeo)
  XXX
  )
