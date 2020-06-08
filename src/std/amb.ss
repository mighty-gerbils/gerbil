;;; -*- Gerbil -*-
;;; © vyzo
;;; AMB: the ambiguous operator
;;; Orignally based on Ken Lovett's chicken implementation, but has mutated since then.

(import :gerbil/gambit/random
        :std/sugar
        :std/error
        :std/misc/shuffle)
(export begin-amb begin-amb-random amb amb-find one-of amb-collect all-of amb-assert required
        amb-do amb-do-find amb-do-collect
        amb-exhausted?
        element-of)

(defstruct (amb-completion <error>) ())

(def +amb-exhausted+
  (make-amb-completion "amb exhausted" [] 'amb))

(def (amb-exhausted)
  (cond
   ((amb-end) => (cut <>))
   (else
    (raise +amb-exhausted+))))

(def (amb-exhausted? e)
  (eq? e +amb-exhausted+))

(def amb-fail
  (make-parameter amb-exhausted))

(def amb-end
  (make-parameter #f))

(def amb-results
  (make-parameter []))

(def amb-strategy
  (make-parameter identity))

(defrules begin-amb ()
  ((_ e es ...)
   (parameterize ((amb-fail amb-exhausted)
                  (amb-end #f)
                  (amb-results []))
     e es ...)))

(defrules begin-amb-random ()
  ((_ e es ...)
   (parameterize ((amb-fail amb-exhausted)
                  (amb-end #f)
                  (amb-results [])
                  (amb-strategy shuffle))
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
      (let loop ((rest ((amb-strategy) thunks)))
        (match rest
          ([thunk . rest]
           (amb-fail (lambda () (loop rest)))
           (return (thunk)))
          (else
           (amb-fail fail)
           (fail)))))))

(def (amb-do-find thunk (failure amb-exhausted))
  (let (end (amb-end))
    (let/cc return
      (amb-end
       (lambda ()
         (amb-end end)
         (return (failure))))
      (let (result (thunk))
        (amb-end end)
        (return result)))))

(def (amb-do-collect thunk)
  (let (end (amb-end))
    (let/cc return
      (amb-end
       (lambda ()
         (let (result (amb-results))
           (amb-results [])
           (amb-end end)
           (return (reverse result)))))
      (let (next (thunk))
        (amb-results (cons next (amb-results)))
        ((amb-fail))))))

(def (element-of xs)
  (amb-do (map (cut lambda () <>) xs)))
