;;; -*- Gerbil -*-
;;; Simple number manipulation utilities
;;; © fare

(export xmin xmin/list xmin! xmin/map
        xmax xmax/list xmax! xmax/map
        pre-increment! increment! post-increment!
        pre-decrement! decrement! post-decrement!
        make-counter)

(import ../srfi/1 ../sugar)

;;; xmin and xmax on the (affine) extended real number line.
;;; An element is either a real number or a positive infinite +inf.0 (+∞)
;;; or negative infinity -inf.0 (-∞)
;;; Unlike min and max, these functions short-circuit, which is only a minor optimization,
;;; except for xmin/map (resp. xmax/map), that will avoid any side-effects
;;; (including error or continuation escape) from evaluating anything
;;; after the bottom value -inf.0 (resp. top value +inf.0) was detected.

(def xmin
  (case-lambda
    ((x y) (if (< x y) x y))
    (() +inf.0) ((x) x) (l (xmin/list l))))
(def (xmin/list l) (reduce xmin +inf.0 l))
(defrule (xmin! x y ...) (set! x (xmin x y ...)))
(def (xmin/map f l (base +inf.0))
  (let/cc return
    (when (eqv? base -inf.0) (return -inf.0))
    (for-each (lambda (i)
                (def x (f i))
                (when (eqv? x -inf.0) (return -inf.0))
                (xmin! base x))
              l)
    base))

(def xmax
  (case-lambda
    ((x y) (if (< x y) y x))
    (() -inf.0) ((x) x) (l (xmax/list l))))
(def (xmax/list l) (reduce xmax -inf.0 l))
(defrule (xmax! x y ...) (set! x (xmax x y ...)))
(def (xmax/map f l (base -inf.0))
  (let/cc return
    (when (eqv? base +inf.0) (return +inf.0))
    (for-each (lambda (i)
                (def x (f i))
                (when (eqv? x +inf.0) (return +inf.0))
                (xmax! base x))
               l)
    base))


;;; Classic (pre-||post-)(in|de)crement! macros

(defrules increment! ()
  ((_ place) (increment! place 1))
  ((_ place increment ...) (set! place (+ place increment ...))))
(defrules pre-increment! ()
  ((_ place increment ...) (begin (increment! place increment ...) place)))
(defrules post-increment! ()
  ((_ place increment ...) (begin0 place (increment! place increment ...))))

(defrules decrement! ()
  ((_ place) (decrement! place 1))
  ((_ place decrement ...) (set! place (- place decrement ...))))
(defrules pre-decrement! ()
  ((_ place decrement ...) (begin (decrement! place decrement ...) place)))
(defrules post-decrement! ()
  ((_ place decrement ...) (begin0 place (decrement! place decrement ...))))

;;; Make a new counter with a start value
(def (make-counter (n 0))
  (case-lambda
    (() (post-increment! n))
    ((x) (post-increment! n x))
    (l (post-increment! n (apply + l)))))
