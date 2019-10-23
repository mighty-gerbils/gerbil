;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
(import :gerbil/gambit/hash)
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

;; numerics
(definline (square x)
  (expt x 2))

;; lists
(def (list-copy lst)
  (foldr cons [] lst))

(def (list-set! lst k obj)
  (set! (car (list-tail lst k))
    obj))
