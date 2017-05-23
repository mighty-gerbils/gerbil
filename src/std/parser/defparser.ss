;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser generator
package: std/parser

(import :std/parser/rlang ; for rlang operators
        :std/parser/lexer)
(export defparser @eq)

(defrules @eq ())  ; token-e equality
(defrules % ())    ; lexeme token
(defrules ! ())    ; cut that the descent (invokes the E continuation)

(defsyntax (defparser stx)
  XXX
  )
