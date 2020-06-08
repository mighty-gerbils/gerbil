;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/amb unit-test

(import :std/test
        :std/amb)
(export amb-test)

(def amb-test
  (test-suite "test :std/amb"
    (test-case "solve dwelling puzzle"
      (def (distinct? lst)
        (let lp ((rest lst))
          (match rest
            ([hd . rest]
             (and (not (memq hd rest))
                  (lp rest)))
            (else #t))))

      (def (solve-dwelling-puzzle)
        (begin-amb
         (let ((baker (amb 1 2 3 4 5))
               (cooper (amb 1 2 3 4 5))
               (fletcher (amb 1 2 3 4 5))
               (miller (amb 1 2 3 4 5))
               (smith (amb 1 2 3 4 5)))

           ;; They live on different floors.
           (required (distinct? (list baker cooper fletcher miller smith)))

           ;; Baker does not live on the top floor.
           (required (not (= baker 5)))

           ;; Cooper does not live on the bottom floor.
           (required (not (= cooper 1)))

           ;; Fletcher does not live on either the top or the bottom floor.
           (required (not (= fletcher 5)))
           (required (not (= fletcher 1)))

           ;; Miller lives on a higher floor than does Cooper.
           (required (> miller cooper))

           ;; Smith does not live on a floor adjacent to Fletcher's.
           (required (not (= (abs (- smith fletcher)) 1)))

           ;; Fletcher does not live on a floor adjacent to Cooper's.
           (required (not (= (abs (- fletcher cooper)) 1)))

           `((baker ,baker) (cooper ,cooper) (fletcher ,fletcher) (miller ,miller) (smith ,smith)))))

      (check (solve-dwelling-puzzle) => '((baker 3) (cooper 2) (fletcher 4) (miller 5) (smith 1))))
    (test-case "all-of"
      (def (odds<=6)
        (begin-amb
         (let (x (amb 1 2 3 4 5 6))
           (required (odd? x))
           (all-of x))))
      (check (odds<=6) => '(1 3 5))
      (check (begin-amb (all-of (amb))) => '()))
    (test-case "element-of"
      (def (even-between-1-and-3)
        (begin-amb
          (let (x (element-of '(1 2 3)))
            (required (even? x))
            x)))
      (check (even-between-1-and-3) => 2))))
