(export #t)
(import :std/test :std/source)
(def this-position (this-source-position))
;; NB: Don't lightly change the lines above, the tests below rely on their layout!

(def source-test
  (test-suite "test :std/source"
    (test-case "simple tests"
      (check-equal? this-position ;; position of "this-source-position" on top of file.
                    #x00140002) ;; Line 8 (7 counting from from 0), column 21, in Gambit encoding.
      (check-equal? (path-strip-directory (this-source-file))
                    "source-test.ss")
      (check-equal? (path-directory (this-source-path "blah"))
                    (path-directory (this-source-file)))
      (check-equal? (this-source-directory)
                    (path-directory (this-source-file)))
      (check-equal? (bytes->string (subu8vector (this-source-content "source-test.ss") 0 11))
                    "(export #t)")
      )))
