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
    (test-case "display-integer/fit positive integer with extra width"
      (check-equal? (fit 5 5) "00005"))
    (test-case "display-integer/fit 0 with extra width"
      (check-equal? (fit 0 5) "00000"))
    (test-case "display-integer/fit negative integer"
      (check-exception (fit -5 5) Error?))
    (test-case "display-integer/fit zero width"
      (check-exception (fit 7 0) Error?))
    (test-case "display-integer/fit negative width"
      (check-exception (fit 7 -1) Error?))
    (test-case "display-integer/fit positive integer perfect fit"
      (check-equal? (fit 12345 5) "12345"))
    (test-case "display-integer/fit positive integer with insufficient width"
      (check-exception (fit 123456 5) Error?))))
