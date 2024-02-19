;;; -*- Gerbil -*-
;;; © fare
;;; :std/misc/hash test

(import "hash"
        :std/misc/repr
        :std/sugar
        :std/test)
(export hash-test)

(def (equal-hash? a b)
  (and (hash-table? a)
       (hash-table? b)
       (= (hash-length a) (hash-length b))
       (andmap (lambda (k v) (and (hash-key? b k) (equal? (hash-ref b k) v)))
               (hash-keys a) (hash-values a))))
(def hash-test
  (test-suite "test :std/misc/hash"
    (test-case "hash-empty?"
      (check (hash-empty? (hash (1 "a") (2 "b") (3 "c"))) => #f)
      (check (hash-empty? (hash (a 1))) => #f)
      (check (hash-empty? (hash)) => #t))
    (test-case "hash->list/sort"
      (check (hash->list/sort (hash (3 "c") (1 "a") (5 "e") (4 "d") (2 "b")) <)
             => '((1 . "a") (2 . "b") (3 . "c") (4 . "d") (5 . "e"))))
    (test-case "hash-ref/default"
      (def h (hash (a 1) (b 2)))
      (check (hash-ref/default h 'a error) => 1)
      (check (hash-ref/default h 'b error) => 2)
      (check (hash-ref/default h 'c (lambda () 3)) => 3)
      (check (hash-ref/default h 'c (lambda () 5)) => 5))
    (test-case "hash-ensure-ref"
      (def h (hash (a 1) (b 2)))
      (check (hash-ensure-ref h 'a error) => 1)
      (check (hash-ensure-ref h 'b error) => 2)
      (check (hash-ensure-ref h 'c (lambda () 3)) => 3)
      (check (hash-ensure-ref h 'c (lambda () 5)) => 3))
    (test-case "invert-hash"
      (def h (hash ("a" 1) ("b" 2) ("c" 3)))
      (check (hash->list/sort (invert-hash h) <)
             => '((1 . "a") (2 . "b") (3 . "c")))
      (check (invert-hash (hash (4 "d") (33 "c")) to: h) => h :: equal-hash?)
      (check (hash->list/sort h string<?)
             => '(("a" . 1) ("b" . 2) ("c" . 33) ("d" . 4))))
    (test-case "invert-hash/fold"
      (def h (hash (1 "a") (2 "b") (3 "c") (4 "a") (5 "d") (6 "b") (7 "a")))
      (check (hash->list/sort (invert-hash/fold h cons: + nil: 0) string<?)
             => '(("a" . 12) ("b" . 8) ("c" . 3) ("d" . 5))))
    (test-case "invert-hash<-vector"
      (def h (hash ("a" 1) ("b" 2) ("c" 3)))
      (check (hash->list/sort (invert-hash<-vector #("h" "e" "l" "l" "o")) string<?)
             => '(("e" . 1) ("h" . 0) ("l" . 3) ("o" . 4))))
    (test-case "invert-hash<-vector/fold"
      (check (hash->list/sort
              (invert-hash<-vector/fold #("h" "e" "l" "l" "o") cons: + nil: 0)
              string<?)
             => '(("e" . 1) ("h" . 0) ("l" . 5) ("o" . 4))))
    (test-case "hash-restrict-keys"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5)))
      (check (hash-restrict-keys h '()) => (hash) :: equal-hash?)
      (check (hash-restrict-keys h '("a" "c" "e")) => (hash ("a" 1) ("c" 3) ("e" 5)) :: equal-hash?)
      (check (hash-restrict-keys h '("a" "b" "c" "d" "e")) => h :: equal-hash?))
    (test-case "hash-value-map"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5)))
      (check (hash-value-map h (lambda (x) (* x 2)))
             => (hash ("a" 2) ("b" 4) ("c" 6) ("d" 8) ("e" 10)) :: equal-hash?))
    (test-case "hash-key-value-map"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5) ("f" 6)))
      (check (hash-key-value-map (lambda (k v) (and (even? v) (cons (/ v 2) (string-append k k)))) h)
             => (hash (1 "bb") (2 "dd") (3 "ff")) :: equal-hash?))
    (test-case "hash-filter"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5)))
      (check (hash-filter h (lambda (k v) (odd? v)))
             => (hash ("a" 1) ("c" 3) ("e" 5)) :: equal-hash?))
    (test-case "hash-remove"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5)))
      (check (hash-remove h (lambda (k v) (odd? v)))
             => (hash ("b" 2) ("d" 4)) :: equal-hash?))
    (test-case "hash-remove-value"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5)))
      (check (hash-remove-value h 3)
             => (hash ("a" 1) ("b" 2) ("d" 4) ("e" 5)) :: equal-hash?))
    (test-case "hash-ensure-removed!"
      (def h (hash ("a" 1) ("b" 2) ("c" 3) ("d" 4) ("e" 5)))
      (check (values->list (hash-ensure-removed! h "d")) => '(4 #t))
      (check (values->list (hash-ensure-removed! h "e")) => '(5 #t))
      (check (values->list (hash-ensure-removed! h "e")) => '(#f #f))
      (check (values->list (hash-ensure-removed! h "f")) => '(#f #f))
      (check h => (hash ("a" 1) ("b" 2) ("c" 3)) :: equal-hash?))
    (test-case "hash-merge/override"
      (check (hash-merge/override
              (hash (1 11) (2 12) (3 13) (4 14) (5 15) (6 16) (7 17))
              (hash (0 20) (2 22) (4 24) (6 26) (8 28))
              (hash (3 33) (6 36) (9 39)))
             => (hash (0 20) (1 11) (2 22) (3 33) (4 24) (5 15) (6 36) (7 17) (8 28) (9 39))
             :: equal-hash?))
    (test-case "hash-merge/override!"
      (def h (hash (1 11) (2 12) (3 13) (4 14) (5 15) (6 16) (7 17)))
      (check (hash-merge/override!
              h
              (hash (0 20) (2 22) (4 24) (6 26) (8 28))
              (hash (3 33) (6 36) (9 39)))
             => h :: equal-hash?)
      (check h => (hash (0 20) (1 11) (2 22) (3 33) (4 24) (5 15) (6 36) (7 17) (8 28) (9 39))
             :: equal-hash?))
    (test-case "hash-get-set!, hash-ref-set!"
      (def h (hash (1 11) (2 12) (3 13)))
      (check (hash-get h 2) => 12)
      (hash-get-set! h 2 22)
      (check (hash-get h 2) => 22)
      (hash-ref-set! h 2 32)
      (check (hash-get h 2) => 32)
      (hash-ref-set! h 2 5 42)
      (check (hash-get h 2) => 42)
      (hash-get-set! h 2 "b")
      (check (hash-get h 2) => "b")
      (set! (hash-get h 2) "B")
      (check (hash-get h 2) => "B")
      (hash-ref-set! h "a" 1)
      (check (hash-get h "a") => 1)
      (set! (hash-ref h "b") 2)
      (check (hash-get h "b") => 2)
      (defrules post-increment! () ((p x) (p x 1)) ((p x y ...) (begin0 x (set! x (+ x y ...)))))
      (check (post-increment! (hash-ref h "a") 10) => 1)
      (check (post-increment! (hash-ref h "a" 0)) => 11)
      (check (post-increment! (hash-ref h "c" 0)) => 0)
      (check (post-increment! (hash-ref h "c" 0)) => 1))))
