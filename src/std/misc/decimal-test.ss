(export decimal-test)

(import
  :std/srfi/13
  :std/iter
  :std/misc/decimal
  :std/misc/string
  :std/parser/base
  (only-in :std/error ContractViolation?)
  (only-in :std/sugar defrule)
  (only-in :std/text/char-set char-ascii-alphabetic?)
  (only-in :std/test test-suite test-case check check-exception))

(def decimal-test
  (test-suite "test suite for std/misc/decimal"
    (test-case "power-of-5?"
      (for (i (in-range 1000))
        (check (power-of-5? (expt 5 i)) => i)
        (check (power-of-5? (1- (expt 5 i))) => #f)
        (check (power-of-5? (1+ (expt 5 i))) => #f))
      (check (power-of-5? (* (expt 2 2000) (expt 5 880))) => #f)
      (check (power-of-5? (* 256 (expt 5 4400))) => #f))
    (test-case "decimal?"
      (defrule (checks res val ...)
        (begin (check (decimal? val) => res) ...))
      (checks #t 0 1 -5 42 1/10 1/4 -1/5 3/125 1/1000)
      (checks #f 0.0 'foo "1" -1.2 +inf.0 1/42 .001 #() (void) '()))
    (test-case "parse decimal"
      (defrule (checks (res str . opts) ...)
        (begin (check (string->decimal str . opts) => res) ...))
      (checks
       (0 "0")
       (0 "0.0")
       (0 "0.")
       (0 ".0")
       ((/ (expt 10 100)) (string-append "." (make-string 99 #\0) "1"))
       ((/ (expt 10 1000)) (string-append "." (make-string 999 #\0) "1"))
       (157/50 "3.14")
       (157/50 "+3.14")
       (-157/50 "-3.14")
       (317000 "317000")
       (1234/1000 "1,234" decimal-mark: #\,)
       (1234567890 "1,234,567,890" group-separator: #t)
       (1234567890 "1.234.567.890" group-separator: #\. decimal-mark: #f)
       (1234/1000 "1234e-3" decimal-mark: #f exponent-allowed: #t)
       (1234567890123/1000 "1.234.567.890,123" group-separator: #\. decimal-mark: #\,)
       (3170000 "3.17e6" exponent-allowed: #t)
       (317/100000000 "3.17e-6" exponent-allowed: #t)
       (317/100000000 "3.17e-6" exponent-allowed: #t sign-allowed?: #f)
       (-317/100000000 "-3.17e-6" exponent-allowed: #t)
       (157/50 "  3.14  " allow-leading-whitespace?: #t allow-trailing-whitespace?: #t)
       (157/50 "PI3.14JUNK"
               allow-leading-whitespace?: char-ascii-alphabetic?
               allow-trailing-whitespace?: char-ascii-alphabetic?)))
    (test-case "parse decimal error"
      (defrule (checks (err str . opts) ...)
        (begin (check-exception (string->decimal str . opts) err) ...))
      (checks
       (parse-error? ".")
       (parse-error? "+3.17" sign-allowed?: #f)
       (parse-error? "-3.17" sign-allowed?: #f)
       (parse-error? " 1.0")
       (parse-error? "1.0 ")
       (parse-error? "1.234.567")
       (parse-error? "1,234,567,890")
       (ContractViolation? "1" group-separator: #\.)
       (parse-error? "1,234,567,890" decimal-mark: #\,)
       (parse-error? "1,234,567,890" group-separator: #f)
       (parse-error? "3.17e6") ;; exponent not allowed by default
       (parse-error? "3.17e" exponent-allowed: #t)
       (parse-error? "-3.17e-6" exponent-allowed: #t sign-allowed?: #f)
       (parse-error? "-")))
    (test-case "count-significant-digits"
      (defrule (checks res val ...) (begin (check (count-significant-digits val) => res) ...))
      (checks 1 0 1 2 3 4 5 6 7 8 9)
      (checks 2 10 11 42 69 98 99)
      (checks 3 100 101 128 256 512 666 998 999)
      (checks 4 1000 1001 1024 1729 8192 9998 9999)
      (checks 5 10000 10001 55555 99999)
      (for (i (in-range 1000))
        (unless (zero? i) (check (count-significant-digits (1- (expt 10 i))) => i))
        (check (count-significant-digits (expt 10 i)) => (1+ i))))
    (test-case "find-decimal-multiplier"
      (defrule (checks (d c m) ...)
        (begin (check (values->list (find-decimal-multiplier d)) => [c m]) ...))
      (checks (5 2 1) (2 5 1) (12500 8 5)))
    (test-case "decimal->digits-exponent, digits-exponent->decimal"
      (defrule (checks (n d e) ...)
        (begin (check (values->list (decimal->digits-exponent n)) => [d e]) ...
               (check (digits-exponent->decimal d e) => n) ...))
      (checks (0 0 0) (1 1 0) (1/1000 1 -3) (1000 1 3)
              (314 314 0) (157/50 314 -2) (31400 314 2)
              (123400000 1234 5) (1234/100000000 1234 -8)))
    (test-case "print decimal"
      (defrule (checks (s d . a) ...)
        (begin (check (decimal->string d . a) => s) ...))
      (checks
       ("0" 0)
       ("1000" 1000)
       ("3.14" 157/50)
       ("42." 42 always-decimal?: #t)
       ("1.0" 1 fractional-digits: 1)
       ("007" 7 width: 3 pad: #\0)
       ("10" 10 width: 2 pad: #\0) ;; <--- known bug; the original ported code always assumed a .
       ("10" 10 integral-digits: 2)
       ("0010" 10 integral-digits: 4)
       ("+317000" 317000 always-sign?: #t)
       ("-.00000317" -317/100000000 integral-digits: 0)
       ("-0.00000317" -317/100000000 integral-digits: 1)
       ("-.00000317" -317 scale: -8)
       ("31.700" 317 scale: -1 fractional-digits: 3)
       (".31" 317 scale: -3 width: 3 precision-loss-behavior: 'truncate)
       (".32" 317 scale: -3 width: 3 precision-loss-behavior: 'round)
       ("3.14" 314 scale: -2)
       ("               3.140" 314 width: 20 scale: -2 fractional-digits: 3)
       ("  3.14" 314/1000 width: 6 scale: 1 fractional-digits: 2)
       (".314" 314/1000)))
    (test-case "print decimal error"
      (check-exception (decimal->string 317/100 width: 3) LossOfPrecision?))))
