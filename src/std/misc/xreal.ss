;;; -*- Gerbil -*-
;;; © fare
;;; The (affine) extended real number line
;;; An element is either a real number or a positive or negative infinity,
;;; as represented by a boolean, where #t = -∞, #f = +∞.

(export #t)

(import
  "../srfi/1"
  "../sugar"
  "list")

(def (xreal? x) (or (real? x) (boolean? x)))

(def xreal<
  (case-lambda
    ((x y)
     (cond
      ((real? x) (cond
                  ((real? y) (< x y))
                  ((eq? y #t) #f)
                  ((not y) #t)))
      ((eq? x #t) (not (eq? y #t)))
      ((not x) #f)))
    (() #t) ((x) #t) (l (xreal</list l))))
(def (xreal</list l) (every-consecutive? xreal< l))

(def xreal<= (case-lambda ((x y) (not (xreal< y x))) (() #t) ((x) #t) (l (xreal<=/list l))))
(def (xreal<=/list l) (every-consecutive? xreal<= l))

(def xreal-min
  (case-lambda
    ((x y) (if (xreal< x y) x y))
    (() #f) ((x) x) (l (xreal-min/list l))))
(def (xreal-min/list l) (reduce xreal-min #f l))
(defrule (xreal-min! x y ...) (set! x (xreal-min x y ...)))
(def (xreal-min/map f l (base #f))
  (let/cc return
    (when (eq? base #t) (return #t))
    (for-each (lambda (i)
                (def x (f i))
                (when (eq? x #t) (return #t))
                (xreal-min! base x))
              l)
    base))

(def xreal-max
  (case-lambda
    ((x y) (if (xreal< x y) y x))
    (() #t) ((x) x) (l (xreal-max/list l))))
(def (xreal-max/list l) (reduce xreal-max #f l))
(defrule (xreal-max! x y ...) (set! x (xreal-max x y ...)))
(def (xreal-max/map f l (base #t))
  (let/cc return
    (unless base (return #f))
    (for-each (lambda (i)
                (def x (f i))
                (unless x (return #f))
                (xreal-max! base x))
               l)
    base))

(def xreal+
  (case-lambda
    ((x y)
     (cond
      ((real? x) (cond
                  ((real? y) (+ x y))
                  ((boolean? y) y)))
      ((boolean? x) (cond
                     ((real? y) x)
                     ((boolean? y) (if (eq? x y) x (error 'invalid-operation 'xreal+ x y)))))))
    (() 0) ((x) x) (l (xreal+/list l))))
(def (xreal+/list l) (reduce xreal+ 0 l))
(defrule (xreal+! x y ...) (set! x (xreal+ x y ...)))

(def xreal-
  (case-lambda
    ((x) (cond ((real? x) (- x))
               ((boolean? x) (not x))))
    ((x y) (cond ((real? x) (cond ((real? y) (- x y))
                                  ((boolean? y) (not y))))
                 ((boolean? x) (cond ((real? y) x)
                                     ((boolean? y)
                                      (if (eq? x y) (error 'invalid-operation 'xreal- x y) x))))))
    (() 0)
    ((x . l) (xreal- x (xreal+/list l)))))
(defrule (xreal-! x y ...) (set! x (xreal- x y ...)))

(def xreal*
  (case-lambda
    ((x y)
     (cond
      ((real? x) (cond
                  ((real? y) (* x y))
                  ((boolean? y) (cond ((< 0 x) y)
                                      ((> 0 x) (not y))
                                      (else (error 'invalid-operation 'xreal* x y))))))
      ((boolean? x) (cond
                     ((real? y) (cond ((< 0 y) x)
                                      ((> 0 y) (not x))
                                      (else (error 'invalid-operation 'xreal* x y))))
                     ((boolean? y) (eq? x y))))))
    (() 1) ((x) x) (l (xreal*/list l))))
(def (xreal*/list l) (reduce xreal* 1 l))
(defrule (xreal*! x y ...) (set! x (xreal* x y ...)))

(def xreal/
  (case-lambda
    ((x y) (cond
            ((zero? y) (error 'invalid-operation 'xreal/ x y))
            ((real? y) (cond
                        ((real? x) (/ x y))
                        ((boolean? x) (cond ((< 0 y) x)
                                            ((> 0 y) (not x))
                                            (else (error 'invalid-operation 'xreal/ x y))))))
            ((boolean? y) (cond
                           ((real? x) 0)
                           ((boolean? x) (error 'invalid-operation 'xreal/ x y))))))
    ((x) (cond
          ((zero? x) (error 'invalid-operation 'xreal/ x))
          ((real? x) (/ x))
          ((boolean? x) 0)))
    (() 1) ((x . l) (xreal/ x (xreal*/list l)))))
(defrule (xreal/! x y ...) (set! x (xreal/ x y ...)))
