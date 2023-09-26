(export #t)
(import :std/source
        :std/test)

(def source-test
  (test-suite "test :std/source"
    (test-case "simple tests"
      (check-equal? (this-source-position) ;; <-- marks the position of this-source-position itself
                    #x00150007) ;; Line 8 (7 counting from from 0), column 21, in Gambit encoding.
      (check-equal? (path-strip-directory (this-source-file))
                    "source-test.ss")
      (check-equal? (path-directory (this-source-path "blah"))
                    (path-directory (this-source-file)))
      (check-equal? (this-source-directory)
                    (path-directory (this-source-file)))
      (check-equal? (bytes->string (subu8vector (this-source-content "source-test.ss") 0 11))
                    "(export #t)"))))
