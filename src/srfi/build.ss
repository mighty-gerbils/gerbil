#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  (map number->string
       '(1
         8
         9
         13
         14
         19
         41
         42
         43
         78
         95
         101
         113
         115
         116
         117
         121
         124
         127
         128
         130
         132
         133
         134
         135
         141
         143
         144
         145
         146
         151
         158
         159))
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  bindir: (path-expand "bin" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: #f)
