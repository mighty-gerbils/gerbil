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
                          (error-message e)))))))
