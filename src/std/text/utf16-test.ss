;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/text/utf16 unit test

(import :std/test
        :std/text/utf16
        :std/sugar
        :std/error
        :gerbil/gambit/random)

(export utf16-test)
(def utf16-test
  (test-suite "test :std/text/utf16"

    (def (check-encode-decode str)
      (let (p (string->utf16 str))
        (check (utf16->string p) => str)))

    (test-case "test utf16 encoding and decoding of a simple string"
      (check-encode-decode "the cat is out of the box!"))

    (test-case "test utf16 encoding and decoding of random strings"
      (def N 10)
      (def len 100)
      (def Q (+ ##max-char 1))
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
