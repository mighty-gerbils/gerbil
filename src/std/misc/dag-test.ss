(export dag-test)

(import
  :std/sugar
  :std/test
  ./dag)

(def dag-test
  (test-suite "test :std/misc/dag"
    (test-case "walk-dag"
      (def operators (hash (+ +) (* *) (- -) (/ /)))
      (def (simple-eval expr)
        (walk-dag
         (cut <> expr)
         arrows:
         (lambda (x) (if (pair? x) (cdr x) []))
         synthetic-attribute:
         (lambda (expr _subexpr values)
           (cond
            ((and (pair? expr) (hash-get operators (car expr))) =>
             (cut apply <> values))
            ((number? expr) expr)
            (else (error "invalid expression" expr))))))
      (check (simple-eval '(- (* (+ (* 4 5) (/ 18 3)) 2) 10)) => 42))))
