;;; -*- Gerbil -*-
;;; © vyzo
;;; binary serde texts
(import :std/test
        :std/error
	./interface
        ./serialize
	./deserialize
        ./marshal
        ./unmarshal
        ./serde-test-support)
(export binary-serde-test)

(defsyntax-case check-marshal-unmarshal (?)
  ((_ obj)
   (syntax/loc stx
     (check (unmarshal (marshal obj)) => obj)))
  ((_ obj ? pred)
   (syntax/loc stx
     (check (unmarshal (marshal obj)) ? pred))))

(def binary-serde-test
  (test-suite "binary serde"
    (test-case "numbers"
      (check-marshal-unmarshal 1234)
      (check-marshal-unmarshal 12345678901234567890)
      (check-marshal-unmarshal -1234)
      (check-marshal-unmarshal -12345678901234567890)
      (check-marshal-unmarshal 3.333)
      (check-marshal-unmarshal -3.333)
      (check-marshal-unmarshal 1/3)
      (check-marshal-unmarshal -1/3)
      (check-marshal-unmarshal 1+3i)
      (check-marshal-unmarshal 1-3i)
      (check-marshal-unmarshal +i)
      (check-marshal-unmarshal -i)
      (check-marshal-unmarshal +inf.0)
      (check-marshal-unmarshal -inf.0)
      (check-marshal-unmarshal +nan.0 ? nan?))
    (test-case "symbolic"
      (check-marshal-unmarshal 'foo)
      (check-marshal-unmarshal foo:))
    (test-case "strings"
      (check-marshal-unmarshal "the quick brown fox jumped over the fence"))
    (test-case "lists"
      (check-marshal-unmarshal [])
      (check-marshal-unmarshal '(1 . 2))
      (check-marshal-unmarshal '(1 2 3))
      (check-marshal-unmarshal '(1 2 3 . 4)))
    (test-case "cyclic lists"
      (let (x [1 . #f])
        (check-marshal-unmarshal x)
	(set-cdr! x x)
        (check-marshal-unmarshal x)
	(set-cdr! x [2 . x])
        (check-marshal-unmarshal x)
	(set-cdr! x [x . x])
        (check-marshal-unmarshal x))
      (let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check-marshal-unmarshal x)))
    (test-case "vectors"
      (check-marshal-unmarshal '#(1 2 3))
      (let (x (vector 1 2 3))
        (vector-set! x 0 x)
        (check-marshal-unmarshal x))
      (check-marshal-unmarshal (values 1 2 3))
      (check-marshal-unmarshal '#u8(1 2 3))
      (check-marshal-unmarshal '#s8(1 2 3))
      (check-marshal-unmarshal '#u16(1 2 3))
      (check-marshal-unmarshal '#s16(1 2 3))
      (check-marshal-unmarshal '#u32(1 2 3))
      (check-marshal-unmarshal '#s32(1 2 3))
      (check-marshal-unmarshal '#u64(1 2 3))
      (check-marshal-unmarshal '#s64(1 2 3))
      (check-marshal-unmarshal '#f32(1. 2. 3.))
      (check-marshal-unmarshal '#f64(1. 2. 3.)))
    (test-case "objects"
      (let ()
	(def b (B x: 2))
	(def a (A b: b))
	(let (obj (unmarshal (marshal a)))
	  (check obj ? A?)
	  (check (A-b obj) ? B?)
	  (check (B-x (A-b obj)) => 2))))
    (test-case "cyclic objects"
      (let ()
	(def c (A b: #f))
	(set! (A-b c) c)
	(let (obj (unmarshal (marshal c)))
	  (check obj ? A?)
	  (check (A-b obj) => obj))))
    (test-case "interfaces"
      (def x (C (A b: 1)))
      (let (obj (unmarshal (marshal x)))
	(check obj ? C?)
	(check (C-foo! obj) => 1)))
    (test-case "hashes"
      (let (obj (unmarshal (marshal (hash (a 1) (b 2)))))
	(check obj ? HashTable?)
	(check (hash-length obj) => 2)
	(check (hash-ref obj 'a) => 1)
	(check (hash-ref obj 'b) => 2)))
    (test-case "dag"
      (let ()
	(def c (A b: #f))
	(set! (A-b c) c)
        (check-exception (marshal c (marshal-context dag: #t))
                         ContractViolation?)
        (let (b (marshal c))
          (check-exception (unmarshal b (unmarshal-environment dag: #t))
                           ContractViolation?))))))
