;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: miscellaneous
package: gerbil/gambit

(export #t)
(extern namespace: #f
  pretty-print pp
  append-vectors subvector-move! vector-shrink!
  append-strings substring-move! string-shrink!
  integer-sqrt integer-nth-root
  touch
  current-user-interrupt-handler defer-user-interrupts
  make-will
  will?
  will-testator
  will-execute!
  )
