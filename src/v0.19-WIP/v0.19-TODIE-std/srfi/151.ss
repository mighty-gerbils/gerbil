;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-151: Bitwise Operations

(import :gerbil/gambit)
(export bitwise-not bitwise-and bitwise-ior bitwise-xor bitwise-eqv
        bitwise-nand bitwise-nor bitwise-andc1 bitwise-andc2
        bitwise-orc1 bitwise-orc2
        arithmetic-shift bit-count integer-length bitwise-if
        bit-set? copy-bit bit-swap any-bit-set? every-bit-set?  first-set-bit
        bit-field bit-field-any? bit-field-every?  bit-field-clear bit-field-set
        bit-field-replace  bit-field-replace-same
        bit-field-rotate bit-field-reverse
        bits->list list->bits bits->vector vector->bits bits
        bitwise-fold bitwise-for-each bitwise-unfold make-bitwise-generator)

(include "srfi-151/bitwise-core.scm")
(include "srfi-151/bitwise-33.scm")
(include "srfi-151/bitwise-60.scm")
(include "srfi-151/bitwise-other.scm")
