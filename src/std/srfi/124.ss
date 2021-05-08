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
  (key-will ephemeron-key-will set-ephemeron-key-will!)
  (datum-will ephemeron-datum-will set-ephemeron-datum-will!))

(define (make-ephemeron key datum)
  (letrec* ((eph (%make-ephemeron #f #f #f))
            (datum-action
             (lambda (x)
               (if (not (ephemeron-broken? eph))
                   (set-ephemeron-datum-will!
                    eph
                    (make-will x datum-action))))))
    (set-ephemeron-key-will!
     eph
     (make-will key
                (lambda (x)
                  (set-ephemeron-broken! eph #t)
                  (set-ephemeron-datum-will! eph #f))))
    (set-ephemeron-datum-will!
     eph
     (make-will datum datum-action))
    eph))

(define (ephemeron-key eph)
  (will-testator (ephemeron-key-will eph)))

(define (ephemeron-datum eph)
  (and (not (ephemeron-broken? eph))
       (will-testator (ephemeron-datum-will eph))))

(define (reference-barrier k) (void))
