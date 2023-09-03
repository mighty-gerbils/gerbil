#!/usr/bin/env gxi

(import :std/build-script)

(defbuild-script
  '(;; RED
    "scheme/list"
    "scheme/vector"
    "scheme/sort"
    "scheme/comparator"
    "scheme/hash-table"
    "scheme/set"
    "scheme/charset"
    "scheme/ilist"
    "scheme/rlist"
    "scheme/ideque"
    "scheme/text"
    "scheme/generator"
    "scheme/lseq"
    "scheme/stream"
    "scheme/box"
    "scheme/list-queue"
    "scheme/ephemeron"
    ;; TANGERINE
    "scheme/mapping"
    "scheme/mapping/hash"
    "scheme/regex"
    "scheme/division"
    "scheme/bitwise"
    "scheme/fixnum"
    "scheme/flonum"
    "scheme/bytevector"
    "scheme/vector/base"
    "scheme/vector/u8"
    "scheme/vector/s8"
    "scheme/vector/u16"
    "scheme/vector/s16"
    "scheme/vector/u32"
    "scheme/vector/s32"
    "scheme/vector/u64"
    "scheme/vector/s64"
    "scheme/vector/f32"
    "scheme/vector/f64"
    "scheme/vector/c64"
    "scheme/vector/c128"
    "scheme/show"
    )
  libdir: (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
  debug: 'src)
