(import
  :std/error
  (only-in :std/parser/base parse-error?)
  :std/sugar
  :std/test
  :std/text
  :std/text/basic-parsers)

(export basic-parsers-test)

(def (check-parse parser string result)
  (check-equal? (parse-string parser string) result)
  (check-equal? (call-with-input-string (parse-port parser port) string) result))
(def (check-parse-error parser string)
  (check-exception (parse-string parser string) parse-error?)
  (check-exception (call-with-input-string (parse-port parser port) string) parse-error?))

(def basic-parsers-test
  (test-suite "test suite for std/misc/basic-parsers"
    (test-case "1"
      (check-parse parse-natural "1" 1)
      (check-parse-error parse-natural "1 "))
    (test-case "1"
      (check-equal? 1 1))))
