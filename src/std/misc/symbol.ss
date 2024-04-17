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

;; comparison constructors
(def (compare-symbol<? (mx? #f))
  (compare-symbolic symbol->string string<? mx?))
(def (compare-symbol<=? (mx? #f))
  (compare-symbolic symbol->string string<=? mx?))
(def (compare-symbol>=? (mx? #f))
  (compare-symbolic symbol->string string>=? mx?))
(def (compare-symbol>? (mx? #f))
  (compare-symbolic symbol->string string>? mx?))

;; globally cached implementations
(def symbol<?
  (compare-symbol<? #t))
(def symbol<=?
  (compare-symbol<=? #t))
(def symbol>?
  (compare-symbol>? #t))
(def symbol>=?
  (compare-symbol>=? #t))

;;; keywords
;; comparison constructors
(def (compare-keyword<? (mx? #f))
  (compare-symbolic keyword->string string<? mx?))
(def (compare-keyword<=? (mx? #f))
  (compare-symbolic keyword->string string<=? mx?))
(def (compare-keyword>=? (mx? #f))
  (compare-symbolic keyword->string string>=? mx?))
(def (compare-keyword>? (mx? #f))
  (compare-symbolic keyword->string string>? mx?))

;; globally cached implementations
(def keyword<?
  (compare-keyword<? #t))
(def keyword<=?
  (compare-keyword<=? #t))
(def keyword>?
  (compare-keyword>? #t))
(def keyword>=?
  (compare-keyword>=? #t))
