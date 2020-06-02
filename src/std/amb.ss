;;; -*- Gerbil -*-
;;; © vyzo
;;; AMB: the ambiguous operator
;;; Orignally based on Ken Lovett's chicken implementation, but has mutated since then.

(import :gerbil/gambit/random
        :std/sugar
        :std/error
        :std/misc/shuffle)
(export begin-amb amb amb-find one-of amb-collect all-of amb-assert required
        amb-do amb-do-find amb-do-collect)

(defstruct (amb-completion <error>) ())

(def +amb-exhausted+
  (make-amb-completion "amb exhausted" [] 'amb))

(def (amb-exhausted)
  (raise +amb-exhausted+))

(def amb-fail
  (make-parameter amb-exhausted))

(def amb-results
  (make-parameter []))

(defrules begin-amb ()
  ((_ e es ...)
   (parameterize ((amb-fail amb-exhausted)
                  (amb-results []))
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
  (try
   (let (next (thunk))
     (amb-results (cons next (amb-results)))
     ((amb-fail)))
   (catch (e)
     (if (eq? e +amb-exhausted+)
       (let (result (amb-results))
         (amb-results [])
         (reverse result))
       (raise e)))))
