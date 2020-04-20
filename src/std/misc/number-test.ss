;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     fare
;;; :std/misc/number test

(import :std/test
        (only-in :std/sugar try catch)
        :gerbil/gambit/exceptions
        :std/misc/number)
(export number-test)

(def number-test
  (test-suite "test :std/misc/number"
    (test-case "test xmin"
      (check (xmin) => +inf.0)
      (check (xmin 42) => 42)
      (check (xmin 10 42) => 10)
      (check (xmin 10 10) => 10)
      (check (xmin 42 10) => 10)
      (check (xmin 10 +inf.0) => 10)
      (check (xmin 10 -inf.0) => -inf.0)
      (check (xmin -inf.0 -5) => -inf.0)
      (check (xmin +inf.0 -5) => -5)
      (check (xmin -inf.0 +inf.0) => -inf.0)
      (check (xmin +inf.0 -inf.0) => -inf.0)
      (check (xmin 1 42 10 3.0 -5 4) => -5)
      (check (xmin 1 2 2 3) => 1))

    (test-case "test xmax"
      (check (xmax) => -inf.0)
      (check (xmax 42) => 42)
      (check (xmax 10 42) => 42)
      (check (xmax 10 10) => 10)
      (check (xmax 42 10) => 42)
      (check (xmax 10 +inf.0) => +inf.0)
      (check (xmax 10 -inf.0) => 10)
      (check (xmax -inf.0 -5) => -5)
      (check (xmax +inf.0 -5) => +inf.0)
      (check (xmax -inf.0 +inf.0) => +inf.0)
      (check (xmax +inf.0 -inf.0) => +inf.0)
      (check (xmax 1 42 10 3.0 -5 4) => 42)
      (check (xmax 1 2 2 3) => 3)
      (check (xmax 1 2 -2 3) => 3))
    ))
