(export assert-test)
(import :std/test
        :std/assert
        :std/pregexp)

(def assert-test
  (test-suite "test :std/assert"
    (test-case "test assert! failure message"
      (def e 'needle)
      (def l ['stack 'of 'hay])
      (check-exception (assert! (member e l))
                       (lambda (e) (string-prefix? "Assertion failed" (error-message e))))

    (test-case "test assert! on keyword functions"
      (assert! (true 0 a: 1))
      (check-exception (assert! (false 0 a: 1))
                       (lambda (e)
                         (string-prefix? "Assertion failed" (error-message e))))))))
