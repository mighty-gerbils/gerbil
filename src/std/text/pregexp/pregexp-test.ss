(export pregexp-test)

(import
  :std/pregexp
  :std/sugar
  :std/test)

(defrules test ()
  ((_ ee rr . tt)
   (begin (check ee => 'rr) (test . tt)))
  ((_)
   (void)))

(def load void)
(def bottomline void)

(def pregexp-test
  (test-suite "test :std/pregexp"
    (test-case "pregexp-test.scm"
      (include "pregexp-test.scm"))))
