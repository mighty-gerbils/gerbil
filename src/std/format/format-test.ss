;;; -*- Gerbil -*-
;;; © vyzo
;;; format tests
(import :std/test
        :std/error
        :std/iter
        :std/serde/serde-test-support
	./api
	./io)
(export format-test print-test macro-test)

(def (make-hash-1-2)
  (let (ht (make-hash-table seed: 0 size: 2))
    (hash-put! ht 'a 1)
    (hash-put! ht 'b 2)
    ht))

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
      (check (format '"%a"   1.0) => "1.")
      (check (format '"%a"   1.1) => "1.1")
      ;; %g: significant digits, trailing zeros stripped
      (check (format '"%.3g"   1.1)    => "1.1")
      (check (format '"%#.3g"  1.1)    => "1.10")
      (check (format '"%6.3g"  1.1)    => "   1.1")
      (check (format '"%#6.3g" 1.1)    => "  1.10")
      (check (format '"%.17g"  0.1)    => "0.10000000000000001")
      (check (format '"%.17g"  0.5)    => "0.5")
      ;; %f: decimal notation, precision = decimal places
      (check (format '"%f"     1.5)    => "1.500000")
      (check (format '"%.2f"   1.5)    => "1.50")
      (check (format '"%8.2f"  1.5)    => "    1.50")
      (check (format '"%-8.2f" 1.5)    => "1.50    ")
      (check (format '"%08.2f" 1.5)    => "00001.50")
      (check (format '"%.2f"   -1.5)   => "-1.50")
      (check (format '"%8.2f"  -1.5)   => "   -1.50")
      (check (format '"%08.2f" -1.5)   => "-0001.50")
      ;; %e/%E: scientific notation
      (check (format '"%.2e"   1234.5) => "1.23e+03")
      (check (format '"%.2E"   1234.5) => "1.23E+03")
      ;; negative/zero/integer flonums
      (check (format '"%a"   -1.5) => "-1.5")
      (check (format '"%a"   0.0)  => "0.")
      (check (format '"%g"   0.0)  => "0")
      (check (format '"%f"   0.0)  => "0.000000")
      ;; %+g forces explicit sign
      (check (format '"%+g"  1.5)  => "+1.5")
      (check (format '"%+g" -1.5)  => "-1.5")
      ;; field width overflow: never truncates, always extends
      (check (format '"%5.2f" 123456.0)  => "123456.00")
      (check (format '"%5g"   1234567.0) => "1.23457e+06")
      ;; %f on large numbers: integer part can be 300+ digits, buffer must accommodate
      (let (s (format '"%f" 1e300))
        (check (string-length s) => 308)  ; 301 integer digits + "." + 6 decimal digits
        (check (string-ref s 0)   => #\1)
        (check (substring s (- (string-length s) 7) (string-length s)) => ".000000")))
    (test-case "format integers with width"
      ;; right-align (default), space-pad
      (check (format '"%5d"    42)  => "   42")
      (check (format '"%5d"   -42)  => "  -42")
      (check (format '"%5d"     0)  => "    0")
      (check (format '"%5d"   100)  => "  100")   ; exact power-of-10 edge case
      (check (format '"%5d"  1000)  => " 1000")
      (check (format '"%5d" 10000)  => "10000")
      (check (format '"%5d" 99999)  => "99999")
      (check (format '"%5d" 100000) => "100000")  ; wider than field: no truncation
      ;; zero-pad
      (check (format '"%05d"    42)  => "00042")
      (check (format '"%05d"   -42)  => "-0042")
      (check (format '"%05d"     0)  => "00000")
      ;; left-align
      (check (format '"%-5d"    42)  => "42   ")
      (check (format '"%-5d"   -42)  => "-42  ")
      (check (format '"%-5d"     0)  => "0    ")
      ;; explicit sign
      (check (format '"%+d"   42)  => "+42")
      (check (format '"%+d"  -42)  => "-42")
      (check (format '"%+5d"  42)  => "  +42")
      (check (format '"%+5d" -42)  => "  -42")
      ;; hex/octal/binary with zero input
      (check (format '"%x" 0)  => "#x00")
      (check (format '"%o" 0)  => "#o000")
      (check (format '"%b" 0)  => "#b0")
      ;; bignum with width
      (check (format '"%5d" 123456789012345678901234567890)
             => "123456789012345678901234567890"))
    (test-case "format type errors"
      ;; %g/%f/%e require a flonum — exact integers are contract violations
      (check (format '"%g" 0)   =>! ContractViolation?)
      (check (format '"%g" 42)  =>! ContractViolation?)
      (check (format '"%f" 42)  =>! ContractViolation?)
      (check (format '"%e" 42)  =>! ContractViolation?)
      ;; %d/%x/%b/%o require an integer — flonums are contract violations
      (check (format '"%d" 1.5) =>! ContractViolation?)
      (check (format '"%x" 1.5) =>! ContractViolation?))
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
      (let (x (vector #f 'b 'c))
	(vector-set! x 0 x)
	(check
	 (format '"%a" x)
	 =>
	 "#0=#(#0# b c)"))
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
       "#{std/serde/serde-test-support#A::t b: #{std/serde/serde-test-support#B::t}}")
      (def c (A b: #f))
      (set! (A-b c) c)
      (check
       (format '"%a" c)
       =>
       "#0=#{A b: #0#}")
      (check
       (format '"%s" c)
       =>
       "#0=#{std/serde/serde-test-support#A::t b: #0#}"))
    (test-case "format interface instances"
      (def a (A))
      (def c (C a))
      (check
       (format '"%s" c)
       =>
       "#{std/serde/serde-test-support#C::t object: #{std/serde/serde-test-support#A::t b: #f}}"))
    (test-case "format hashes"
      (check
       (format '"%a" (make-hash-1-2))
       => "#{HashTable object: #:{hash-table::t ((b . 2) (a . 1))}}")
      (check
       (format '"%s" (make-hash-1-2))
       => "#{HashTable::t object: #:{hash-table::t ((b . 2) (a . 1))}}"))))

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
