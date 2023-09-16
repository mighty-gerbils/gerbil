;;; -*- Gerbil -*-
;;; © vyzo
;;; AMB: the ambiguous operator
;;; Orignally based on Ken Lovett's chicken implementation, but has mutated since then.

(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/sugar
        :std/error
        :std/misc/shuffle)
(export begin-amb begin-amb-random amb amb-find one-of amb-collect all-of amb-assert required
        amb-do amb-do-find amb-do-collect
        amb-exhausted?
        element-of)

(defclass (AmbCompletion Exception) ())
(defmethod {display-exception AmbCompletion}
  (lambda (self port)
    (display "amb exhausted" port)
    (newline port)))

(defrule (invoke proc arg ...)
  (proc arg ...))

(def +amb-exhausted+
  (AmbCompletion))

(def (amb-exhausted)
  (cond
   ((current-amb-state)
    => (lambda (state)
         (cond
          ((amb-state-end state) => invoke)
          (else
           ((amb-state-top state) +amb-exhausted+)))))
   (else
    (raise +amb-exhausted+))))

(def (amb-exhausted? e)
  (eq? e +amb-exhausted+))

(defstruct amb-state (top fail end results strategy)
  final: #t)

(def* current-amb-state
  (() (thread-specific (current-thread)))
  ((state) (thread-specific-set! (current-thread) state)))

(defrule (with-amb-thread (strategy) body rest ...)
  (invoke-amb (make-amb-state #f amb-exhausted #f [] strategy)
              (lambda () body rest ...)))

(def (invoke-amb state thunk)
  (let (amb-thread
        (make-thread
         (lambda ()
           (let/cc top
             (amb-state-top-set! state top)
             (current-amb-state state)
             (thunk)))
         'amb))
    (thread-start! amb-thread)
    (thread-join! amb-thread)))

(defrule (defstate proc getf setf)
  (def* proc
    (() (getf (current-amb-state)))
    ((state) (setf (current-amb-state) state))))

(defstate amb-fail     amb-state-fail     amb-state-fail-set!)
(defstate amb-end      amb-state-end      amb-state-end-set!)
(defstate amb-results  amb-state-results  amb-state-results-set!)
(defstate amb-strategy amb-state-strategy amb-state-strategy-set!)

(defrule (begin-amb e es ...)
  (with-amb-thread (identity)
    e es ...))

(defrule (begin-amb-random e es ...)
  (with-amb-thread (shuffle)
     e es ...))

(defrules amb ()
  ((_) (invoke (amb-fail)))
  ((_ e) e)
  ((_ e es ...)
   (amb-do [(lambda () e) (lambda () es) ...])))

(defrules amb-find ()
  ((_ e)
   (amb-do-find (lambda () e))))

(defalias one-of amb-find)

(defrules amb-collect ()
  ((_ e)
   (amb-do-collect (lambda () e))))

(defalias all-of amb-collect)

(defrules amb-assert ()
  ((_ e)
   (unless e (invoke (amb-fail)))))

(defalias required amb-assert)

(def (amb-do thunks)
  (let (fail (amb-fail))
    (let/cc return
      (let loop ((rest (invoke (amb-strategy) thunks)))
        (loop
         (let/cc continue
           (match rest
             ([thunk . rest]
              (amb-fail (lambda () (continue rest)))
              (return (invoke thunk)))
             (else
              (amb-fail fail)
              (return (invoke fail))))))))))

(def (amb-do-find thunk)
  (let (end (amb-end))
    (let/cc return
      (amb-end
       (lambda ()
         (amb-end end)
         (return (invoke amb-exhausted))))
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
      (let (next (invoke thunk))
        (amb-results (cons next (amb-results)))
        (invoke (amb-fail))))))

(def (element-of xs)
  (amb-do (map (cut lambda () <>) xs)))
