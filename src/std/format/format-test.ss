;;; -*- Gerbil -*-
;;; © vyzo
;;; format tests
(import :std/test
        :std/error
        :std/iter
        :std/serde/serde-test-support
	./api
	./io)
(export format-test printf-test)

(def (make-hash-1-2)
  (let (ht (make-hash-table seed: 0 size: 2))
    (hash-put! ht 'a 1)
    (hash-put! ht 'b 2)
    ht))

(defrule (check-format x ...)
  (multicheck (... (((fmt args ... => res)
                     (begin
                       (check (format 'fmt args ...) => res)
                       (check (format fmt args ...) => res)))
                    ((fmt args ... =>! pred)
                     (begin
                       (check (format 'fmt args ...) =>! pred)
                       (check (format fmt args ...) =>! pred)))))
    x ...))

(defrule (check-printf x ...)
  (multicheck (... (((fmt args ... => res)
                     (begin
                       (check-output (printf 'fmt args ...) res)
                       (check-output (printf fmt args ...) res)))))
    x ...))

(def format-test
  (test-suite "formating"
    (test-case "format integers"
      (check-format
        ;; decimal
        "%a" 1234   => "1234"
        "%a" 123456789012345678901234567890 => "123456789012345678901234567890"
        "%d" 1234   => "1234"
        "%d" -42    => "-42"
        "%d" 123456789012345678901234567890 => "123456789012345678901234567890"
        ;; hex lowercase (%x) / uppercase (%X): no auto-prefix
        "%x" #x1234ab  => "1234ab"
        "%x" 0         => "0"
        "%x" -42       => "-2a"
        "%X" #x1234ab  => "1234AB"
        "%X" 0         => "0"
        "%X" -42       => "-2A"
        ;; # flag: Scheme-style prefix (#x/#o/#b); %#X prefix is still lowercase #x
        "%#x" #x1234ab => "#x1234ab"
        "%#x" -42      => "#x-2a"
        "%#x" 0        => "#x0"
        "%#X" 42       => "#x2A"
        "%#o" 8        => "#o10"
        "%#o" 0        => "#o0"
        "%#b" -9       => "#b-1001"
        "%#b" 0        => "#b0"
        "%#d" 42       => "42"   ; no prefix for decimal
        ;; binary (%b/%B): no auto-prefix or grouping
        "%b" #b1001 => "1001"
        "%b" 0      => "0"
        "%b" -9     => "-1001"
        "%B" #b1001 => "1001"
        "%B" -9     => "-1001"
        ;; octal (%o/%O): no auto-prefix or grouping
        "%o" #o1234    => "1234"
        "%o" #o1234567 => "1234567"
        "%o" 0         => "0"
        "%o" -8        => "-10"
        "%O" #o1234    => "1234"
        "%O" #o1234567 => "1234567"
        "%O" -8        => "-10"))
    (test-case "format flonums"
      (check-format
        "%a"   1.0 => "1."
        "%a"   1.1 => "1.1"
        ;; %g: significant digits, trailing zeros stripped; %#g: keep trailing zeros
        "%.3g"   1.1    => "1.1"
        "%#.3g"  1.1    => "1.10"
        "%6.3g"  1.1    => "   1.1"
        "%#6.3g" 1.1    => "  1.10"
        "%.17g"  0.1    => "0.10000000000000001"
        "%.17g"  0.5    => "0.5"
        ;; %f: decimal notation, precision = decimal places
        "%f"     1.5    => "1.500000"
        "%.2f"   1.5    => "1.50"
        "%8.2f"  1.5    => "    1.50"
        "%-8.2f" 1.5    => "1.50    "
        "%08.2f" 1.5    => "00001.50"
        "%.2f"   -1.5   => "-1.50"
        "%8.2f"  -1.5   => "   -1.50"
        "%08.2f" -1.5   => "-0001.50"
        ;; %e/%E: scientific notation
        "%.2e"   1234.5 => "1.23e+03"
        "%.2E"   1234.5 => "1.23E+03"
        ;; negative/zero/integer flonums
        "%a"   -1.5 => "-1.5"
        "%a"   0.0  => "0."
        "%g"   0.0  => "0"
        "%f"   0.0  => "0.000000"
        ;; %+g forces explicit sign
        "%+g"  1.5  => "+1.5"
        "%+g" -1.5  => "-1.5"
        ;; field width overflow: never truncates, always extends
        "%5.2f" 123456.0  => "123456.00"
        "%5g"   1234567.0 => "1.23457e+06")
        ;; %f on large numbers: integer part can be 300+ digits, buffer must accommodate
      (let (s (format '"%f" 1e300))
        (check (string-length s) => 308)  ; 301 integer digits + "." + 6 decimal digits
        (check (string-ref s 0)   => #\1)
        (check (substring s (- (string-length s) 7) (string-length s)) => ".000000")))
    (test-case "format integers with width"
      (check-format
        ;; right-align (default), space-pad
        "%5d"    42  => "   42"
        "%5d"   -42  => "  -42"
        "%5d"     0  => "    0"
        "%5d"   100  => "  100"   ; exact power-of-10 edge case
        "%5d"  1000  => " 1000"
        "%5d" 10000  => "10000"
        "%5d" 99999  => "99999"
        "%5d" 100000 => "100000"  ; wider than field: no truncation
        ;; zero-pad
        "%05d"    42  => "00042"
        "%05d"   -42  => "-0042"
        "%05d"     0  => "00000"
        ;; left-align
        "%-5d"    42  => "42   "
        "%-5d"   -42  => "-42  "
        "%-5d"     0  => "0    "
        ;; explicit sign
        "%+d"   42  => "+42"
        "%+d"  -42  => "-42"
        "%+5d"  42  => "  +42"
        "%+5d" -42  => "  -42"
        ;; hex and octal with width and zero-pad
        "%8x"  #x12345ab => " 12345ab"
        "%08x" #x12345ab => "012345ab"
        "%5x"  0         => "    0"
        "%05x" 0         => "00000"
        "%5o"  0         => "    0"
        "%05o" 0         => "00000"
        "%b"   0         => "0"
        ;; bignum with width
        "%5d" 123456789012345678901234567890 => "123456789012345678901234567890"))
    (test-case "format integer precision (min-digits)"
      (check-format
        ;; %.N = minimum N digits; sign not counted
        "%.6x"   42  => "00002a"
        "%.6x"  -42  => "-00002a"
        "%.6d"   42  => "000042"
        "%.6d"    0  => "000000"
        ;; precision suppresses zero-pad flag
        "%0.6x"  42  => "00002a"
        ;; width + precision
        "%8.6x"  42  => "  00002a"
        "%-8.6x" 42  => "00002a  "
        ;; # flag + precision; prefix (2 chars) counts toward total width
        "%#0.2x"  0  => "#x00"
        "%#.6x"  42  => "#x00002a"
        "%#8.6x" 42  => "#x00002a"
        "%#9.6x" 42  => " #x00002a"))
    (test-case "format type errors"
      ;; %g/%f/%e require a flonum — exact integers are contract violations
      (check-format
       "%g" 0   =>! ContractViolation?
       "%g" 42  =>! ContractViolation?
       "%f" 42  =>! ContractViolation?
       "%e" 42  =>! ContractViolation?
       ;; %d/%x/%b/%o require an integer — flonums are contract violations
       "%d" 1.5 =>! ContractViolation?
       "%x" 1.5 =>! ContractViolation?))
    (test-case "format ratnums"
      (check-format
        "%a" 1/3  => "1/3"
        "%a" -1/3 => "-1/3"))
    (test-case "format cpxnums"
      (check-format
        "%a" 3+i  => "3+i"
        "%a" 3-i  => "3-i"
        "%a" 3+2i => "3+2i"
        "%a" 3-2i => "3-2i"
        "%a" +i   => "+i"
        "%a" -i   => "-i"))
    (test-case "format special numbers"
      (check-format
        "%a" +inf.0 => "+inf.0"
        "%a" -inf.0 => "-inf.0"
        "%a" +nan.0 => "+nan.0"
        "%a" -nan.0 => "+nan.0"))
    (test-case "format symbolic"
      (check-format
        "%a" 'foo            => "foo"
        "%a" '|foo:bar baz|  => "foo:bar baz"
        "%s" '|foo:bar baz|  => "|foo:bar baz|"
        "%a" 'foo:           => "foo"
        "%a" '|foo:bar baz|: => "foo:bar baz"
        "%s" 'foo:           => "foo:"
        "%s" '|foo:bar baz|: => "|foo:bar baz|:"))
    (test-case "format lists"
      (check-format
        "%a" [1 2 3]     => "(1 2 3)"
        "%a" [1 2 3 . 4] => "(1 2 3 . 4)")
      (let (x [1 . #f])
	(check-format "%a" x => "(1 . #f)")
	(set-cdr! x x)
	(check-format "%a" x => "#0=(1 . #0#)")
	(set-cdr! x [2 . x])
	(check-format "%a" x => "#0=(1 2 . #0#)")
	(set-cdr! x [x . x])
	(check-format "%a" x => "#0=(1 #0# . #0#)"))
      (let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check-format "%a" y => "#0=(#1=(1 . #1#) . #0#)")))
    (test-case "format strings"
      (check-format
        "%a" "the quick brown fox"       => "the quick brown fox"
        "%s" "the quick brown fox"       => "\"the quick brown fox\""
        "%w" "the quick brown fox"       => "\"the quick brown fox\""
        "%s" "the quick brown fox\r\n"   => "\"the quick brown fox\\r\\n\""))
    (test-case "format vectors"
      (check-format "%a" '#(a b c) => "#(a b c)")
      (let (x (vector #f 'b 'c))
	(vector-set! x 0 x)
	(check-format "%a" x => "#0=#(#0# b c)"))
      (check-format
        "%a" (values 'a 'b 'c)      => "#[a b c]"
        "%a" '#&1                   => "#&1"
        "%a" '#u8(0 1 2 3)          => "#u8(0 1 2 3)"
        "%a" '#u16(0 1 2 3)         => "#u16(0 1 2 3)"
        "%a" '#u32(0 1 2 3)         => "#u32(0 1 2 3)"
        "%a" '#u64(0 1 2 3)         => "#u64(0 1 2 3)"
        "%a" '#s8(0 1 2 3)          => "#s8(0 1 2 3)"
        "%a" '#s16(0 1 2 3)         => "#s16(0 1 2 3)"
        "%a" '#s32(0 1 2 3)         => "#s32(0 1 2 3)"
        "%a" '#s64(0 1 2 3)         => "#s64(0 1 2 3)"
        "%a" '#f32(0.0 1.0 2.0 3.0) => "#f32(0. 1. 2. 3.)"
        "%a" '#f64(0.0 1.0 2.0 3.0) => "#f64(0. 1. 2. 3.)")
    (test-case "format objects"
      (def b (B x: 2))
      (def a (A b: b))
      (check-format
        "%a" a => "#{A b: #{B}}"
        "%s" a => "#{std/serde/serde-test-support#A::t b: #{std/serde/serde-test-support#B::t}}")
      (def c (A b: #f))
      (set! (A-b c) c)
      (check-format
        "%a" c => "#0=#{A b: #0#}"
        "%s" c => "#0=#{std/serde/serde-test-support#A::t b: #0#}"))
    (test-case "format interface instances"
      (def a (A))
      (def c (C a))
      (check-format
        "%s" c => "#{std/serde/serde-test-support#C::t object: #{std/serde/serde-test-support#A::t b: #f}}"))
    (test-case "format hashes"
      (check-format
        "%a" (make-hash-1-2) => "#{HashTable object: #:{hash-table::t ((b . 2) (a . 1))}}"
        "%s" (make-hash-1-2) => "#{HashTable::t object: #:{hash-table::t ((b . 2) (a . 1))}}")))))

(def printf-test
  (test-suite "printing"
    (test-case "print lists"
      (check-printf
        "%a" [1 2 3] => "(1 2 3)"
        "%a" [1 2 3 . 4] => "(1 2 3 . 4)")
      (let (x [1 . #f])
	(check-printf "%a" x => "(1 . #f)")
	(set-cdr! x x)
	(check-printf "%a" x => "#0=(1 . #0#)")
	(set-cdr! x [2 . x])
	(check-printf "%a" x => "#0=(1 2 . #0#)")
	(set-cdr! x [x . x])
	(check-printf "%a" x => "#0=(1 #0# . #0#)"))
      (let ((x [1 . #f])
	    (y [#f . #f]))
	(set-cdr! x x)
	(set-cdr! y y)
	(set-car! y x)
	(check-printf "%a" y => "#0=(#1=(1 . #1#) . #0#)")))))
