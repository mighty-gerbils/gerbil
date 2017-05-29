;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import :scheme/stubs)
(export #t)

;; macros
(defsyntax-stub features)
(defsyntax-stub guard)
(defsyntax-stub include-ci)

;; misc
(defstub boolean=?)
(defstub symbol=?)
(defstub raise-continuable)

;; numerics
(defstub denominator)
(defstub exact-integer?)
(defstub exact-integer-sqrt)
(defstub floor/)
(defstub floor-quotient)
(defstub floor-remainder)
(defstub square)
(defstub truncate/)
(defstub truncate-quotient)
(defstub truncate-remainder)

;; lists
(defstub list-copy)
(defstub list-set!)

;; strings
(defstub r7rs-string-copy)
(defstub string-copy!)
(defstub string-for-each)
(defstub string-map)
(defstub string->vector)

;; vectors
(defstub vector-for-each)
(defstub vector->string)
(defstub r7rs-vector-copy)
(defstub vector-copy!)

;; byte vectors
(defstub bytevector-copy)
(defstub bytevector-copy!)

;; i/o
(defstub read-error?)
(defstub file-error?)

(defstub binary-port?)
(defstub textual-port?)

(defstub call-with-port)

(defstub input-port-open?)
(defstub output-port-open?)

(defstub u8-ready?)
(defstub peek-u8)
(defstub read-bytevector)
(defstub read-bytevector!)
(defstub write-bytevector)
