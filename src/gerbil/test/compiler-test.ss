;;; -*- Gerbil -*-
;;; © vyzo
;;; compiler regression tests
(import :std/test
        :std/source
        :std/os/temporaries
        :gerbil/compiler
        :gerbil/expander
        :gerbil/runtime/init)
(export compiler-specializer-test)

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

(def compiler-specializer-test
  (test-suite "compiler specializer tests"
    (test-case "specializer methods"
      (must-compile-and-execute "compiler-test-support/specializer-methods.ss"))
    (test-case "issue #1144"
      (must-compile-and-execute "compiler-test-support/issue-1144.ss"))))
