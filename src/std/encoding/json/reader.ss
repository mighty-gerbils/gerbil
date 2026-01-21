;;; -*- Gerbil -*-
;;; © vyzo
;;; json writer
(import XXX
        ./env
        ./io)
(export #t)

(defrule (raise-invalid-token where input char)
  (if (eof-object? char)
    (raise-premature-end-of-input where "Incomplete JSON object; EOF reached" input)
    (raise-io-error where "Invalid JSON token" input char)))
