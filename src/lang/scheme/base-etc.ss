;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import)
(export #t)

(defrules defeqv ()
  ((_ id is? =?)
   (def* id
     ((x y)
      (and (is? x)
           (is? y)
           (=? x y)))
     ((x y . rest)
      (let* ((y-rest (cons y rest))
             (x-y-rest (cons x y-rest)))
        (and (andmap is? x-y-rest)
             (andmap (cut =? x <>) y-rest)))))))

(defeqv boolean=? boolean? eq?)
(defeqv symbol=? symbol? eq?)

(definline (exact-integer? obj)
  (and (integer? obj) (exact? obj)))

;; numerics
(definline (square x)
  (expt x 2))

;; original author: brad [gambiteer]
(def (exact-integer-sqrt y)
  (if (and (exact-integer? y)
           (not (negative? y)))
    (let (s-r (##exact-int.sqrt y))
      (values (car s-r) (cdr s-r)))
    (error "exact-integer-sqrt: Argument is not a nonnegative exact integer: " y)))

;; lists
(def (list-copy lst)
  (foldr cons [] lst))

(def (list-set! lst k obj)
  (set! (car (list-tail lst k))
    obj))
