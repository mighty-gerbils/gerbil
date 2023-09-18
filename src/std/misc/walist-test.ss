(export walist-test)

(import
  :std/error :std/misc/walist :std/test)

(def walist-test
  (test-suite "test :std/misc/walist"
    (def (test-walist-ro make a1b2)
      (check-equal? (walist-alist (a1b2)) '((a . 1) (b . 2)))
      (check-equal? {key? (a1b2) 'a} #t)
      (check-equal? {key? (a1b2) 'b} #t)
      (check-equal? {key? (a1b2) 'c} #f)
      (check-equal? {get (a1b2) 'a} 1)
      (check-equal? {get (a1b2) 'b} 2)
      (check-exception {get (a1b2) 'c} true)
      (check-equal? {assoc (a1b2) 'a} '(a . 1))
      (check-equal? {assoc (a1b2) 'b} '(b . 2))
      (check-equal? {assoc (a1b2) 'c} #f))
    (def (test-walist make)
      (def (a1b2) {acons {acons (make '()) 'b 2} 'a 1})
      (test-walist-ro make a1b2)
      (check-equal? {put (a1b2) 'a 3} (make '((a . 3) (b . 2))))
      (check-equal? {put (a1b2) 'c 3} (make '((c . 3) (a . 1) (b . 2))))
      (check-equal? {put (a1b2) 'b 4} (make '((a . 1) (b . 4))))
      (check-equal? {remove (a1b2) 'a} (make '((b . 2))))
      (check-equal? {remove (a1b2) 'b} (make '((a . 1))))
      (check-equal? {remove (a1b2) 'c} (a1b2))
      (check-equal? {remove (make '()) 'a} (make '()))
      (check-equal? {remove (make '((a . 1))) 'a} (make '())))
    (def (test-walist! make)
      (def (a1b2) (def w (make '())) {acons! w 'b 2} {acons! w 'a 1} w)
      (test-walist-ro make a1b2)
      (check-equal? (let (w (a1b2)) {put! w 'a 3} w) (make '((a . 3) (b . 2))))
      (check-equal? (let (w (a1b2)) {put! w 'c 3} w) (make '((c . 3) (a . 1) (b . 2))))
      (check-equal? (let (w (a1b2)) {put! w 'b 4} w) (make '((a . 1) (b . 4))))
      (check-equal? (let (w (a1b2)) {remove! w 'a} w) (make '((b . 2))))
      (check-equal? (let (w (a1b2)) {remove! w 'b} w) (make '((a . 1))))
      (check-equal? (let (w (a1b2)) {remove! w 'c} w) (a1b2))
      (check-equal? (let (w (make '())) {remove! w 'a} w) (make '()))
      (check-equal? (let (w (make [['a . 1]])) {remove! w 'a} w) (make '())))
    (test-case "test walist"
      (test-walist make-walist))
    (test-case "test walistq"
      (test-walist make-walistq))
    (test-case "test walistv"
      (test-walist make-walistv))
    (test-case "test walist!"
      (test-walist! make-walist!))
    (test-case "test walistq!"
      (test-walist! make-walistq!))
    (test-case "test walistv!"
      (test-walist! make-walistv!))))
