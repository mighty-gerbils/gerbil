;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: bits
package: gerbil/gambit

(export #t)
(extern namespace: #f
  arithmetic-shift
  bitwise-merge bitwise-and bitwise-ior bitwise-xor bitwise-not
  bit-count integer-length bit-set? any-bits-set? all-bits-set?
  first-set-bit
  extract-bit-field test-bit-field? clear-bit-field
  replace-bit-field copy-bit-field
  )
