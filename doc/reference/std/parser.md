# Language Parsers

The `:std/parser` library provides facilities for parsing languages, with emphasis
on custom languages. See also the [tutorial](/tutorials/languages.md).

::: tip usage
(import :std/parser)
:::

## Overview

Please write me!

## Regular Languages

### @nul
```
(@nul ...)
```

Please document me!

### @nul?
```
(@nul? ...)
```

Please document me!

### @eps
```
(@eps ...)
```

Please document me!

### @eps?
```
(@eps? ...)
```

Please document me!

### @char
```
(@char ...)
```

Please document me!

### @charset
```
(@charset ...)
```

Please document me!

### @negset
```
(@negset ...)
```

Please document me!

### @dot
```
(@dot ...)
```

Please document me!

### @alt
```
(@alt ...)
```

Please document me!

### @cat
```
(@cat ...)
```

Please document me!

### @rep*
```
(@rep* ...)
```

Please document me!

### @rep+
```
(@rep+ ...)
```

Please document me!

### @maybe
```
(@maybe ...)
```

Please document me!

### deriv
```
(deriv ...)
```

Please document me!

### delta
```
(delta ...)
```

Please document me!

### recognizes?
```
(recognizes? ...)
```

Please document me!

## Tokens, Locations, and Utilities


### token
```
(defstruct token (t e loc))
```

Please document me!

### token->syntax
```
(token->syntax ...)
```

Please document me!

### location
```
(defstruct location (port line col off xoff))
```

Please document me!

### display-location
```
(display-location ...)
```

Please document me!

### location-delta
```
(location-delta ...)
```

Please document me!

### location-delta*
```
(location-delta* ...)
```

Please document me!

### location->source-location
```
(location->source-location ...)
```

Please document me!

### wrap-identity
```
(wrap-identity ...)
```

Please document me!

### wrap-ast
```
(wrap-ast ...)
```

Please document me!

### unwrap-ast
```
(unwrap-ast ...)
```

Please document me!

### parse-error?
```
(parse-error? ...)
```

Please document me!

### raise-parse-error
```
(raise-parse-error ...)
```

Please document me!


## Character Streams


### make-char-stream
```
(make-char-stream ...)
```

Please document me!

### char-stream?
```
(char-stream? ...)
```

Please document me!

### char-stream-loc
```
(char-stream-loc ...)
```

Please document me!

### char-stream-close
```
(char-stream-close ...)
```

Please document me!

### char-stream-peek
```
(char-stream-peek ...)
```

Please document me!

### char-stream-getc
```
(char-stream-getc ...)
```

Please document me!

### char-stream-ungetc
```
(char-stream-ungetc ...)
```

Please document me!

### port-location
```
(port-location ...)
```

Please document me!


## Lexing


### deflexer
```
(deflexer ...)
```

Please document me!

### lex
```
(lex ...)
```

Please document me!

### lex-chars
```
(lex-chars ...)
```

Please document me!

### token-stream?
```
(token-stream? ...)
```

Please document me!

### token-stream-close
```
(token-stream-close ...)
```

Please document me!

### token-stream-get
```
(token-stream-get ...)
```

Please document me!

### token-stream-next
```
(token-stream-next ...)
```

Please document me!

### token-stream-unget
```
(token-stream-unget ...)
```

Please document me!

### token-stream-peek
```
(token-stream-peek ...)
```

Please document me!

### token-stream-loc
```
(token-stream-loc ...)
```

Please document me!

### $
```
($ ...)
```

Please document me!

### $?
```
($? ...)
```

Please document me!

### $$
```
($$ ...)
```

Please document me!

### $$?
```
($$? ...)
```

Please document me!

## Parsing


### defparser
```
(defparser ...)
```

Please document me!

### parser-input-stream
```
(parser-input-stream ...)
```

Please document me!

### parser-parse
```
(parser-parse ...)
```

Please document me!

### parser-fail
```
(parser-fail ...)
```

Please document me!

### parser-rewind
```
(parser-rewind ...)
```

Please document me!

### $-
```
($- ...)
```

Please document me!

## The Grammar Prelude
```
#lang :std/parser/grammar
```

Please document me!
