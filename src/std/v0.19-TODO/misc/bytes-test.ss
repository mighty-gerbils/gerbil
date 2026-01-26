;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; :std/misc/bytes test

(import :std/error
        :std/misc/bytes
        :std/srfi/13
        (only-in :std/sugar try catch defrule)
        :std/test)
(export bytes-test)

(def u0 (u8vector 1 2 3))
(def u0-swapped (u8vector 2 1 3))
(def u0-swap (lambda () (begin (bytevector-swap! u0 0 1) u0)))

(def u1 (u8vector 1 2 3 4 5))
(def u1-reversed (u8vector 5 4 3 2 1))
(def u1-reverse (lambda () (begin (bytevector-reverse! u1) u1)))

(def u4 (u8vector #xFF #xFF))
(def u5 (make-u8vector 10 #xFF))

(def u6 (u8vector 0 1 2 3))
(def u6-reversed (u8vector 3 2 1 0))
(def u6-reverse (lambda () (u8vector-reverse u6)))

(defrule (check-rep parse unparse rep obj)
  (begin
    (check-equal? (parse rep) obj)
    (check-equal? (unparse obj) rep)))

(def bytes-test
  (test-suite "test :std/misc/bytes"
    (test-case "test primitive operations"
      (let (u (make-u8vector 1))
        (u8vector-s8-set! u 0 100)
        (check u => #u8(100))
        (check (u8vector-s8-ref u 0) => 100)
        (u8vector-s8-set! u 0 -100)
        (check u => #u8(156))
        (check (u8vector-s8-ref u 0) => -100))

      (let (u (make-u8vector 4))
        (u8vector-uint-set! u 0 #xffff0000 big 4)
        (check u => #u8(#xff #xff 0 0))
        (check (u8vector-uint-ref u 0 big 4) => #xffff0000)
        (u8vector-uint-set! u 0 #xffff0000 little 4)
        (check u => #u8(0 0 #xff #xff))
        (check (u8vector-uint-ref u 0 little 4) => #xffff0000))

      (let (u (make-u8vector 4))
        (u8vector-sint-set! u 0 1000 big 4)
        (check u => #u8(0 0 #x03 #xe8))
        (check (u8vector-sint-ref u 0 big 4) => 1000)
        (u8vector-sint-set! u 0 1000 little 4)
        (check u => #u8(#xe8 #x03 0 0))
        (check (u8vector-sint-ref u 0 little 4) => 1000)

        (u8vector-sint-set! u 0 -1000 big 4)
        (check u => #u8(#xff #xff #xfc #x18))
        (check (u8vector-sint-ref u 0 big 4) => -1000)
        (u8vector-sint-set! u 0 -1000 little 4)
        (check u => #u8(#x18 #xfc #xff #xff))
        (check (u8vector-sint-ref u 0 little 4) => -1000))

      (let (u (make-u8vector 2))
        (u8vector-u16-set! u 0 100 native)
        (check (u8vector-u16-ref u 0 native) => 100)
        (u8vector-s16-set! u 0 100 native)
        (check (u8vector-s16-ref u 0 native) => 100)
        (u8vector-s16-set! u 0 -100 native)
        (check (u8vector-s16-ref u 0 native) => -100))

      (let (u (make-u8vector 4))
        (u8vector-u32-set! u 0 100 native)
        (check (u8vector-u32-ref u 0 native) => 100)
        (u8vector-s32-set! u 0 100 native)
        (check (u8vector-s32-ref u 0 native) => 100)
        (u8vector-s32-set! u 0 -100 native)
        (check (u8vector-s32-ref u 0 native) => -100))

      (let (u (make-u8vector 8))
        (u8vector-u64-set! u 0 100 native)
        (check (u8vector-u64-ref u 0 native) => 100)
        (u8vector-s64-set! u 0 100 native)
        (check (u8vector-s64-ref u 0 native) => 100)
        (u8vector-s64-set! u 0 -100 native)
        (check (u8vector-s64-ref u 0 native) => -100))

      (let (u (make-u8vector 4))
        (u8vector-float-set! u 0 4.0 big)
        (check-eqv? (u8vector-float-ref u 0 big) 4.0)
        (u8vector-float-set! u 0 4.0 little)
        (check-eqv? (u8vector-float-ref u 0 little) 4.0)
        (u8vector-float-set! u 0 4.0 native)
        (check-eqv? (u8vector-float-ref u 0 native) 4.0))

      (let (u (make-u8vector 8))
        (u8vector-double-set! u 0 4.2 big)
        (check-eqv? (u8vector-double-ref u 0 big) 4.2)
        (u8vector-double-set! u 0 4.2 little)
        (check-eqv? (u8vector-double-ref u 0 little) 4.2)
        (u8vector-double-set! u 0 4.2 native)
        (check-eqv? (u8vector-double-ref u 0 native) 4.2))
      )

    (test-case "test bytevector-swap!"
      (check-equal? (u0-swap) u0-swapped))
    (test-case "test bytevector-reverse!"
      (check-equal? (u1-reverse) u1-reversed))
    (test-case "test bytevector-reverse"
      (check-equal? (u6-reverse) u6-reversed))
    (test-case "test u8vector-init!"
      (check-equal? (u8vector-init! 5 (lambda (x) (* x x))) #u8(0 1 4 9 16)))
    (test-case "test u8vector->bytestring, bytestring->u8vector"
      (for-each (match <>
                  ([vec hex delim]
                   (check-equal? vec (bytestring->u8vector hex delim))
                   (check-equal? (string-upcase hex) (u8vector->bytestring vec delim))))
                [[#u8(255 127 11 1 0) "FF 7F 0B 01 00" #\space]
                 [#u8(1 2 3) "010203" #f]
                 [#u8(#xAB #xCD #x00 #x12) "AB CD 00 12" #\space]
                 [#u8(#xDE #xAD #xBE #xEF #xCA #xFE) "De:ad:Be:ef:cA:FE" #\:]
                 [#u8() "" #f]
                 [#u8() "" #\:]]))
    (test-case "test u8vector->uint"
      (check-equal? (u8vector->uint u4) (- (expt 2 16) 1))
      (check-equal? (u8vector->uint u5) (- (expt 2 80) 1)))

    (test-case "uint<->u8vector"
      (check-rep u8vector->uint uint->u8vector #u8() 0)
      (check-rep u8vector->uint uint->u8vector #u8(1) 1)
      (check-rep u8vector->uint uint->u8vector #u8(233) 233)
      (check-rep u8vector->uint uint->u8vector #u8(255) 255)
      (check-rep u8vector->uint uint->u8vector #u8(3 219) 987)
      (check-rep u8vector->uint uint->u8vector #u8(130 255) 33535)
      (check-rep u8vector->uint uint->u8vector #u8(1 37 17) 75025))
    (test-case "sint<->u8vector"
      (check-rep u8vector->sint sint->u8vector #u8() 0)
      (check-rep u8vector->sint sint->u8vector #u8(1) 1)
      (check-rep u8vector->sint sint->u8vector #u8(0 233) 233)
      (check-rep u8vector->sint sint->u8vector #u8(233) -23)
      (check-rep u8vector->sint sint->u8vector #u8(255) -1)
      (check-rep u8vector->sint sint->u8vector #u8(128) -128)
      (check-rep u8vector->sint sint->u8vector #u8(0 255) 255)
      (check-rep u8vector->sint sint->u8vector #u8(3 219) 987)
      (check-rep u8vector->sint sint->u8vector #u8(130 255) -32001)
      (check-rep u8vector->sint sint->u8vector #u8(1 37 17) 75025))

    (test-case "u8vector-every"
      (check (u8vector-every odd? #u8(1 3 5)) => #t)
      (check (u8vector-every odd? #u8(1 2 3)) => #f))

    (test-case "uint<->u8vector"
      (defrule (checks (v n a ...) ...)
        (begin (begin (check (uint->u8vector n a ...) => v)
                      (check (u8vector->uint v a ...) => n)) ...))
      (checks (#u8(1 2 3) 66051)
              (#u8(3 2 1 0) 66051 little 4)
              (#u8(104 101 108 108 111) 448378203247))
      (check (uint->u8vector 25642 big 1) => #u8(42))
      (check (uint->u8vector 25642 little 1) => #u8(42)))

    (test-case "sint<->u8vector"
      (defrule (checks (v n a ...) ...)
        (begin (begin (check (sint->u8vector n a ...) => v)
                      (check (u8vector->sint v a ...) => n)) ...))
      (checks (#u8(1 2 3) 66051)
              (#u8(3 2 1 0) 66051 little 4)
              (#u8(104 101 108 108 111) 448378203247)
              (#u8(255 1) -255)
              (#u8(254 253 253) -66051)
              (#u8(253 253 254 255) -66051 little 4))
      (check (sint->u8vector 25642 big 1) => #u8(42))
      (check (sint->u8vector 25642 little 1) => #u8(42)))
    ))
