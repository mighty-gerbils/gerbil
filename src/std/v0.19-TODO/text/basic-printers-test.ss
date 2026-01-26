(import
  :std/error
  :std/sugar
  :std/test
  :std/text/basic-printers)

(export basic-printers-test)

(def (fit n width)
  (display-integer/fit n width #f))

(def basic-printers-test
  (test-suite "test suite for std/misc/basic-printers"
    (test-case "write-n-chars"
      (check (call-with-output-string [] (cut write-n-chars 7 #\a <>)) => "aaaaaaa"))
    (test-case "display-integer/base"
      (check (display-integer/base 100 16 #f) => "64")
      (check (display-integer/base 884 36 #f) => "ok"))
    (test-case "display-integer/fit positive integer with extra width"
      (check (fit 3 5) => "00003"))
    (test-case "display-integer/fit 0 with extra width"
      (check (fit 0 5) => "00000"))
    (test-case "display-integer/fit negative integer"
      (check (fit -3 5) => "-0003"))
    (test-case "display-integer/fit zero width"
      (check-exception (fit 7 0) Error?))
    (test-case "display-integer/fit negative width"
      (check-exception (fit 7 -1) Error?))
    (test-case "display-integer/fit positive integer perfect fit"
      (check-equal? (fit 12345 5) "12345"))
    (test-case "display-integer/fit positive integer with insufficient width"
      (check-exception (fit 123456 5) Error?))
    (test-case "display-integer/fit base 36"
      (check (display-integer/fit 884 2 #f base: 36) => "ok"))))
