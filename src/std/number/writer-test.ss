(import
  :std/error
  :std/test
  :std/number/writer)

(export writer-test)

(def (fit n width)
  (write-integer/fit #f n width))

(def writer-test
  (test-suite "test suite for std/misc/basic-printers"
    (test-case "write-integer/base"
      (check-function write-integer/base
         #f 100 16 => "64"
         #f 884 36 => "ok"))
    (test-case "write-integer/fit positive integer with extra width"
      (check (fit 3 5) => "00003"))
    (test-case "write-integer/fit 0 with extra width"
      (check (fit 0 5) => "00000"))
    (test-case "write-integer/fit negative integer"
      (check (fit -3 5) => "-0003"))
    (test-case "write-integer/fit zero width"
      (check-exception (fit 7 0) Error?))
    (test-case "write-integer/fit negative width"
      (check-exception (fit 7 -1) Error?))
    (test-case "write-integer/fit positive integer perfect fit"
      (check-equal? (fit 12345 5) "12345"))
    (test-case "write-integer/fit positive integer with insufficient width"
      (check (fit 123456 5) =>! Error?))
    (test-case "write-integer/fit base 36"
      (check (write-integer/fit #f 884 2 36) => "ok"))))
