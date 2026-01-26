#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(def (srfi-package prefix)
  (lambda (sym)
    (string-append prefix (symbol->string sym))))

(defbuild-script
  (append
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
          159
          212))
   (map (srfi-package "146/")
        '(hamt hamt-map hamt-misc hash vector-edit))
   (map (srfi-package "159/")
        '(base color columnar environment pretty show string unicode))
   (map (srfi-package "160/")
        '(base c128 c64 f32 f64 s16 s32 s64 s8 u16 u32 u64 u8)))
   libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  bindir: (path-expand "bin" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: #f)
