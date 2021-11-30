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
                       (lambda (e)
                         (pregexp-match
                          (string-append
                           "Assertion failed \"assert-test.ss\"@\\d+\\.33: \\(member e l\\)\n"
                           "  e => 'needle\n"
                           "  l => \\['stack 'of 'hay\\]\n")
                          (error-message e)))))

    (test-case "test assert! on keyword functions"
      (assert! (true 0 a: 1))
      (check-exception (assert! (false 0 a: 1))
                       (lambda (e)
                         (pregexp-match
                          "Assertion failed \"assert-test.ss\"@\\d+\\.33: \\(false 0 a: 1\\)\n"
                          (error-message e)))))))
