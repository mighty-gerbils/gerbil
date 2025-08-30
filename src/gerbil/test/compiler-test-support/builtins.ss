(import :std/test)

;; TODO: support each case of each builtin call shape. Maybe get them generated with Claude Code?

(def (main)
  (check-equal? (with-output-to-string "bar" (lambda () (display "foo"))) "barfoo")
  (check-equal? (with-output-to-string (lambda () (display "foo"))) "foo")
  (check-equal? (call-with-output-string "bar" (lambda (s) (display "foo" s))) "barfoo")
  (check-equal? (call-with-output-string (lambda (s) (display "foo" s))) "foo")
  (void))
