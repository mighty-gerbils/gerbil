;;; -*- Gerbil -*-
;;; © vyzo at hackzen.org
;;; :std/text/json unit test

(import :std/io
        :std/misc/walist
        :std/misc/hash
        :std/misc/ports
        :std/parser/base
        :std/sugar
        :std/test
        :std/text/utf8
        ./api)
(export json-test)

(defstruct foo (a b) transparent: #t)
(defmethod {:write-json foo}
  (lambda (self output)
    (with ((foo a b) self)
      (write-json (hash (a a) (b b)) output))))

(def (check-encode-decode obj str)
  (let (eqf (if (hash-table? obj) equal-hash? equal?))
    (parameterize ((json-sort-keys #f))
      (check (string->json-object (json-object->string obj)) => obj :: eqf))

    (parameterize ((json-sort-keys #t))
      (check (json-object->string obj) => str)
      (check (string->json-object str) => obj :: eqf))))

(def (check-encode-decode/ordered obj str)
  (parameterize ((json-sort-keys #f) (json-object-walist? #t))
    (check (json-object->string obj) => str)
    (check (string->json-object str) => obj)))

(def (check-pretty obj str . options)
  (let (eqf (if (hash-table? obj) equal-hash? equal?))
    (check (with-output (out #f) (apply pretty-json obj out options)) => str)
    (check (string->json-object str) => obj :: eqf)))

(def (check-encode-decode= obj)
  (checkf = (string->json-object (json-object->string obj)) obj))

(def (check-encode-decode-number num)
  (check-encode-decode= num)
  (check-encode-decode= (- num)))

(def (check-encode obj str)
  (check (json-object->string obj) => str))

(def json-test
  (test-suite "json encoding and decoding"
    (test-case "basic object encoding and decoding"
      (check-encode-decode #t "true")
      (check-encode-decode #f "false")
      (check-encode-decode (void) "null")
      (check-encode-decode 0 "0")
      (for-each check-encode-decode-number
                '(1 2 3 4 5 10 20 50 101
                    0.0 0.5 1.0 1.337 2.0 3.5 1e6 1.3337e6 1.234e9
                    10. 100. 1e3 1e4 1e5 1e6 1e7 1e8 1e9 1e10
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
      (check-exception (string->json-object "true junk") parse-error?)
      (def my-obj (hash (obj0 (hash)) (l3 [1 2 3]) (obj1 (hash (name "John Doe") (age 33)))))
      #;(check-pretty my-obj
                    "{\"l3\":\n  [1,\n   2,\n   3],\n \"obj0\": {},\n \"obj1\":\n  {\"age\": 33,\n   \"name\": \"John doe\"}}\n"
                      sort-keys?: #t
                      lisp-style?: #t)
      (check-pretty my-obj #<<END
{
  "l3": [
    1,
    2,
    3
  ],
  "obj0": {},
  "obj1": {
    "age": 33,
    "name": "John Doe"
  }
}

END
       ))
    (test-case "encoding and decoding with walist"
      (check-encode-decode/ordered (walistq '((d . 41) (c . 23))) "{\"d\":41,\"c\":23}")
      (check-encode (walistq '((d . 41) (c . 23))) "{\"d\":41,\"c\":23}")
      (def my-obj (walistq [['obj0 :: (walistq '())]
                            ['l3 :: [1 2 3]]
                            ['obj1 :: (walistq [['name . "John Doe"]
                                                ['age . 33]])]]))
      (parameterize ((json-sort-keys #f) (json-object-walist? #t))
        (check-pretty my-obj #<<END
{"obj0": {},
 "l3":
  [1,
   2,
   3],
 "obj1":
  {"name": "John Doe",
   "age": 33}}

END
                      lisp-style?: #t)
        (check-pretty my-obj #<<END
{
  "obj0": {},
  "l3": [
    1,
    2,
    3
  ],
  "obj1": {
    "name": "John Doe",
    "age": 33
  }
}

END
                      )))
    (test-case "io zoo"
      (def obj (hash-eq (a 1) (b 2) (c (hash-eq (d 3) (e 4) (f 5)))))
      (def str "{\"a\":1,\"b\":2,\"c\":{\"d\":3,\"e\":4,\"f\":5}}")

      (check (call-with-output-string "" (cut write-json obj <>)) => str)
      (check (call-with-input-string str read-json) => obj :: equal-hash?)

      (check (do-with-buffered-string-writer (cut write-json obj <>)) => str)
      (check (do-with-buffered-string-reader str read-json) => obj :: equal-hash?)

      (check (do-with-buffered-writer (cut write-json obj <>)) => str)
      (check (do-with-buffered-reader str read-json) => obj :: equal-hash?))))

(def (do-with-buffered-writer proc)
  (let (buf (open-buffered-writer #f))
    (proc buf)
    (utf8->string (get-buffer-output-u8vector buf))))

(def (do-with-buffered-reader str proc)
  (let (buf (open-buffered-reader (string->utf8 str)))
    (proc buf)))

(def (do-with-buffered-string-writer proc)
  (let (buf (open-buffered-string-writer #f))
    (proc buf)
    (get-buffer-output-string buf)))

(def (do-with-buffered-string-reader str proc)
  (let (buf (open-buffered-string-reader str))
    (proc buf)))
