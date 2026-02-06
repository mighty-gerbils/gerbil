# Language Parsers

The `:std/parser` library provides facilities for parsing languages, with emphasis
on custom languages. It includes regular language derivatives for lexing,
character stream tracking, token stream management, and recursive descent
parsing. See also the [tutorial](/tutorials/languages.md).

::: tip To use the bindings from this module:
```scheme
(import :std/parser)
```
:::

## Overview

The parser library provides a complete infrastructure for building custom
lexers and parsers:

- **Regular languages** — Brzozowski derivative-based recognition for lexer
  patterns
- **Character streams** — Input tracking with precise source locations
- **Lexer generation** — `deflexer` macro for defining lexical analyzers from
  regex-like rules
- **Parser generation** — `defparser` macro for defining recursive descent
  parsers from grammar rules

A typical usage pattern is:
1. Define a lexer with `deflexer` to tokenize input
2. Define a parser with `defparser` to parse the token stream
3. Feed input through the lexer then parser

## Regular Languages

Regular languages are used to define lexer token patterns. They use
Brzozowski derivatives for recognition — an elegant algebraic approach
where matching is done by repeatedly taking the "derivative" of a language
with respect to each input character.

### @nul
```scheme
@nul -> rlang
```

The null language that matches nothing. Used as the identity for alternation.

### @nul?
```scheme
(@nul? L) -> boolean
```

Returns `#t` if *L* is the null language.

### @eps
```scheme
@eps -> rlang
```

The epsilon language that matches only the empty string. Used as the identity
for concatenation.

### @eps?
```scheme
(@eps? L) -> boolean
```

Returns `#t` if *L* is the epsilon language.

### @char
```scheme
(@char c) -> rlang
```

Creates a language that matches the single character *c*.

### @charset
```scheme
(@charset chars) -> rlang
```

Creates a language that matches any single character in the list *chars*.
Analogous to `[abc]` in regular expression syntax.

### @negset
```scheme
(@negset chars) -> rlang
```

Creates a language that matches any single character *not* in the list
*chars*. Analogous to `[^abc]` in regular expression syntax.

### @dot
```scheme
@dot -> rlang
```

A language that matches any single character. Analogous to `.` in regular
expression syntax.

### @alt
```scheme
(@alt L ...) -> rlang
```

Creates the alternation (union) of languages. Matches if any of the given
languages match. Analogous to `L1|L2` in regular expression syntax.
Automatically optimizes away null operands.

### @cat
```scheme
(@cat L ...) -> rlang
```

Creates the concatenation of languages. Matches a string that can be split
into parts each matching the corresponding language. Returns `@nul` if any
operand is null.

### @rep*
```scheme
(@rep* L) -> rlang
```

Kleene star — matches zero or more repetitions of *L*. Analogous to `L*` in
regular expression syntax.

### @rep+
```scheme
(@rep+ L) -> rlang
```

Matches one or more repetitions of *L*. Analogous to `L+` in regular
expression syntax. Equivalent to `(@cat L (@rep* L))`.

### @maybe
```scheme
(@maybe L) -> rlang
```

Matches zero or one occurrence of *L*. Analogous to `L?` in regular
expression syntax. Equivalent to `(@alt L @eps)`.

### deriv
```scheme
(deriv L char) -> rlang
```

Computes the Brzozowski derivative of language *L* with respect to *char*.
The derivative is the language of strings that, when prepended with *char*,
are in *L*. This is the core operation used by the lexer for matching.

### delta
```scheme
(delta L) -> boolean
```

Returns `#t` if the language *L* is nullable — that is, if *L* accepts the
empty string.

### recognizes?
```scheme
(recognizes? L chars) -> boolean
```

Returns `#t` if the language *L* recognizes the complete sequence of
characters *chars* (a list).

::: tip Example:
```scheme
(import :std/parser)

;; Match "hello"
(def hello (@cat (@char #\h) (@char #\e) (@char #\l) (@char #\l) (@char #\o)))
(recognizes? hello '(#\h #\e #\l #\l #\o))  ;; => #t
(recognizes? hello '(#\h #\i))              ;; => #f

;; Match one or more digits
(def digits (@rep+ (@charset '(#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9))))
(recognizes? digits '(#\4 #\2))  ;; => #t
```
:::

## Tokens, Locations, and Utilities

### token
```scheme
(defstruct token (t e loc))
```

Represents a lexical token with:
- `t` — the token type (a symbol)
- `e` — the token value (element)
- `loc` — the source location

### token->syntax
```scheme
(token->syntax tok) -> syntax
```

Converts a token *tok* to a Gerbil syntax object, preserving source location
information.

### location
```scheme
(defstruct location (port line col off xoff))
```

Tracks position in an input stream:
- `port` — the input port name
- `line` — line number (1-based)
- `col` — column number (0-based)
- `off` — byte offset
- `xoff` — extended offset (for location spans)

### display-location
```scheme
(display-location loc (port (current-output-port))) -> void
```

Pretty-prints a location to the given output port.

### location-delta
```scheme
(location-delta start end) -> location
```

Calculates a location span between *start* and *end* positions (inclusive of
*end*).

### location-delta*
```scheme
(location-delta* start end) -> location
```

Calculates a location span between *start* and *end* positions (exclusive of
*end*).

### location->source-location
```scheme
(location->source-location loc) -> source-location
```

Converts a parser location to a Gambit source location object for integration
with Gambit's error reporting.

### wrap-identity
```scheme
(wrap-identity e loc) -> e
```

Identity wrapper — returns the element unchanged. Used as a default wrapper
in parsing.

### wrap-ast
```scheme
(wrap-ast e loc) -> AST
```

Wraps an expression *e* with source location *loc* as an AST node. If the
expression is already an AST or has no location, returns it unchanged.

### unwrap-ast
```scheme
(unwrap-ast e) -> value
```

Extracts the element from an AST wrapper. If *e* is not an AST, returns it
unchanged.

### parse-error?
```scheme
(parse-error? obj) -> boolean
```

Returns `#t` if *obj* is a parse error exception.

### raise-parse-error
```scheme
(raise-parse-error where what . irritants)
```

Raises a parse error exception with the given context.

## Character Streams

Character streams provide input tracking with precise source location
information for every character read.

### make-char-stream
```scheme
(make-char-stream port) -> char-stream
```

Creates a character stream from an input *port*. The stream tracks the
current position (line, column, offset) as characters are read.

### char-stream?
```scheme
(char-stream? obj) -> boolean
```

Returns `#t` if *obj* is a character stream.

### char-stream-loc
```scheme
(char-stream-loc cs) -> location
```

Returns the current source location of the character stream *cs*.

### char-stream-close
```scheme
(char-stream-close cs) -> void
```

Closes the underlying input port of the character stream.

### char-stream-peek
```scheme
(char-stream-peek cs) -> char | eof
```

Returns the next character without consuming it, or `#!eof` at end of input.

### char-stream-getc
```scheme
(char-stream-getc cs) -> char | eof
```

Reads and returns the next character, advancing the stream position. Tracks
line and column numbers automatically.

### char-stream-ungetc
```scheme
(char-stream-ungetc cs char) -> void
```

Pushes a character back into the stream, reverting the position.

### port-location
```scheme
(port-location port) -> location
```

Extracts the current location from a raw Gambit input port.

## Lexing

### deflexer
```scheme
(deflexer name rule ...)
```

Macro that defines a lexer function *name*. Each *rule* maps a regular
language pattern to a token production:

```scheme
(deflexer my-lexer
  ;; Ignored tokens (whitespace, comments)
  (pattern $)
  ;; Token-producing rules
  (pattern (token-type value-expression))
  ;; With nested definitions
  ((def helper ...) pattern action))
```

Rules are tried in order; the longest match wins. The `$` action marks a
token as ignored (e.g., whitespace). In action expressions, the matched
string is available.

### lex
```scheme
(lex input Ls Rs) -> token-stream
```

Creates a token stream by lexing *input* (a string, input port, or character
stream) using lexeme patterns *Ls* (a list of regular languages) and
reduction functions *Rs*.

### lex-chars
```scheme
(lex-chars input) -> token-stream
```

Creates a trivial token stream that produces one token per character from
*input*.

### token-stream?
```scheme
(token-stream? obj) -> boolean
```

Returns `#t` if *obj* is a token stream.

### token-stream-close
```scheme
(token-stream-close ts) -> void
```

Closes the underlying character stream of the token stream.

### token-stream-get
```scheme
(token-stream-get ts) -> token | eof
```

Gets the next token from the stream, skipping ignored tokens (whitespace,
comments). Returns `#!eof` at end of input.

### token-stream-next
```scheme
(token-stream-next ts) -> token
```

Gets the next token, converting end-of-input to a `$$` (end-of-stream)
token instead of `#!eof`.

### token-stream-unget
```scheme
(token-stream-unget ts tok) -> void
```

Pushes a token back into the token stream for later retrieval.

### token-stream-peek
```scheme
(token-stream-peek ts) -> token | eof
```

Inspects the next token without consuming it.

### token-stream-loc
```scheme
(token-stream-loc ts) -> location
```

Returns the current source location of the token stream.

### $
```scheme
$ -> token-marker
```

Marker for ignored tokens (whitespace, comments). Used in `deflexer` rules
to indicate tokens that should be silently discarded.

### $?
```scheme
($? obj) -> boolean
```

Returns `#t` if *obj* is the ignored-token marker `$`.

### $$
```scheme
$$ -> token
```

End-of-stream token, returned by `token-stream-next` at end of input.

### $$?
```scheme
($$? tok) -> boolean
```

Returns `#t` if *tok* is the end-of-stream token `$$`.

## Parsing

### defparser
```scheme
(defparser name rule ...)
```

Macro that defines a recursive descent parser function *name*. Grammar rules
define the structure of the language being parsed.

**Grammar elements:**
- Sequence: `(@cat elem ...)` — match elements in order
- Alternation: production rules with multiple alternatives
- Repetition: `(@rep* elem)` (zero or more), `(@rep+ elem)` (one or more)
- Optional: `(@maybe elem)` — zero or one occurrence
- Token match: `(@eq expr)` — match token with value equal to *expr*
- Terminal: `%` — match token whose type is the current rule name
- Cut: `!` — commits to the current choice (no backtracking)
- End of input: `$$` — match end of stream
- Non-terminal: `rule-name` or `rule-name [binding-id]` — invoke a
  sub-rule, optionally binding its result

### parser-input-stream
```scheme
(parser-input-stream input lexer) -> token-stream
```

Converts raw *input* to a token stream using *lexer*. If *input* is already
a token stream, returns it directly.

### parser-parse
```scheme
(parser-parse where ts parse-e wrap-e) -> value
```

Executes the parse expression *parse-e* on token stream *ts*, wrapping
results with *wrap-e*. Used internally by generated parsers.

### parser-fail
```scheme
(parser-fail where ts toks) -> void
```

Raises a parse error at the current position. Ungets consumed tokens *toks*
back to the stream before reporting.

### parser-rewind
```scheme
(parser-rewind ts xtoks toks) -> void
```

Pushes tokens from *xtoks* back into the token stream *ts*, rewinding up to
*toks*. Used during backtracking.

### $-
```scheme
$- -> marker
```

Marker used in parser rules for optional elements.

## The Grammar Prelude
```scheme
#lang :std/parser/grammar
```

A language prelude that provides a grammar definition syntax for defining
parsers in a more declarative style. See the
[tutorial on languages](/tutorials/languages.md) for usage examples.
