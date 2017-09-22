(export string-test)

(import
  :std/misc/string :std/srfi/13 :std/test)

(def string-test
  (test-suite "test suffix splitting and trimming"
    (test-case "string-split-suffix match"
      (check-equal? (values->list (string-split-suffix ".c" "foo.c")) ["foo" ".c"]))
    (test-case "string-split-suffix no match"
      (check-equal? (values->list (string-split-suffix ".c" "foo")) ["foo" ""]))
    (test-case "string-trim-suffix match"
      (check-equal? (string-trim-suffix ".c" "foo.c") "foo"))
    (test-case "string-trim-suffix no match"
      (check-equal? (string-trim-suffix ".c" "foo") "foo"))
    (test-case "string-split-eol match"
      (check-equal? (values->list (string-split-eol "foo\n")) ["foo" "\n"])
      (check-equal? (values->list (string-split-eol "foo\r\n")) ["foo" "\r\n"])
      (check-equal? (values->list (string-split-eol "foo\r")) ["foo" "\r"]))
    (test-case "string-split-eol multiple match"
      (check-equal? (values->list (string-split-eol "foo\n\n\n")) ["foo\n\n" "\n"]))
    (test-case "string-split-eol no match"
      (check-equal? (values->list (string-split-eol "foo")) ["foo" ""]))
    (test-case "string-trim-eol match"
      (check-equal? (string-trim-eol "foo\n") "foo")
      (check-equal? (string-trim-eol "foo\r") "foo")
      (check-equal? (string-trim-eol "foo\r\n") "foo"))
    (test-case "string-trim-eol double match"
      (check-equal? (string-trim-eol "foo\n\n") "foo\n")
      (check-equal? (string-trim-eol "foo\r\r") "foo\r")
      (check-equal? (string-trim-eol "foo\r\n\r\n") "foo\r\n"))
    (test-case "string-trim-eol no match"
      (check-equal? (string-trim-eol "foo") "foo"))))
