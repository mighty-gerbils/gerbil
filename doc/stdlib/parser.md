# Language Parsers

::: tip usage
(import :std/parser)
:::

Parsing facilities and grammar definition prelude.

```
#lang :std/parser/grammar
(import :std/parser)

;; exports:

;; :std/parser/rlang
  @nul @nul? @eps @eps?
  @char @charset @negset @dot
  @alt @cat @rep* @rep+ @maybe
  deriv delta recognizes?

;; :std/parser/base
  (struct-out parse-error token location)
  raise-parse-error
  wrap-identity wrap-ast unwrap-ast
  token->syntax
  location->source-location
  display-location
  location-delta location-delta*

;; :std/parser/stream
  make-char-stream char-stream?
  char-stream-loc
  char-stream-close
  char-stream-peek
  char-stream-getc
  char-stream-ungetc
  port-location

;; :std/parser/lexer
  lex lex-chars
  token-stream?
  token-stream-close
  token-stream-get
  token-stream-next
  token-stream-unget
  token-stream-peek
  token-stream-loc
  $ $? $$ $$?

;; :std/parser/defparser
  defparser
  @eq % ! $-
  parser-parse parser-rewind parser-fail
  parser-input-stream

;; :std/parser/deflexer
  deflexer
```