;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: fixnum
package: gerbil/gambit

(export #t)
(extern namespace: #f
  fxarithmetic-shift-left fxarithmetic-shift-right
  fxbit-count fxfirst-bit-set fxif fxlength
  fxquotient fxremainder
  fxwrap* fxwrap+ fxwrap-
  fxwrapabs fxwraparithmetic-shift fxwraparithmetic-shift-left
  fxwraplogical-shift-right fxwrapquotient
  )
