;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; List Builder macro and procedural form
(export #t)

(defrules with-list-builder ()
  ((recur (c) body1 body+ ...)
   (recur (c _unused) body1 body+ ...))
  ((_ (poke peek) body1 body+ ...)
   (let* ((head [#f])
          (tail head))
     (defrules poke ()
       ((_ val)
        (let (new-tail [val])
          (##set-cdr! tail new-tail)
          (set! tail new-tail)))
       (id (identifier? #'id) (lambda (val) (poke val))))
     (defrules peek ()
       ((_) (##cdr head))
       (id (identifier? #'id) (lambda () (peek))))
     body1 body+ ... (peek))))

;; Build a list, by calling a building function that takes two arguments:
;; The first, which could be called poke! (or put!, enqueue!, append-one-element-at-the-end!)
;; takes an element and puts it at the end of the list. The second, which could be called peek
;; (or get, get-list-so-far, get-shared-list-that-is-mutated-when-you-put), returns the
;; list of elements that poke! has been called with, so far. When the building function returns,
;; call-with-list-builder will return the state of the list, as if by calling the peek function.
;; NB: this implementation accumulates elements by mutating a shared queue of cons cells;
;; in case of multiple entries by continuations, that same list is shared by all executions.
;; : (list X) <- (<- (<- X) ((list X) <-))
(def (call-with-list-builder fun)
  (with-list-builder (poke peek) (fun poke peek)))
