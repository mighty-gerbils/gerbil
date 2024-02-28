(import :std/iter
        :gerbil/gambit
        :gerbil/runtime/hash
        :gerbil/runtime/table)
(export main)

(extern namespace: #f time)

(def (main iters elements)
  (let ((n (string->number iters))
        (els (string->number elements)))
    (bench/equal-table n els)

    (bench/eq-table n els)
    (bench/symbolic-table n els)
    (bench/gc-table n els)

    (bench/raw-eq-table n els)
    (bench/raw-symbolic-table n els)
    (bench/raw-gc-table n els)

    (bench/gambit-equal-table n els)
    (bench/gambit-eq-table n els)
    (bench/gambit-symbol-table n els)))

(def (bench/equal-table n els)
  (run "generic hash equal? table"
       n els
       (cut make-hash-table size: <>)
       hash-get
       hash-put!
       hash-remove!))

(def (bench/eq-table n els)
  (run "specielized hash eq-table"
       n els
       (cut make-hash-table-eq size: <> seed: 0)
       hash-get
       hash-put!
       hash-remove!))

(def (bench/symbolic-table n els)
  (run "specialized hash symbolic-table"
       n els
       (cut make-hash-table-symbolic size: <>)
       hash-get
       hash-put!
       hash-remove!))

(def (bench/gc-table n els)
  (run "gc hash table"
       n els
       (cut make-hash-table-eq size: <>)
       hash-get
       hash-put!
       hash-remove!))

(def (bench/raw-eq-table n els)
  (run "raw eq-table"
       n els
       (cut make-eq-table <> 0)
       (cut eq-table-ref <> <> #f)
       eq-table-set!
       eq-table-delete!))

(def (bench/raw-symbolic-table n els)
  (run "raw symbolic-table"
       n els
       (cut make-symbolic-table <> 0)
       (cut symbolic-table-ref <> <> #f)
       symbolic-table-set!
       symbolic-table-delete!))

(def (bench/raw-gc-table n els)
  (run "raw gc table"
       n els
       make-gc-table
       (cut gc-table-ref <> <> #f)
       gc-table-set!
       gc-table-delete!))

(def (bench/gambit-equal-table n els)
  (run "gambit equal? table"
       n els
       (cut make-table size: <> test: equal?)
       (cut table-ref <> <> #f)
       table-set!
       table-set!))

(def (bench/gambit-eq-table n els)
  (run "gambit eq? table"
       n els
       (cut make-table size: <> test: eq?)
       (cut table-ref <> <> #f)
       table-set!
       table-set!))

(def (bench/gambit-symbol-table n els)
  (run "gambit symbol-hash"
       n els
       (cut make-table size: <> test: eq? hash: ##symbol-hash)
       (cut table-ref <> <> #f)
       table-set!
       table-set!))

(def (bench1 keys vals make get set delete)
  (let (tab (make (length keys)))
    (for-each
      (lambda (k v)
        (set tab k v)
        (let (vv (get tab k))
          (unless (eqv? vv  v)
            (error "bad value" key: k value: v expected: vv))))
      keys vals)))

(def (bench2 keys vals make get set delete)
  (let (tab (make (length keys)))
    (for-each (cut set tab <> <>) keys vals)
    (for-each
      (lambda (k v)
        (let (vv (get tab k))
          (unless (eqv? vv  v)
            (error "bad value" key: k value: v expected: vv))))
      keys vals)))

(def (bench3 keys vals make get set delete)
  (let (tab (make (length keys)))
    (for-each (cut set tab <> <>) keys vals)
    (for (i (in-range 10))
      (for-each
        (lambda (k v)
          (let (vv (get tab k))
            (unless (eqv? vv  v)
              (error "bad value" key: k value: v expected: vv))))
        keys vals))))

(def (run name n els make ref set delete)
  (let* ((vals (iota els))
         (keys (map (cut make-symbol "key" <>) vals)))
    (displayln "============================================================")
    (displayln "target: " name)
    (displayln "------------------------------------------------------------")
    (displayln "set+get")
        (displayln "------------------------------------------------------------")
    (##gc)
    (time (run-it n (cut bench1 keys vals make ref set delete)))
    (displayln "------------------------------------------------------------")
    (displayln "set,get")
    (displayln "------------------------------------------------------------")
    (##gc)
    (time (run-it n (cut bench2 keys vals make ref set delete)))
    (displayln "------------------------------------------------------------")
    (displayln "set,get*")
    (displayln "------------------------------------------------------------")
    (##gc)
    (time (run-it n (cut bench3 keys vals make ref set delete)))
    ))

(def (run-it n bench)
  (for (i (in-range n))
    (bench)))
