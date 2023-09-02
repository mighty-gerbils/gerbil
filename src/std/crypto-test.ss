;;; -*- Gerbil -*-
;;; (C) fare at tunes.org
;;; :std/crypto unit-tests

(import :std/test
        :std/iter
        :std/misc/process
        :std/text/hex
        :std/crypto
        :std/make
        :gerbil/compiler)
(export crypto-test)

(defsyntax (source-file stx)
  (##container->path (##locat-container (stx-source stx))))
(def here (path-directory (source-file)))

(def crypto-test
  (test-suite "test :std/crypto"
    (test-case "static compilation with libcrypto"
      (def test-dir "/tmp/test.out")
      (def src (path-expand "crypto/digest-test.ss" here))
      (def exe (path-expand "digest-test.exe" test-dir))
      (create-directory* test-dir)
      (compile-module
       src [invoke-gsc: #t optimize: #f verbose: #f debug: #f static: #t
            output-dir: test-dir
            gsc-options: [(include-gambit-sharp)...]])
      (compile-exe
       src [invoke-gsc: #t output-file: exe optimize: #f verbose: #f debug: #f static: #t
            output-dir: test-dir
            gsc-options: [(include-gambit-sharp)...]])
      (check (run-process/batch [exe]) => (void)))))
