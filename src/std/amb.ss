;;; -*- Gerbil -*-
;;; © vyzo
;;; AMB: the ambiguous operator
;;; Based on Ken Lovett's chicken implementation
package: std

(import :gerbil/gambit/random
        :std/misc/shuffle)
(export begin-amb amb amb-find one-of amb-collect all-of amb-assert required
        amb-do amb-do-find amb-do-collect)

(def (amb-exhausted)
  (error "AMB tree exhausted"))

(def amb-fail
  (make-parameter amb-exhausted))

(defrules begin-amb ()
  ((_ e es ...)
   (parameterize ((amb-fail amb-exhausted))
     e es ...)))

(defrules amb ()
  ((_) ((amb-fail)))
  ((_ e) e)
  ((_ e es ...)
   (amb-do [(lambda () e) (lambda () es) ...])))

(defrules amb-find ()
  ((_ e)
   (amb-do-find (lambda () e)))
  ((_ e fail)
   (amb-do-find (lambda () e) (lambda () fail))))

(defalias one-of amb-find)

(defrules amb-collect ()
  ((_ e)
   (amb-do-collect (lambda () e))))

(defalias all-of amb-collect)

(defrules amb-assert ()
  ((_ e)
   (unless e ((amb-fail)))))

(defalias required amb-assert)

(def (amb-do thunks)
  (let (fail (amb-fail))
    (let/cc return
      (let loop ((rest (shuffle thunks)))
        (match rest
          ([thunk . rest]
           (amb-fail (lambda () (loop rest)))
           (return (thunk)))
          (else
           (amb-fail fail)
           (fail)))))))

(def (amb-do-find thunk (failure amb-exhausted))
  (let/cc return
    (let (fail (lambda () (return (failure))))
      (parameterize ((amb-fail fail))
        (thunk)))))

(def (amb-do-collect thunk)
  (let (fail #f)
    (dynamic-wind
        (lambda ()
          (set! fail (amb-fail)))
        (lambda ()
          (let/cc return
            (let* ((root [#f])
                   (hd root))
              (amb-fail (lambda () (return (cdr root))))
              (let (tl [(thunk)])
                (set! (cdr hd) tl)
                (set! hd tl))
              ((amb-fail)))))
        (lambda ()
          (amb-fail fail)))))
