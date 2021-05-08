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

(define-record-type <ephemeron>
  (%make-ephemeron broken? will datum)
  ephemeron?
  (broken? ephemeron-broken? set-ephemeron-broken!)
  (will ephemeron-will set-ephemeron-will!)
  (datum ephemeron-datum set-ephemeron-datum!))

(define (make-ephemeron key datum)
  (let ((eph (%make-ephemeron #f #f #f)))
    (set-ephemeron-will!
     eph
     (make-will key
                (lambda (x)
                  (set-ephemeron-broken! eph #t)
                  (set-ephemeron-datum! eph #f))))
    (set-ephemeron-datum! eph datum)
    eph))

(define (ephemeron-key eph)
  (will-testator (ephemeron-will eph)))

(define (reference-barrier k) (void))
