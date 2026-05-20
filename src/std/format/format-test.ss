;;; -*- Gerbil -*-
;;; © vyzo
;;; format tests
(import :std/test
        :std/error
        :std/iter
	./api
	./io)
(export format-test print-test macro-test)

(def (make-hash-1-2)
  (let (ht (make-hash-table seed: 0 size: 2))
    (hash-put! ht 'a 1)
    (hash-put! ht 'b 2)
    ht))

(defclass A (b)
  transparent: #t)
(defclass B (x)
  transparent: #f)

(interface C
  (foo!))

(defmethod {foo! A} void)

(def format-test
  (test-suite "formating"
    (test-case "format integers"
      (check
       (format '"%a" 1234)
       =>
       "1234")
      (check
       (format '"%a" 123456789012345678901234567890)
       =>
       "123456789012345678901234567890")
      (check
       (format '"%d" 1234)
       =>
       "1234")
      (check
       (format '"%d" 123456789012345678901234567890)
       =>
       "123456789012345678901234567890")
      (check
       (format '"%x" #x1234ab)
       =>
       "#x1234ab")
      (check
       (format '"%x" #x12345ab)
       =>
       "#x012345ab")
      (check
       (format '"%X" #x1234ab)
       =>
       "1234AB")
      (check
       (format '"%X" #x12345ab)
       =>
       "012345AB")
      (check
       (format '"%b" #b1001)
       =>
       "#b1001")
      (check
       (format '"%B" #b1001)
       =>
       "1001")
      (check
       (format '"%o" #o1234)
       =>
       "#o001234")
      (check
       (format '"%O" #o1234)
       =>
       "001234")
      (check
       (format '"%o" #o1234567)
       =>
       "#o001234567")
      (check
       (format '"%O" #o1234567)
       =>
       "001234567"))
    (test-case "format flonums"
      (check
       (format '"%a" 1.0)
       => "1.")
      (check
       (format '"%a" 1.1)
       => "1.1")
      (check
       (format '"%.3g" 1.1)
       => "1.1")
      (check
       (format '"%#.3g" 1.1)
       => "1.10000")
      (check
       (format '"%6.3g" 1.1)
       => "1.1")
      (check
       (format '"%#6.3g" 1.1)
       => "1.10000"))
    (test-case "format ratnums"
      (check
       (format '"%a" 1/3)
       => "1/3")
      (check
       (format '"%a" -1/3)
       => "-1/3"))
    (test-case "format cpxnums"
      (check
       (format '"%a" 3+i)
       => "3+i")
      (check
       (format '"%a" 3-i)
       => "3-i")
      (check
       (format '"%a" 3+2i)
       => "3+2i")
      (check
       (format '"%a" 3-2i)
       => "3-2i")
      (check
       (format '"%a" +i)
       => "+i")
      (check
       (format '"%a" -i)
       => "-i"))
    (test-case "format special numbers"
      (check
       (format '"%a" +inf.0)
       =>
       "+inf.0")
      (check
       (format '"%a" -inf.0)
       =>
       "-inf.0")
      (check
       (format '"%a" +nan.0)
       =>
       "+nan.0")
      (check
       (format '"%a" -nan.0)
       =>
       "+nan.0"))
    (test-case "format symbolic"
      (check
       (format '"%a" 'foo)
       => "foo")
      (check
       (format '"%a" '|foo:bar baz|)
       => "foo:bar baz")
      (check
       (format '"%s" '|foo:bar baz|)
       => "|foo:bar baz|")
      (check
       (format '"%a" 'foo:)
       => "foo")
      (check
       (format '"%a" '|foo:bar baz|:)
       => "foo:bar baz")
      (check
       (format '"%s" 'foo:)
       => "foo:")
      (check
       (format '"%s" '|foo:bar baz|:)
       => "|foo:bar baz|:"))
    (test-case "format lists"
      (check
       (format '"%a" [1 2 3])
       => "(1 2 3)")
      (check
       (format '"%a" [1 2 3 . 4])
       => "(1 2 3 . 4)")
      (let (x [1 . #f])
	(check
	 (format '"%a" x)
	 => "(1 . #f)")
	(set-cdr! x x)
	(check
	 (format '"%a" x)
	 => "#0=(1 . #0#)")
	(set-cdr! x [2 . x])
	(check
	 (format '"%a" x)
	 => "#0=(1 2 . #0#)")
	(set-cdr! x [x . x])
	(check
	 (format '"%a" x)
	 => "#0=(1 #0# . #0#)"))
      (let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check
	 (format '"%a" y)
	 => "#0=(#1=(1 . #1#) . #0#)")))
    (test-case "format strings"
      (check
       (format '"%a" "the quick brown fox")
       => "the quick brown fox")
      (check
       (format '"%s" "the quick brown fox")
       => "\"the quick brown fox\"")
      (check
       (format '"%s" "the quick brown fox\r\n")
       => "\"the quick brown fox\\r\\n\""))
    (test-case "format vectors"
      (check
       (format '"%a" '#(a b c))
       => "#(a b c)")
      (check
       (format '"%a" (values 'a 'b 'c))
       => "#[a b c]")
      (check
       (format '"%a" '#&1)
       => "#&1")
      (check
       (format '"%a" '#u8(0 1 2 3))
       => "#u8(0 1 2 3)")
      (check
       (format '"%a" '#u16(0 1 2 3))
       => "#u16(0 1 2 3)")
      (check
       (format '"%a" '#u32(0 1 2 3))
       => "#u32(0 1 2 3)")
      (check
       (format '"%a" '#u64(0 1 2 3))
       => "#u64(0 1 2 3)")
      (check
       (format '"%a" '#s8(0 1 2 3))
       => "#s8(0 1 2 3)")
      (check
       (format '"%a" '#s16(0 1 2 3))
       => "#s16(0 1 2 3)")
      (check
       (format '"%a" '#s32(0 1 2 3))
       => "#s32(0 1 2 3)")
      (check
       (format '"%a" '#s64(0 1 2 3))
       => "#s64(0 1 2 3)")
      (check
       (format '"%a" '#f32(0.0 1.0 2.0 3.0))
       => "#f32(0. 1. 2. 3.)")
      (check
       (format '"%a" '#f64(0.0 1.0 2.0 3.0))
       => "#f64(0. 1. 2. 3.)"))
    (test-case "format objects"
      (def b (B x: 2))
      (def a (A b: b))
      (check
       (format '"%a" a)
       =>
       "#{A b: #{B}}")
      (check
       (format '"%s" a)
       =>
       "#{(A std/format/format-test#A::t) b: #{(B std/format/format-test#B::t)}}")
      (def c (A b: #f))
      (set! (A-b c) c)
      (check
       (format '"%a" c)
       =>
       "#0=#{A b: #0#}")
      (check
       (format '"%s" c)
       =>
       "#0=#{(A std/format/format-test#A::t) b: #0#}"))
    (test-case "format interface instances"
      (def a (A))
      (def c (C a))
      (check
       (format '"%s" c)
       =>
       "#{(C std/format/format-test#C::t) #{(A std/format/format-test#A::t) b: #f}}"))
    (test-case "format hashes"
      (check
       (format '"%a" (make-hash-1-2))
       => "#{HashTable #{hash-table ((a . 1) (b . 2))}}")
      (check
       (format '"%s" (make-hash-1-2))
       => "#{(HashTable gerbil/runtime/hash#HashTable::t) #{(hash-table hash-table::t) ((a . 1) (b . 2))}}"))))

(def print-test
  (test-suite "printing"
    (test-case "print lists"
      (check-output
       (printf '"%a" [1 2 3])
       "(1 2 3)")
      (check-output
       (printf '"%a" [1 2 3 . 4])
       "(1 2 3 . 4)")
      (let (x [1 . #f])
	(check-output
	 (printf '"%a" x)
	 "(1 . #f)")
	(set-cdr! x x)
	(check-output
	 (printf '"%a" x)
	 "#0=(1 . #0#)")
	(set-cdr! x [2 . x])
	(check-output
	 (printf '"%a" x)
	 "#0=(1 2 . #0#)")
	(set-cdr! x [x . x])
	(check-output
	 (printf '"%a" x)
	 "#0=(1 #0# . #0#)"))
      (let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check-output
	 (printf '"%a" y)
	 "#0=(#1=(1 . #1#) . #0#)")))))

(def macro-test
  (test-suite "formating macros"
    (test-case "format lists"
      (check
       (format "%a" [1 2 3])
       => "(1 2 3)")
      (check
       (format "%a" [1 2 3 . 4])
       => "(1 2 3 . 4)")
      (let (x [1 . #f])
	(check
	 (format "%a" x)
	 => "(1 . #f)")
	(set-cdr! x x)
	(check
	 (format "%a" x)
	 => "#0=(1 . #0#)")
	(set-cdr! x [2 . x])
	(check
	 (format "%a" x)
	 => "#0=(1 2 . #0#)")
	(set-cdr! x [x . x])
	(check
	 (format "%a" x)
	 => "#0=(1 #0# . #0#)")
	(let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check
	 (format "%a" y)
	 => "#0=(#1=(1 . #1#) . #0#)"))))
    (test-case "print lists"
      (check-output
       (printf "%a" [1 2 3])
       "(1 2 3)")
      (check-output
       (printf "%a" [1 2 3 . 4])
       "(1 2 3 . 4)")
      (let (x [1 . #f])
	(check-output
	 (printf "%a" x)
	 "(1 . #f)")
	(set-cdr! x x)
	(check-output
	 (printf "%a" x)
	 "#0=(1 . #0#)")
	(set-cdr! x [2 . x])
	(check-output
	 (printf "%a" x)
	 "#0=(1 2 . #0#)")
	(set-cdr! x [x . x])
	(check-output
	 (printf "%a" x)
	 "#0=(1 #0# . #0#)")
	(let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check-output
	 (printf "%a" y)
	 "#0=(#1=(1 . #1#) . #0#)"))))))
