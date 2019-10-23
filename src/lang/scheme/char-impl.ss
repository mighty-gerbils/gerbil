;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme char) library -- implementation details
(import ./stubs)
(export #t)

(def char::zero (char->integer #\0))

(def (digit-value char)
  (if (char-numeric? char)
    (fx- (char->integer char) char::zero)
    #f))

;; mucking with unicode is not fun, so these are still stubs
(defstub char-foldcase)
(defstub string-foldcase)
