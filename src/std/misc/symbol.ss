;;; -*- Gerbil -*-
;;; © vyzo
;;; symbolic utilities
(export #t)

;; caching symbol as string comparison
(def (compare-symbolic string-e cmp-e mx?)
  (def cache (make-hash-table-eq))
  (def (do-cache-get x)
    (cond
     ((hash-get cache x))
     (else
      (let (str (string-e x))
        (hash-put! cache x str)
        str))))
  (def cache-get
    (if mx?
      (let (mx (make-mutex))
        (lambda (x)
          (mutex-lock! mx)
          (let (obj (do-cache-get x))
            (mutex-unlock! mx)
            obj)))
      do-cache-get))
  (lambda (x y)
    (cmp-e (cache-get x) (cache-get y))))

(defrule (defsymbolic name T string-e string-cmp)
  (def (name (x : T) (y : T))
    => :boolean
    (string-cmp (string-e x) (string-e y))))

(defsymbolic symbol<? :symbol symbol->string string<?)
(defsymbolic symbol<=? :symbol symbol->string string=?)
(defsymbolic symbol>? :symbol symbol->string string>?)
(defsymbolic symbol>=? :symbol symbol->string string>=?)

(defsymbolic keyword<? :keyword keyword->string string<?)
(defsymbolic keyword<=? :keyword keyword->string string=?)
(defsymbolic keyword>? :keyword keyword->string string>?)
(defsymbolic keyword>=? :keyword keyword->string string>=?)
