;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; :std/misc/bytes test

(import :std/test
        :gerbil/gambit/exceptions
        :std/misc/bytes)
(export bytes-test)

(def u0 (u8vector 1 2 3))
(def u0-swapped (u8vector 2 1 3))
(def u0-swap (lambda () (begin (bytevector-swap! u0 0 1) u0)))

(def u1 (u8vector 1 2 3 4 5))
(def u1-reversed (u8vector 5 4 3 2 1))
(def u1-reverse (lambda () (begin (bytevector-reverse! u1) u1)))

(def bytes-test
  (test-suite "test :std/misc/bytes"
    (test-case "test bytevector-swap!"
      (check-equal? (u0-swap) u0-swapped))
    (test-case "test bytevector-reverse!"
      (check-equal? (u1-reverse) u1-reversed))))
