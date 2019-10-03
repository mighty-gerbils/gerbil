;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; :std/misc/bytes test

(import :std/test
        (only-in :std/sugar try catch)
        :gerbil/gambit/exceptions
        :std/misc/bytes)
(export bytes-test)

(def u0 (u8vector 1 2 3))
(def u0-swapped (u8vector 2 1 3))
(def u0-swap (lambda () (begin (bytevector-swap! u0 0 1) u0)))

(def u1 (u8vector 1 2 3 4 5))
(def u1-reversed (u8vector 5 4 3 2 1))
(def u1-reverse (lambda () (begin (bytevector-reverse! u1) u1)))

(def u2 (u8vector 255 127 11 1 0))
(def u2-bytestring "FF 7F 0B 01 00")

(def u3 (u8vector 1 2 3))
(def u3-bytestring "010203")

(def bs0 "AB CD 00 12")
(def bs0-u8vector (u8vector #xAB #xCD #x00 #x12))

(def u4 (u8vector #xFF #xFF))
(def u5 (make-u8vector 10 #xFF))

(def u6 (u8vector 0 1 2 3))
(def u6-reversed (u8vector 3 2 1 0))
(def u6-reverse (lambda () (bytevector-reverse u6)))

(def bytes-test
  (test-suite "test :std/misc/bytes"
    (test-case "test bytevector-swap!"
      (check-equal? (u0-swap) u0-swapped))
    (test-case "test bytevector-reverse!"
      (check-equal? (u1-reverse) u1-reversed))
    (test-case "test bytevector-reverse"
      (check-equal? (u6-reverse) u6-reversed))
    (test-case "test u8vector->bytestring"
      (check-equal? (u8vector->bytestring u2) u2-bytestring)
      (check-equal? (u8vector->bytestring u3 "") u3-bytestring))
    (test-case "test bytestring->u8vector"
      (check-equal? (bytestring->u8vector bs0) bs0-u8vector))
    (test-case "test u8vector->uint"
      (check-equal? (u8vector->uint u4) (- (expt 2 16) 1))
      (check-equal? (try (u8vector->uint u5) (catch (e) #f)) #f)
      (check-equal? (u8vector->uint u5 #f) (- (expt 2 80) 1)))))
