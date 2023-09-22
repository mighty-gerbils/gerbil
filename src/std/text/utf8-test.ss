;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/text/utf8 unit test

(import :std/test
        :std/sugar
	    :std/error
        :gerbil/gambit
        ./utf8)

(export utf8-test)

(def utf8-test
  (test-suite "test :std/text/utf8"

    (def (check-encode-decode str)
      (let (p (string->utf8 str))
        (check (utf8->string p) => str)))

    (test-case "test utf8 encoding and decoding of random strings"
      (def N 10)
      (def len 100)
      (def Q (+ max-char-code 1))
      (def (get-random-char)
        (try
         (integer->char (random-integer Q))
         (catch (range-exception? e)
           (get-random-char))))
      (let lp ((k 0))
        (when (fx< k N)
          (let (str (make-string len))
            (let lp2 ((i 0))
              (when (fx< i len)
                (string-set! str i (get-random-char))
                (lp2 (fx1+ i))))
            (check-encode-decode str)
            (lp (fx1+ k))))))

    (test-case "test utf8 encoding and decoding malformed inputs"
      (check-exception (string->utf8 #f) bad-argument-error?)
      (check-exception (string-utf8-length #f) bad-argument-error?)
      (check-exception (utf8->string #f) bad-argument-error?))
    ))
