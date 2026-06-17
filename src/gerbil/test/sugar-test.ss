;; -*- Gerbil -*-
;;; © fare
;;;; Testing the syntax sugar from Gerbil core

(export sugar-test)

(import
  (only-in :std/test test-suite test-case check check-exception))

(def sugar-test
  (test-suite "test gerbil/core/sugar gerbil/core/more-sugar gerbil/core/more-syntax-sugar gerbil/core/module-sugar"
    (test-case "more-sugar"
      ;; with-id
      (def o 0)
      (def xx 22)
      (def yy 77)
      (def xy 27)
      (with-id ((H o hell o))
        (def H "world"))
      (check (let ((xx 11)) (with-id ((X o x x) (Y o y y) (Z o x y)) [X Y Z])) => [11 77 27])
      (check hello => "world"))))
