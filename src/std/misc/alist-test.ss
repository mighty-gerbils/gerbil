(export alist-test)

(import
  :std/error :std/misc/alist :std/test)

(def (copy-list lst) (foldr cons '() lst))

(def alist-test
  (test-suite "test :std/misc/alist"
    (test-case "test assq-set!"
      (check-equal? (let (a [['a . 1]['b . 2]]) (asetq! a 'a 3) a) '((a . 3) (b . 2)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (asetq! a 'b 4) a) '((a . 1) (b . 4)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (asetq! a 'c 3) a) '((c . 3) (a . 1) (b . 2)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (assq-set! 'a a 3) a) '((a . 3) (b . 2)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (assq-set! 'b a 4) a) '((a . 1) (b . 4)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (assq-set! 'c a 3) a) '((c . 3) (a . 1) (b . 2))))
    (test-case "test arem!"
      (check-equal? (let (a [['a . 1]['b . 2]]) (aremq! 'a a) a) '((b . 2)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (aremq! 'b a) a) '((a . 1)))
      (check-equal? (let (a [['a . 1]['b . 2]]) (aremq! 'c a) a) '((a . 1) (b . 2)))
      (check-equal? (let (a []) (aremq! 'a a) a) '())
      (check-exception (aremq! 'a [['a . 1]]) contract-violation-error?))
    (test-case "test aset"
      (check-equal? (asetq [['a . 1]['b . 2]] 'a 3) [['a . 3]['b . 2]])
      (check-equal? (asetq [['a . 1]['b . 2]] 'b 4) [['a . 1]['b . 4]])
      (check-equal? (asetq [['a . 1]['b . 2]] 'c 5) [['c . 5]['a . 1]['b . 2]]))
    (test-case "test arem"
      (check-equal? (aremq 'a [['a . 1]['b . 2]]) [['b . 2]])
      (check-equal? (aremq 'b [['a . 1]['b . 2]]) [['a . 1]])
      (check-equal? (aremq 'c [['a . 1]['b . 2]]) [['a . 1]['b . 2]])
      (check-equal? (aremq 'a []) [])
      (check-equal? (aremq 'a [['a . 1]]) []))
    (test-case "test acons"
      (check-equal? (acons 'a 1 [['b . 2]]) [['a . 1]['b . 2]])
      (check-equal? (acons [] [] []) [[[]]])
      (check-equal? (acons 'a 10 [['a . 1]['b . 2]]) [['a . 10]['a . 1]['b . 2]])
    )))
