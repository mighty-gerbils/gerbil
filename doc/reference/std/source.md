# Source Location and Ancillary Source File Support

The `:std/source` library provides common macros to access
the source location of code being read, interpreted or compiled, and to
ancillary files next to the source files proper,
that may provide data used at either runtime or compile-time.

::: tip To use the bindings from this module:
```scheme
(import :std/source)
```
:::

## this-source-location
```scheme
(this-source-location [context])
```

Expands to the location of the supplied `context` source form,
or to the `this-source-location` invocation itself if left implicit.

The location is a vector `#(file pos)` in standard Gambit fashion:
 - `file` is either a string with the file name from which the source was read,
    or if it was not read from a file, something such as the list `(stdin)`.
 - `pos` is a positive fixnum of the form `(+ (* column 65536) line)`
    where both the `line` and `column` start at zero
    (whereas most other software including e.g. Emacs count line from one,
    and Emacs counts column from 0), if line and column are both under 65536,
    or else a negative integer, the opposite of the file or port position.

::: tip Examples:
```scheme
> (quotient (vector-ref (this-source-location) 1) 65536)
23
```
:::

## this-source-file
```scheme
(this-source-file [context])
```

Expands to the file path of the supplied `context` source form,
or to the `this-source-file` invocation itself if left implicit.

::: tip Examples:
```scheme
#!/usr/bin/env gxi
(import :std/source)
(def $0 (this-source-file))
;;; Now you can play with this source file at runtime.
```
:::

## this-source-directory
```scheme
(this-source-directory [context])
```

Expands to the file directory path of the supplied `context` source form,
or to the `this-source-directory` invocation itself if left implicit,
so you can play with it at runtime.

::: tip Examples:
```scheme
#!/usr/bin/env gxi
(import :std/source :std/misc/path :std/misc/ports)
(def $this-dir (this-source-directory))
(def data (read-all-as-lines (subpath $this-dir "data.txt")))
```
:::

## this-source-path
```scheme
(this-source-path [context] relpath)
```

Given the `source-file` the supplied `context` source form was read from,
return the expanded path relative to the `path-directory` of that `source-file`
under the `relpath` relative path.

::: tip Examples:
```scheme
#!/usr/bin/env gxi
(import :std/source :std/misc/ports)
(def data (read-all-as-lines (this-source-path "data.txt")))
```
:::

## this-source-content
```scheme
(this-source-content [context] relpath)
```

Given the `source-file` the supplied `context` source form was read from,
return as a u8vector the content of a file relative to the
`path-directory` of that `source-file`,
burnt into your object file at compile time,
so the ancillary file doesn't have to exist anymore at runtime.

You may find creative uses of [`syntax-call`](sugar.md#syntax-call) and
and [`syntax-eval`](sugar.md#syntax-eval) to further manipulate data
at compile-time.
