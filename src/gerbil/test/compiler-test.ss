;;; -*- Gerbil -*-
;;; © vyzo
;;; compiler regression tests
(import :std/test
        :std/source
        :std/os/temporaries
        :gerbil/compiler
        :gerbil/expander
        :gerbil/runtime/syntax
        :gerbil/runtime/init)
(export compiler-specializer-test
        compiler-safety-test
        compiler-typed-test)

(def (must-compile-and-execute path)
  (let (output-dir (make-temporary-file-name "compiler.out"))
    (check (compile-module (path-expand path (this-source-directory))
                           [output-dir:
                            output-dir
                            invoke-gsc: #t
                            optimize: #t
                            generate-ssxi: #t])
           ? true)
    (let (current-load-path (load-path))
      (add-load-path! output-dir)
      (check (import-module
              (string->symbol
               (string-append "test/"
                              (path-strip-extension
                               (path-strip-directory
                                path))))
              #f #t)
             ? true)
      (set-load-path! current-load-path)
      (delete-file-or-directory output-dir #t))))

(def (must-not-compile path)
  (let (output-dir (make-temporary-file-name "compiler.out"))
    (check-exception (compile-module (path-expand path (this-source-directory))
                                     [output-dir:
                                      output-dir
                                      invoke-gsc: #t
                                      optimize: #t
                                      generate-ssxi: #t])
                     syntax-error?)
    (delete-file-or-directory output-dir #t)))

(def compiler-specializer-test
  (test-suite "compiler specializer tests"
    (test-case "specializer methods"
      (must-compile-and-execute "compiler-test-support/specializer-methods.ss"))
    (test-case "issue #1144"
      (must-compile-and-execute "compiler-test-support/issue-1144.ss"))))

(def compiler-safety-test
  (test-suite "compiler type safety tests"
    (test-case "call non procedure (1)"
      (must-not-compile "compiler-test-support/non-procedure-1.ss"))
    (test-case "call non procedure (2)"
      (must-not-compile "compiler-test-support/non-procedure-2.ss"))
    (test-case "call non procedure (3)"
      (must-not-compile "compiler-test-support/non-procedure-3.ss"))
    (test-case "call non procedure (4)"
      (must-not-compile "compiler-test-support/non-procedure-4.ss"))
    (test-case "bad return type"
      (must-not-compile "compiler-test-support/bad-return-type.ss"))))

(def compiler-typed-test
  (test-suite "compiler type inference tests"
    (test-case "top level classes after use in procedure"
      (must-compile-and-execute "compiler-test-support/class-after-use.ss"))))
