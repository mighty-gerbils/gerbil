(import :std/test)

(def (main)
  (check-equal? (with-output-to-string "bar" (lambda () (display "foo"))) "barfoo")
  (check-equal? (with-output-to-string (lambda () (display "foo"))) "foo")
  (check-equal? (call-with-output-string "bar" (lambda (s) (display "foo" s))) "barfoo")
  (check-equal? (call-with-output-string (lambda (s) (display "foo" s))) "foo")
  (void))
