(export values-test)

(import :std/test
        :std/values
        :std/sugar)

(def values-test
  (test-suite "test :std/values"
    (def (f) (values 1 2 3 4 5 6))
    (test-case "first-value second-value nth-value"
      (check (first-value (f)) => 1)
      (check (second-value (f)) => 2)
      (check (nth-value 0 (f)) => 1)
      (check (nth-value 1 (f)) => 2)
      (check (nth-value 2 (f)) => 3)
      (check (nth-value 3 (f)) => 4)
      (check (nth-value 4 (f)) => 5)
      (check (nth-value 5 (f)) => 6)
      (check (call-with-values f first-value) => 1)
      (check (call-with-values f second-value) => 2)
      (check (first-value 42) => 42)
      (check-exception (first-value (values)) true)
      (check-exception (second-value 3) true)
      (check-exception (nth-value 8 (f)) true))
    (test-case "values<->vector values<->list values<->cons"
      (defrule (checks (obj vals vals-> ->vals) ...)
        (begin (begin (check (vals-> vals) => obj)
                      (check (vals-> (->vals obj)) => obj)) ...))
      (checks (#(1 2 3 4 5 6) (f) values->vector vector->values)
              ('(1 2 3 4 5 6) (f) values->list list->values)
              ('(1 . 2) (values 1 2) values->cons cons->values)
              ('(a b c d) (values 'a '(b c d)) values->cons cons->values)))))
