# String Templates

The `:std/misc/template` library provides basic string templating procedures.
This templating interface is much simpler than something like [the `format`
procedure from the `:std/format` module](/reference/std/format.md#format).

::: tip To use the bindings from this module:
```scheme
(import :std/misc/template)
```
:::

## apply-template

```scheme
(apply-template (template : :string)
                key: value ...)
=> :string
```

::: tip
Any number of `key: value` argument pairs may be provided, but they **must** be
in pairs
:::

Returns a new string as defined by `template` with the following differences:

- Each instance of the marker text `${key}` in the `template` is replaced by the
  `value` in the matching `key: value` argument pair. It is an error if there is
  no matching `key: value` argument pair
- Each instance of the text `\\c` (where `c` is any character) is replaced with
  `c`. This allows escaping parts of the aforementioned marker text to prevent
  replacement

::: tip Example:
```scheme
(import (only-in :std/misc/template
                 apply-template))
(define message
  "${greeting}! My name is '${name} ${name}'. I love hearing it twice!")

(apply-template message greeting: "Hello" name: "Gerbil")
;; => "Hello! My name is 'Gerbil Gerbil'. I love hearing it twice!"

(apply-template message greeting: "こんにちは" name: "スナネズミ")
;; => "こんにちは! My name is 'スナネズミ スナネズミ'. I love hearing it twice!"
```
:::

::: tip Example:
```scheme
(import (only-in :std/misc/template
                 apply-template))
(apply-template "\"2 + 2 = \\${sum}\" will be become \"2 + 2 = ${sum}\""
                sum: 4)
;; => "\"2 + 2 = ${sum}\" will become \"2 + 2 = 4\""
```
:::

## write-template

```scheme
(write-template (template : :string)
                (output : (or :port StringWriter BufferedWriter))
                key: value ...)
```

Applies the same templating process as [`apply-template`](#apply-template), but
writes to `output` rather than returning a new string

::: tip Example:
```scheme
(import (only-in :std/misc/template
                 write-template)
        (only-in :std/misc/ports
                 read-file-string))
(define output-file "/tmp/out.txt")
(call-with-output-file
 output-file
 (lambda (port)
   (write-template "Hello, ${planet}!" port planet: "Earth")))

(read-file-string output-file)
;; => "Hello, Earth!"
```
:::
