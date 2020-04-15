;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     fare
;;; :std/misc/xreal test

(import :std/test
        (only-in :std/sugar try catch)
        :gerbil/gambit/exceptions
        :std/misc/xreal)
(export xreal-test)

(def xreal-test
  (test-suite "test :std/misc/xreal"
    (test-case "test xreal<"
      (check (xreal<) => #t)
      (check (xreal< 42) => #t)
      (check (xreal< 10 42) => #t)
      (check (xreal< 10 10) => #f)
      (check (xreal< 42 10) => #f)
      (check (xreal< 10 #f) => #t)
      (check (xreal< 10 #t) => #f)
      (check (xreal< #t -5) => #t)
      (check (xreal< #f -5) => #f)
      (check (xreal< #t #f) => #t)
      (check (xreal< #f #t) => #f)
      (check (xreal< #t 1 2 3 4 5 6 #f) => #t)
      (check (xreal< 1 2 2 3) => #f))

    (test-case "test xreal<="
      (check (xreal<=) => #t)
      (check (xreal<= 42) => #t)
      (check (xreal<= 10 42) => #t)
      (check (xreal<= 10 10) => #t)
      (check (xreal<= 42 10) => #f)
      (check (xreal<= 10 #f) => #t)
      (check (xreal<= 10 #t) => #f)
      (check (xreal<= #t -5) => #t)
      (check (xreal<= #f -5) => #f)
      (check (xreal<= #t #f) => #t)
      (check (xreal<= #f #t) => #f)
      (check (xreal<= #t 1 2 3 4 5 6 #f) => #t)
      (check (xreal<= 1 2 2 3) => #t)
      (check (xreal<= 1 2 -2 3) => #f))

    ))
