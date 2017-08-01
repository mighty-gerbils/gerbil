;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/actor/xdr unit-test

(import :gerbil/gambit/random
        :std/test
        :std/actor/xdr
        :std/iter)
(export actor-xdr-test)

(def actor-xdr-test
  (test-suite "test :std/actor/xdr serialization"

    (def (check-serialize obj)
        (let (p (open-output-u8vector))
          (xdr-write-object obj p)
          (let (q (open-input-u8vector (get-output-u8vector p)))
            (check (xdr-read-object q) => obj))))

    (test-case "test primitive object serialization"
      ;; primitive objects
      (check-serialize #!void)
      (check-serialize #f)
      (check-serialize #t)
      (check-serialize '())
      (check-serialize 'a)
      (check-serialize 'b)
      (check-serialize 'c)
      (check-serialize '(a . b))
      (check-serialize '(a b c))
      (for (x (in-range 10))
        (let* ((base (expt 10 x))
               (int (+ base (random-integer base))))
          (check-serialize x)
          (check-serialize (- x))
          (check-serialize base)
          (check-serialize (- base))
          (check-serialize int)
          (check-serialize (- int))))
      (for-each check-serialize
                '(1.0 -1.0 3.5 -3.5 100.234 -100.234 1.234e6 -1.234e6
                      +inf.0 -inf.0))
      (check-serialize 'a-symbol)
      (check-serialize a-keyword:)
      (check-serialize "a string")
      (check-serialize (values 1 2 3))
      (check-serialize '#u8(127 0 0 1))
      (check-serialize '(#u8(127 0 0 1) . 8080))
      (check-serialize (random-u8vector 1000))
      (check-serialize (list->hash-table '((a . 1) (b . 2) (c . 3))))
      (check-serialize (list->hash-table-eq '((a . 1) (b . 2) (c . 3))))
      ;; opaque
      (check-serialize '#!key)
      (check-serialize '#!eof)
      (check-serialize 3+5i)
      )
    ))
