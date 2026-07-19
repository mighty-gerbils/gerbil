(export list-builder-test)

(import
  :std/misc/list-builder :std/test)

(def (copy-list lst) (foldr cons '() lst))

(def list-builder-test
  (test-suite "test :std/misc/list-builder"
    (test-case "test with-list-builder"
      (check-equal?
       (with-list-builder (put!)
         (put! 1) (put! 2) (put! 3))
       '(1 2 3))
      (check-equal?
       (call-with-list-builder (lambda (put! _) (put! 1) (put! 2) (put! 3)))
       '(1 2 3))
      (check-equal?
       (with-list-builder (put! get-list-so-far)
         (put! 1)
         (put! 2)
         (put! (copy-list (get-list-so-far)))
         (put! 3))
       '(1 2 (1 2) 3)))))
