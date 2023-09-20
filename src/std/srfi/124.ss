;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-124: Ephemerons; weak-referencing implementation on Gambit wills by
;;; Daphne Preston-Kendal

(import :std/srfi/9
        :gerbil/gambit/misc)
(export ephemeron?
        make-ephemeron
        ephemeron-key ephemeron-datum
        ephemeron-broken?
        reference-barrier)

(defstruct ephemeron (will datum)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! ephemeron}
  (lambda (self key datum)
    (set! (&ephemeron-will self)
      (make-will key (make-ephemeron-finalizer self)))))

(def (make-ephemeron-finalizer ephemeron)
  (lambda (key)
    (set! (&ephemeron-will! ephemeron) #f)
    (set! (&ephemeron-datum-set! ephemeron) #f)))

(def (ephemeron-broken? ephemeron)
  (not (ephemeron-will ephemeron)))

(def (ephemeron-key ephemeron)
  (let (will (ephemeron-will ephemeron))
    (and will
         (will-testator will))))

(def (reference-barrier key)
  (##first-argument key))
