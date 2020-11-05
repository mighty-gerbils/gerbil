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

(def here (current-directory))

(def crypto-test
  (test-suite "test :std/crypto"
    (test-case "static compilation with libcrypto"
      (def top (path-normalize (path-expand "../.." here)))
      (def src-dir (path-expand "src" top))
      (def test-dir (path-expand "test" top))
      (create-directory* test-dir)
      (def src (path-expand "crypto/digest-test.ss" here))
      (def exe (path-expand "digest-test.exe" test-dir))
      (compile-file
       src [invoke-gsc: #t optimize: #f verbose: #f debug: #f static: #t output-dir: test-dir
            gsc-options: ["-cc-options" (cppflags "libcrypto" "")
                          (include-gambit-sharp)...]])
      (gxc#compile-static-exe
       src [invoke-gsc: #t output-file: exe optimize: #f verbose: #f debug: #f static: #t output-dir: test-dir
            gsc-options: ["-cc-options" (cppflags "libcrypto" "")
                          "-ld-options" (ldflags "libcrypto" "-lcrypto")
                          (include-gambit-sharp)...]])
      (run-process/batch [exe]))))
