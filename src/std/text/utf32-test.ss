;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/text/utf32 unit test

(import :std/test
        :std/text/utf32
        :std/sugar
        :std/error
        :gerbil/gambit/random)

(export utf32-test)
(def utf32-test
  (test-suite "test :std/text/utf32"

    (def (check-encode-decode str)
      (let (p (string->utf32 str))
        (check (utf32->string p) => str)))

    (test-case "test utf32 encoding and decoding of a simple string"
      (check-encode-decode "the cat is out of the box!"))

    (test-case "test utf32 encoding and decoding of random strings"
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
            (lp (fx1+ k))))))))
