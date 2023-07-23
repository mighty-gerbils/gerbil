;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/text/json unit test

(import :std/test
        :std/sugar
        ./api)
(export json-test)

(defstruct foo (a b) transparent: #t)
(defmethod {:write-json foo}
  (lambda (self output)
    (with ((foo a b) self)
      (write-json (hash (a a) (b b)) output))))

(def (check-encode-decode obj str)
  (parameterize ((json-sort-keys #f))
    (check (call-with-input-string (call-with-output-string (cut write-json obj <>)) read-json)
           => obj))
  (parameterize ((json-sort-keys #t))
    (check (call-with-output-string (cut write-json obj <>)) => str)
    (check (call-with-input-string str read-json) => obj)))

(def (check-encode-decode= obj)
  (let (p (open-output-u8vector))
    (write-json obj p)
    (let (q (open-input-u8vector (get-output-u8vector p)))
      (checkf = (read-json q) obj))))

(def (check-encode-decode-number num)
  (check-encode-decode= num)
  (check-encode-decode= (- num)))

(def json-test
  (test-suite "test :std/text/json"
    (test-case "test object encoding and decoding"
      (check-encode-decode #t "true")
      (check-encode-decode #f "false")
      (check-encode-decode (void) "null")
      (check-encode-decode 0 "0")
      (for-each check-encode-decode-number
                '(1 2 3 4 5 10 20 50 101
                    0.0 0.5 1.0 1.337 2.0 3.5 1e6 1.3337e6 1.234e9))
      (for-each check-encode-decode-number
                '(10. 100. 1e3 1e4 1e5 1e6 1e7 1e8 1e9 1e10
                  .1 .01 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10))
      (check-encode-decode "a string" "\"a string\"")
      (check-encode-decode [1 2 3 [4 5] ["six" "seven"]] "[1,2,3,[4,5],[\"six\",\"seven\"]]")
      (check-encode-decode (hash-eq (a 1) (b 2) (c (hash-eq (d 3) (e 4) (f 5))))
                           "{\"a\":1,\"b\":2,\"c\":{\"d\":3,\"e\":4,\"f\":5}}")
      (parameterize ((json-symbolic-keys #f))
        (check-encode-decode (hash ("a" 1) ("b" 2) ("c" (hash ("d" 3) ("e" 4) ("f" 5))))
                             "{\"a\":1,\"b\":2,\"c\":{\"d\":3,\"e\":4,\"f\":5}}"))
      (check-encode-decode [1 2 #f #t 3] "[1,2,false,true,3]")
      (check (call-with-output-string (cut write-json (foo 23 41) <>)) => "{\"a\":23,\"b\":41}")
    )))
