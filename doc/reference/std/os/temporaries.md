# Temporary Files
::: tip usage
```scheme
(import :std/os/temporaries)
```
:::

## make-temporary-file-name
```scheme
(make-temporary-file-name name) -> string

  name := string; prefix of temporary filename in /tmp
```

Creates a new temporary file name in /tmp and with name prefix `name`.
It makes  `mktemp` sane by appending the current timestamp in nanosecods.

## call-with-temporary-file-name
```scheme
(call-with-temporary-file-name name fun) -> any
  name := string; prefix of temporary filename in /tmp
  fun := lambda (string) -> any
```

Creates a temporary filename and invokes `fun` with it, deleting the
temporary file on unwind if it has been created.
