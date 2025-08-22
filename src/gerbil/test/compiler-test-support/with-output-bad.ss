;; Too many arguments for the declared type, will reject.
(with-output-to-string "bar" "baz" (lambda () (display "foo")))
