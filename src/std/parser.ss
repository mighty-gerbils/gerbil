;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser api
package: std

(import :std/parser/rlang
        :std/parser/base
        :std/parser/stream
        :std/parser/lexer
        :std/parser/defparser
        :std/parser/deflexer)

(export
  (import: :std/parser/rlang
           :std/parser/base
           :std/parser/stream
           :std/parser/lexer
           :std/parser/defparser
           :std/parser/deflexer))
