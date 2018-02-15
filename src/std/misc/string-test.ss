(export string-test)

(import
  :std/misc/string :std/srfi/13 :std/test)

(def string-test
  (test-suite "test :std/misc/string"
    (test-case "string-split-suffix"
      (check-equal? (values->list (string-split-suffix ".c" "foo.c")) ["foo" ".c"])
      (check-equal? (values->list (string-split-suffix ".c" "foo")) ["foo" ""]))
    (test-case "string-trim-suffix"
      (check-equal? (string-trim-suffix ".c" "foo.c") "foo")
      (check-equal? (string-trim-suffix ".c" "foo") "foo"))
    (test-case "string-split-eol"
      (check-equal? (values->list (string-split-eol "foo\n")) ["foo" "\n"])
      (check-equal? (values->list (string-split-eol "foo\r\n")) ["foo" "\r\n"])
      (check-equal? (values->list (string-split-eol "foo\r")) ["foo" "\r"])
      (check-equal? (values->list (string-split-eol "foo\n\n\n")) ["foo\n\n" "\n"])
      (check-equal? (values->list (string-split-eol "foo")) ["foo" ""])
      (check-equal? (string-trim-eol "foo\n") "foo")
      (check-equal? (string-trim-eol "foo\r") "foo")
      (check-equal? (string-trim-eol "foo\r\n") "foo")
      (check-equal? (string-trim-eol "foo\n\n") "foo\n")
      (check-equal? (string-trim-eol "foo\r\r") "foo\r")
      (check-equal? (string-trim-eol "foo\r\n\r\n") "foo\r\n")
      (check-equal? (string-trim-eol "foo") "foo"))))
