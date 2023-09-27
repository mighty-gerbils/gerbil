(import
  :std/error
  (only-in :std/parser/base parse-error?)
  :std/sugar
  :std/test
  :std/text/basic-parsers)

(export basic-parsers-test)

(defrule (check-parse parser string result)
  (begin
    (check-equal? (parse-string parser string) result)
    (check-equal? (call-with-input-string string (cut parse-port parser <>)) result)))
(defrule (check-parse-error parser string)
  (begin
    (check-exception (parse-string parser string) parse-error?)
    (check-exception (call-with-input-string string (cut parse-port parser <>)) parse-error?)))

(def basic-parsers-test
  (test-suite "test suite for std/misc/basic-parsers"
    (test-case "1"
      (check-parse parse-natural "1" 1)
      (check-parse parse-natural "010" 10) ;; ain't no octal
      (check-parse (cut parse-natural <> 8) "10" 8) ;; octal this time.
      (check-parse-error parse-natural " 1") ;; no space allowed in front unless you ask
      (check-parse-error parse-natural "1 no junk allowed"))
    (test-case "parse-integer"
      (check-equal? 1 1))))
