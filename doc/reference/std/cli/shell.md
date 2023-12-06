# Shell Command Support

The `:std/cli/shell` library provides facilities for working with Unix shell code

::: tip usage
```scheme
(import :std/cli/shell)
```
:::

An earlier version of this library used to be available as `:clan/shell`
in gerbil-utils.

## Interface

### easy-shell-character?
```scheme
(easy-shell-character? character) => bool
```

Returns true if the `character` if a string may contain the character in any position
without that this fact requiring the string to be quoted in any shell.
This include alphanumeric characters and those in `"%+,-./:=@_"`
(not including the double quotes).

All other ASCII characters may require the string to be quoted in some circumstances.
For good measure we also quote strings containing non-ASCII characters.

::: tip Examples:
```scheme
> (string-for-each (lambda (c) (or (easy-shell-character? c) (error "foo")))
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@%+,-./:=@_") ;; no error
> (string-for-each (lambda (c) (or (not (easy-shell-character? c)) (error "foo")))
    "!`~#$^&*()[{]}\\|;'\"<>? \r\n\t\v") ;; no error either
```
:::

### needs-shell-escape?
```scheme
(needs-shell-escape? string) => bool
```
Returns true if the `string` contains any character known or suspected
to sometimes or always require quoting in any Unix shell.

The current implementation only trusts strings where every character
satisfies `easy-shell-character?` to not require quoting.

::: tip Examples:
```scheme
> (andmap needs-shell-escape? ["foo?" "~user" "$1" "*.*" "!1" "ab\\cd" "{}" "a;b" "&amp;" "|" "a b  c"])
#t
> (ormap needs-shell-escape? ["foo" "%-_=+:,./" "1" "..." "abcd" "x=y:z,t.z/u+v_w"])
#f
```
:::

### escape-shell-token
```scheme
(escape-shell-token string) => shell-escaped-string
```
Given a `string`, returns a shell-escaped-string that,
when included in a Unix shell command, will expand into the input `string`.

::: tip Examples:
```scheme
> (map escape-shell-token ["foo?" "~user" "$1" "*.*" "!1" "ab\\cd" "{}" "a;b" "&amp;" "|" "a b  c"])
("\"foo?\"" "\"~user\"" "\"\\$1\"" "\"*.*\"" "\"!1\"" "\"ab\\\\cd\"" "\"{}\"" "\"a;b\"" "\"&amp;\"" "\"|\"" "\"a b  c\"")
> (let (l ["foo" "%-_=+:,./" "1" "..." "abcd" "x=y:z,t.z/u+v_w"])
    (equal? l (map escape-shell-token l)))
#t
```
:::

### ->envvar
```scheme
(->envvar . str) => environment-variable-name
```
Given a list of arguments `str`, return a string to be used as
a shell environment variable name following the convention of having
only upper-case ASCII letters and digits and underscores.

The arguments are passed to `as-string` then uppercased, and
any non-empty sequence of characters other than letters and digits
are replaced by a single underscore.

::: tip Examples:
``` scheme
> (->envvar "foo")
"FOO"
> (->envvar "bar baz")
"BAR_BAZ"
> (->envvar '("bar " "+!@#$") #(#\@ #\! "#") "baz")
"BAR_BAZ"
```
:::
