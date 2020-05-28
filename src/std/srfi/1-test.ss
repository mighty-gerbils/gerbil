(export 1-test)

(import :std/test
        :std/srfi/1)

(def (compare x y) (= (inexact->exact (truncate x)) y))

(def 1-test
  (test-suite "test :std/srfi/1"
   (test-case "lset="
     (check-equal?
      (lset= compare '(1.2 0.1 2.3) '(2 1 0))
      #t))))
