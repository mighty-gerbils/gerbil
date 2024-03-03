;;; -*- Gerbil -*-
;;; © vyzo
;;; compiler regression tests
(import :std/test
        :std/source
        :std/os/temporaries
        :gerbil/compiler)
(export compiler-test)

(def (must-compile path)
  (let (output-dir (make-temporary-file-name "compiler.out"))
    (check (compile-module (path-expand path (this-source-directory))
                           [output-dir:
                            output-dir
                            invoke-gsc: #t
                            optimize: #t
                            generate-ssxi: #t])
           ? true)
    (delete-file-or-directory output-dir #t)))

(def compiler-test
  (test-suite "compiler tests"
    (test-case "issue #1144"
      (must-compile "compiler-test-support/issue-1144.ss"))))
