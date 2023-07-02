;;; -*- Gerbil -*-
;;; © vyzo
;;; symbolic utilities
(import :gerbil/gambit/threads)
(export symbol<?
        symbol<=?
        symbol>?
        symbol>=?
        compare-symbol<?
        compare-symbol<=?
        compare-symbol>?
        compare-symbol>=?)

;; caching symbol as string comparison
(def (compare-symbolic cmp-e mx?)
  (def cache (make-hash-table-eq))
  (def (do-cache-get x)
    (cond
     ((hash-get cache x) => values)
     (else
      (let (str (symbol->string x))
        (hash-put! cache x str)
        str))))
  (def cache-get
    (if mx?
      (let (mx (make-mutex))
        (lambda (x)
          (with-lock mx (cut do-cache-get x))))
      do-cache-get))
  (lambda (x y)
    (cmp-e (cache-get x) (cache-get y))))

(def (compare-symbol<? (mx? #f))
  (compare-symbolic string<? mx?))
(def (compare-symbol<=? (mx? #f))
  (compare-symbolic string<=? mx?))
(def (compare-symbol>=? (mx? #f))
  (compare-symbolic string>=? mx?))
(def (compare-symbol>? (mx? #f))
  (compare-symbolic string>? mx?))

;; globally cached implementations
(def symbol<?
  (compare-symbol<? #t))
(def symbol<=?
  (compare-symbol<=? #t))
(def symbol>?
  (compare-symbol>? #t))
(def symbol>=?
  (compare-symbol>=? #t))