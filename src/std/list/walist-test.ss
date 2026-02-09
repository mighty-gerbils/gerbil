(export walist-test)

(import :std/test
        ./walist)

(def walist-test
  (test-suite "test :std/misc/walist"
    (def (test-walist-ro a1b2)
      (check-equal? (walist->list (a1b2)) '((a . 1) (b . 2)))
      (check-equal? (wakey? (a1b2) 'a) #t)
      (check-equal? (wakey? (a1b2) 'b) #t)
      (check-equal? (wakey? (a1b2) 'c) #f)
      (check-equal? (waget (a1b2) 'a) 1)
      (check-equal? (waget (a1b2) 'b) 2)
      (check-exception (waget (a1b2) 'c) true)
      (check-equal? (wassoc (a1b2) 'a) '(a . 1))
      (check-equal? (wassoc (a1b2) 'b) '(b . 2))
      (check-equal? (wassoc (a1b2) 'c) #f))
    (def (test-walist make)
      (def (a1b2) (wacons (wacons (make '()) 'b 2) 'a 1))
      (test-walist-ro a1b2)
      (check-equal? (class->list (waput (a1b2) 'a 3)) (class->list (make '((a . 3) (b . 2)))))
      (check-equal? (waput (a1b2) 'a 3) (make '((a . 3) (b . 2))))
      (check-equal? (waput (a1b2) 'c 3) (make '((c . 3) (a . 1) (b . 2))))
      (check-equal? (waput (a1b2) 'b 4) (make '((a . 1) (b . 4))))
      (check-equal? (waput (make '()) 'a 1) (make '((a . 1))))
      (check-equal? (waremove (a1b2) 'a) (make '((b . 2))))
      (check-equal? (waremove (a1b2) 'b) (make '((a . 1))))
      (check-equal? (waremove (a1b2) 'c) (a1b2))
      (check-equal? (waremove (make '()) 'a) (make '()))
      (check-equal? (waremove (make '((a . 1))) 'a) (make '())))
    (def (test-walist! make)
      (def (a1b2) (def w (make '())) (wacons! w 'b 2) (wacons! w 'a 1) w)
      (test-walist-ro a1b2)
      (check-equal? (let (w (a1b2)) (waput! w 'a 3) (walist->list w)) '((a . 3) (b . 2)))
      (check-equal? (let (w (a1b2)) (waput! w 'a 3) w) (make '((a . 3) (b . 2))))
      (check-equal? (let (w (a1b2)) (waput! w 'c 3) w) (make '((c . 3) (a . 1) (b . 2))))
      (check-equal? (let (w (a1b2)) (waput! w 'b 4) w) (make '((a . 1) (b . 4))))
      (check-equal? (let (w (make '())) (waput! w 'a 1) w) (make '((a . 1))))
      (check-equal? (let (w (a1b2)) (waremove! w 'a) w) (make '((b . 2))))
      (check-equal? (let (w (a1b2)) (waremove! w 'b) w) (make '((a . 1))))
      (check-equal? (let (w (a1b2)) (waremove! w 'c) w) (a1b2))
      (check-equal? (let (w (make '())) (waremove! w 'a) w) (make '()))
      (check-equal? (let (w (make [['a . 1]])) (waremove! w 'a) w) (make '())))
    (test-case "test walist"
      (test-walist walist))
    (test-case "test walistq"
      (test-walist walistq))
    (test-case "test walistv"
      (test-walist walistv))
    (test-case "test walist!"
      (test-walist! walist!))
    (test-case "test walistq!"
      (test-walist! walistq!))
    (test-case "test walistv!"
      (test-walist! walistv!))
    (test-case "walist->list, etc."
      (using (w (walistv '()) :- PureAList)
        (check (walist->list w) => '())
        (set! w.alist '((a . 1) (b . 2)))
        (check (walist->list w) => '((a . 1) (b . 2)))
        (set! w.alist '((c . 3) (d . 4)))
        (check (walist->list w) => '((c . 3) (d . 4)))))
    (test-case "walist?, etc."
      (using ((w (walist '()) :- PureAList)
              (wq! (walistq! '()) :- MutAList))
        (check (AList? w) => #t)
        (check (PureAList? w) => #t)
        (check (MutAList? w) => #f)
        (check (AList? wq!) => #t)
        (check (PureAList? wq!) => #f)
        (check (MutAList? wq!) => #t)
        ;; other stuff
        (check (PureAList? "hello world") => #f)
        (check (AList? '((a . 1) (b . 2))) => #f)
        ;; type-of
        (check (class-of w) => std/list/walist#AList::t)
        (check (class-of wq!) => std/list/walist#MutWAListq::t)
        (check (eq? (class-of w) (class-of wq!)) => #f)))))
