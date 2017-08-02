;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/text/json unit test

(import :std/test
        :std/text/json
        :std/sugar)
(export json-test)

(def json-test
  (test-suite "test :std/text/json"

    (def (check-encode-decode obj)
      (let (p (open-output-u8vector))
        (write-json obj p)
        (let (q (open-input-u8vector (get-output-u8vector p)))
          (check (read-json q) => obj))))

    (def (check-encode-decode-number num)
      (check-encode-decode num)
      (check-encode-decode (- num)))

    (test-case "test object encoding and decoding"
      (check-encode-decode #t)
      (check-encode-decode #f)
      (check-encode-decode (void))
      (check-encode-decode 0)
      (for-each check-encode-decode-number
                '(1 2 3 4 5 10 20 50 101
                    0.0 0.5 1.0 1.337 2.0 3.5 1e6 1.3337e6 1.234e9))
      (check-encode-decode "a string")
      (check-encode-decode [1 2 3 [4 5] ["six" "seven"]])
      (check-encode-decode (hash-eq (a 1) (b 2) (c (hash-eq (d 3) (e 4) (f 5)))))
      (parameterize ((json-symbolic-keys #f))
        (check-encode-decode (hash ("a" 1) ("b" 2) ("c" (hash ("d" 3) ("e" 4) ("f" 5)))))))
    ))
