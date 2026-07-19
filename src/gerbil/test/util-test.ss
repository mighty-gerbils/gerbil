;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; Testing the runtime utilities

(export util-test)

(import
  :gerbil/runtime
  :std/text/parser/char-set
  (only-in :std/test test-suite test-case check check-exception check-function))

(def (slash? c)
  (eqv? c #\/))

(def (not-slash? c)
  (not (slash? c)))

(def (vowel? c)
  (memv c '(#\a #\e #\i #\o #\u)))

(def util-test
  (test-suite "test :gerbil/runtime/util"
    (test-case "string-index"
      (check-function string-index
        "abcde" #\c => 2
        "chronos" vowel? => 3
        "chronos" vowel? 4 => 5
        "chronos" vowel? 4 6 => 5
        "chronos" vowel? 4 5 => #f
        "chronos" vowel? 4 4 => #f
        ;; border conditions
        "chronos" vowel? 10 3 => #f
        "chronos" vowel? 0 -1 => #f
        "chronos" vowel? 4 8 =>! true
        "chronos" vowel? 8 8 =>! true
        "chronos" vowel? -1 =>! true))
    (test-case "string-rindex"
      (check-function string-rindex
        "abcde" #\c => 2
        "chronos" vowel? => 5
        "chronos" vowel? 6 => 5
        "chronos" vowel? 5 => 5
        "chronos" vowel? 4 => 3
        "chronos" vowel? 3 => 3
        "chronos" vowel? 2 => #f
        "chronos" vowel? 6 6 => #f
        "chronos" vowel? 6 5 => 5
        "chronos" vowel? 6 5 => 5
        "chronos" vowel? 4 4 => #f
        "chronos" vowel? 4 3 => 3
        "chronos" vowel? 4 2 => 3
        ;; border conditions
        "chronos" vowel? 7 =>! true
        "chronos" vowel? 7 4 =>! true
        "chronos" vowel? 0 -1 =>! true
        "chronos" vowel? 0 8 => #f
        "chronos" vowel? -1 => #f))))
