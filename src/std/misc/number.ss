;;; -*- Gerbil -*-
;;; Simple number manipulation utilities
;;; © fare

(export xmin xmin/list xmin! xmin/map
        xmax xmax/list xmax! xmax/map)

(import ../srfi/1 ../sugar)

;;; xmin and xmax on the (affine) extended real number line.
;;; An element is either a real number or a positive infinite +inf.0 (+∞)
;;; or negative infinity -inf.0 (-∞)

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
