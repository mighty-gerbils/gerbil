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
::: tip usage
```
(@nul ...)
```
:::

Please document me!

### @nul?
::: tip usage
```
(@nul? ...)
```
:::

Please document me!

### @eps
::: tip usage
```
(@eps ...)
```
:::

Please document me!

### @eps?
::: tip usage
```
(@eps? ...)
```
:::

Please document me!

### @char
::: tip usage
```
(@char ...)
```
:::

Please document me!

### @charset
::: tip usage
```
(@charset ...)
```
:::

Please document me!

### @negset
::: tip usage
```
(@negset ...)
```
:::

Please document me!

### @dot
::: tip usage
```
(@dot ...)
```
:::

Please document me!

### @alt
::: tip usage
```
(@alt ...)
```
:::

Please document me!

### @cat
::: tip usage
```
(@cat ...)
```
:::

Please document me!

### @rep*
::: tip usage
```
(@rep* ...)
```
:::

Please document me!

### @rep+
::: tip usage
```
(@rep+ ...)
```
:::

Please document me!

### @maybe
::: tip usage
```
(@maybe ...)
```
:::

Please document me!

### deriv
::: tip usage
```
(deriv ...)
```
:::

Please document me!

### delta
::: tip usage
```
(delta ...)
```
:::

Please document me!

### recognizes?
::: tip usage
```
(recognizes? ...)
```
:::

Please document me!

## Tokens, Locations, and Utilities


### token
```
(defstruct token (t e loc))
```

Please document me!

### token-&gt;syntax
::: tip usage
```
(token->syntax ...)
```
:::

Please document me!

### location
```
(defstruct location (port line col off xoff))
```

Please document me!

### display-location
::: tip usage
```
(display-location ...)
```
:::

Please document me!

### location-delta
::: tip usage
```
(location-delta ...)
```
:::

Please document me!

### location-delta*
::: tip usage
```
(location-delta* ...)
```
:::

Please document me!

### location-&gt;source-location
::: tip usage
```
(location->source-location ...)
```
:::

Please document me!

### wrap-identity
::: tip usage
```
(wrap-identity ...)
```
:::

Please document me!

### wrap-ast
::: tip usage
```
(wrap-ast ...)
```
:::

Please document me!

### unwrap-ast
::: tip usage
```
(unwrap-ast ...)
```
:::

Please document me!

### parse-error?
::: tip usage
```
(parse-error? ...)
```
:::

Please document me!

### raise-parse-error
::: tip usage
```
(raise-parse-error ...)
```
:::

Please document me!


## Character Streams


### make-char-stream
::: tip usage
```
(make-char-stream ...)
```
:::

Please document me!

### char-stream?
::: tip usage
```
(char-stream? ...)
```
:::

Please document me!

### char-stream-loc
::: tip usage
```
(char-stream-loc ...)
```
:::

Please document me!

### char-stream-close
::: tip usage
```
(char-stream-close ...)
```
:::

Please document me!

### char-stream-peek
::: tip usage
```
(char-stream-peek ...)
```
:::

Please document me!

### char-stream-getc
::: tip usage
```
(char-stream-getc ...)
```
:::

Please document me!

### char-stream-ungetc
::: tip usage
```
(char-stream-ungetc ...)
```
:::

Please document me!

### port-location
::: tip usage
```
(port-location ...)
```
:::

Please document me!


## Lexing


### deflexer
::: tip usage
```
(deflexer ...)
```
:::

Please document me!

### lex
::: tip usage
```
(lex ...)
```
:::

Please document me!

### lex-chars
::: tip usage
```
(lex-chars ...)
```
:::

Please document me!

### token-stream?
::: tip usage
```
(token-stream? ...)
```
:::

Please document me!

### token-stream-close
::: tip usage
```
(token-stream-close ...)
```
:::

Please document me!

### token-stream-get
::: tip usage
```
(token-stream-get ...)
```
:::

Please document me!

### token-stream-next
::: tip usage
```
(token-stream-next ...)
```
:::

Please document me!

### token-stream-unget
::: tip usage
```
(token-stream-unget ...)
```
:::

Please document me!

### token-stream-peek
::: tip usage
```
(token-stream-peek ...)
```
:::

Please document me!

### token-stream-loc
::: tip usage
```
(token-stream-loc ...)
```
:::

Please document me!

### $
::: tip usage
```
($ ...)
```
:::

Please document me!

### $?
::: tip usage
```
($? ...)
```
:::

Please document me!

### $$
::: tip usage
```
($$ ...)
```
:::

Please document me!

### $$?
::: tip usage
```
($$? ...)
```
:::

Please document me!

## Parsing


### defparser
::: tip usage
```
(defparser ...)
```
:::

Please document me!

### parser-input-stream
::: tip usage
```
(parser-input-stream ...)
```
:::

Please document me!

### parser-parse
::: tip usage
```
(parser-parse ...)
```
:::

Please document me!

### parser-fail
::: tip usage
```
(parser-fail ...)
```
:::

Please document me!

### parser-rewind
::: tip usage
```
(parser-rewind ...)
```
:::

Please document me!

### $-
::: tip usage
```
($- ...)
```
:::

Please document me!

## The Grammar Prelude
::: tip usage
```
#lang :std/parser/grammar
```
:::

Please document me!
