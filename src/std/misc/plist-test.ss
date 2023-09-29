(export plist-test)

(import
  :std/error :std/misc/plist :std/test)

(def (copy-list lst) (foldr cons '() lst))

(def plist-test
  (test-suite "test :std/misc/plist"
    (test-case "test pset!"
      (check-equal? (let (p ['a 1 'b 2]) (psetq! p 'a 3) p) ['a 3 'b 2])
      (check-equal? (let (p ['a 1 'b 2]) (psetq! p 'b 4) p) ['a 1 'b 4])
      (check-equal? (let (p ['a 1 'b 2]) (psetq! p 'c 3) p) ['c 3 'a 1 'b 2])
      (check-equal? (let (p ['a 1 'b 2]) (pgetq-set! 'a p 3) p) ['a 3 'b 2])
      (check-equal? (let (p ['a 1 'b 2]) (pgetq-set! 'b p 4) p) ['a 1 'b 4])
      (check-equal? (let (p ['a 1 'b 2]) (pgetq-set! 'c p 3) p) ['c 3 'a 1 'b 2]))
    (test-case "test prem!"
      (check-equal? (let (p ['a 1 'b 2]) (premq! 'a p) p) ['b 2])
      (check-equal? (let (p ['a 1 'b 2]) (premq! 'b p) p) ['a 1])
      (check-equal? (let (p ['a 1 'b 2]) (premq! 'c p) p) ['a 1 'b 2])
      (check-equal? (let (p []) (premq! 'a p) p) [])
      (check-exception (premq! 'a ['a 1]) contract-violation-error?))
    (test-case "test pset"
      (check-equal? (psetq ['a 1 'b 2] 'a 3) ['a 3 'b 2])
      (check-equal? (psetq ['a 1 'b 2] 'b 4) ['a 1 'b 4])
      (check-equal? (psetq ['a 1 'b 2] 'c 5) ['c 5 'a 1 'b 2]))
    (test-case "test prem"
      (check-equal? (premq 'a ['a 1 'b 2]) ['b 2])
      (check-equal? (premq 'b ['a 1 'b 2]) ['a 1])
      (check-equal? (premq 'c ['a 1 'b 2]) ['a 1 'b 2])
      (check-equal? (premq 'a []) [])
      (check-equal? (premq 'a ['a 1]) []))
    ))
