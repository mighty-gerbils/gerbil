#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script)
(import :std/make)

(defbuild-script
  (cond-expand
    (darwin
     `((exe: "simpled"
        "-cc-options" ,(cppflags "openssl" "")
        "-cc-options" "-Wno-implicit-function-declaration"
        "-cc-options" "-Wno-deprecated-declarations"
        "-ld-options" ,(ldflags "openssl" ""))))
    (else
     '((exe: "simpled")))))
