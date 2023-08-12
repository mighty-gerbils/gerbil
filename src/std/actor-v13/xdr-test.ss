;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/actor-v13/xdr unit-test

(import :gerbil/gambit/random
        :gerbil/gambit/os
        :std/test
        :std/net/bio
        :std/iter
        ./xdr)
(export actor-v13-xdr-test)

(def actor-v13-xdr-test
  (test-suite "test :std/actor-v13/xdr"

    (def (check-serialize obj (obj-e values))
        (let (p (open-serializer-output-buffer))
          (xdr-write obj p)
          (let (q (open-input-buffer (chunked-output-u8vector p)))
            (check (obj-e (xdr-read q)) => (obj-e obj)))))

    (def (check-serialize-opaque obj)
        (let (p (open-serializer-output-buffer))
          (xdr-write (opaque obj) p)
          (let (q (open-input-buffer (chunked-output-u8vector p)))
            (check (opaque-value (xdr-read q)) => obj))))

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
      (for (x (in-iota 10))
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
      (check-serialize (list (random-u8vector 200) (random-u8vector 200) (random-u8vector 200)))
      (check-serialize (list->hash-table '((a . 1) (b . 2) (c . 3))))
      (check-serialize (list->hash-table-eq '((a . 1) (b . 2) (c . 3))))
      (check-serialize (current-time) time->seconds)
      (check-serialize 3+5i)
      (check-serialize 3/5)
      (check-serialize '#!eof)
      (check-serialize-opaque 1))))
