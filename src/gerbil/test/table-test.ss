(import :std/test
        :std/iter
        :gerbil/runtime/table)
(export table-test)

(def table-test
  (test-suite "raw-table"
    (test-case "basic ops"
      (let (h (make-raw-table #f eq-hash eq?))
        (for ((k '(a b c d e f g))
              (v (in-naturals)))
          (raw-table-set! h k v)
          (check (raw-table-ref h k #f) => v))
        (for ((k '(a b c d e f g))
              (v (in-naturals)))
          (check (raw-table-ref h k #f) => v))
        (for (k '(a b c d e f g))
          (raw-table-delete! h k)
          (check (raw-table-ref h k #f) => #f))))
    (test-case "rehashing"
      (let (h (make-raw-table #f eq-hash eq?))
        (for (x (iota 200))
          (raw-table-set! h x x))
        (for (x (iota 200))
          (check (raw-table-ref h x #f) => x))))
    (test-case "put/remove interleaving"
      (let (h (make-raw-table #f eq-hash eq?))
        (for (x (iota 200))
          (raw-table-set! h x x))
        (for (x (iota 200))
          (check (raw-table-ref h x #f) => x))
        (for (x (iota 100))
          (raw-table-delete! h x))
        (for (x (iota 100 100))
          (check (raw-table-ref h x #f) => x))
        (for (x (iota 100))
          (raw-table-set! h x x))
        (for (x (iota 200))
          (check (raw-table-ref h x #f) => x))))))
