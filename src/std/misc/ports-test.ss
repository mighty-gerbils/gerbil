(export ports-test)

(import
  :gerbil/gambit/exceptions
  :std/error :std/misc/ports :std/test)

(def ports-test
  (test-suite "test :std/misc/ports"
    (test-case "trivial port tests"
      (check-equal? (with-input (i "foo") (with-output (o #f) (copy-port i o))) "foo"))))
