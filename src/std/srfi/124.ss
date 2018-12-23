;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-124: Ephemerons; trivial implementation.
package: std/srfi

(export ephemeron? make-ephemeron ephemeron-broken? ephemeron-key ephemeron-datum reference-barrier)

(defstruct ephemeron (key datum broken?)
  constructor: :init! final: #t)

(defmethod {:init! ephemeron}
  (lambda (self key datum)
    (struct-instance-init! self key datum)))

(def (reference-barrier key)
  (void))
