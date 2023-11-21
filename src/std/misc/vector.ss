;; -*- Gerbil -*-
;;;; Utilities pertaining to using Vectors

(export #t
        (rename: srfi43-vector-map vector-map/index)
        (rename: srfi43-vector-for-each vector-for-each/index)
        (rename: srfi43-vector-map! vector-map!/index)
        (rename: srfi43-vector-fold vector-fold/index)
        (rename: srfi43-vector-fold-right vector-fold-right/index)
        (rename: srfi43-vector-count vector-count/index))

(import
  (prefix-in (only-in :std/srfi/43
                      vector-map
                      vector-for-each
                      vector-map!
                      vector-fold
                      vector-fold-right
                      vector-count) srfi43-)
  (only-in :std/iter for in-range in-iota)
  (only-in :std/misc/list-builder with-list-builder)
  (only-in :std/misc/number least-integer)
  (only-in :std/sugar while))

;; Enable (set! (vector-ref v i) x)
(defalias vector-ref-set! vector-set!)

;;; Assuming a sorted vector, a predicate on vector elements that is "increasing",
;;; i.e. if true, true on all subsequent elements, and optionally
;;; a start (inclusive, defaults to 0) and an end (exclusive, defaults to vector length),
;;; return the least index of a vector element in the interval [start, env)
;;; that satisfies the predicate, or the end if none does.
(def (vector-least-index pred? vector start: (start 0) end: (end #f))
  (least-integer (lambda (i) (pred? (vector-ref vector i))) start (or end (vector-length vector))))

;;; Copy a vector if necessary: return the same if no change in start and end requested.
(def (maybe-subvector vector (start 0) (end #f))
  (let* ((len (vector-length vector))
         (end (or end len)))
    (if (and (eqv? start 0) (eqv? end len))
      vector
      (subvector vector start end))))

(def (subvector-for-each function vector start: (start 0) end: (end #f))
  (for ((i (in-iota (- (or end (vector-length vector)) start) start)))
    (function (vector-ref vector i))))

(def (subvector-for-each/index function vector start: (start 0) end: (end #f))
  (for ((i (in-iota (- (or end (vector-length vector)) start) start)))
    (function i (vector-ref vector i))))

(def (subvector-reverse-for-each function vector start: (start 0) end: (end #f))
  (let ((end (or end (vector-length vector))))
    (for ((i (in-iota (- end start) (- end 1) -1)))
      (function (vector-ref vector i)))))

(def (subvector-reverse-for-each/index function vector start: (start 0) end: (end #f))
  (let (end (or end (vector-length vector)))
    (for ((i (in-iota (- end start) (- end 1) -1)))
      (function i (vector-ref vector i)))))

(def (subvector->list vector start: (start 0) end: (end #f))
  (with-list-builder (c!) (subvector-for-each c! vector start: start end: end)))

(def cons->vector (match <> ([car . cdr] (vector car cdr)) (_ #f)))

;;;; Given a vector, an index and a function, update the element of the vector at given index
;;;; by invoking the function on its previous value
;;(def (vector-update! vector index fun)
;;  (vector-set! vector index (fun (vector-ref vector index))))

;; Filter entries of a vector to those that satisfy the predicate
(def (vector-filter pred? v start: (start 0) end: (end #f))
  (list->vector
   (with-list-builder (c)
     (for (i (in-range start (or end (vector-length v))))
       (let (e (vector-ref v i))
         (when (pred? e) (c e)))))))
