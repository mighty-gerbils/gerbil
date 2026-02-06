# File Descriptors

The `:std/os/fd` library provides an abstraction for working with raw file
descriptors as Gambit port objects. This allows file descriptors obtained from
system calls (like `open`, `socket`, etc.) to be integrated with Gambit's I/O
system.

::: tip To use the bindings from this module:
```scheme
(import :std/os/fd)
```
:::

## fdopen
```scheme
(fdopen fd dir t) -> port
```

Creates a raw device port from the integer file descriptor *fd*. The *dir*
argument specifies the direction: `'in` for input, `'out` for output, or
`'inout` for bidirectional. The *t* argument is a symbol identifying the
type of the device (e.g., `'file`, `'socket`).

The returned port can be used with standard Gambit I/O operations.

::: tip Example:
```scheme
(import :std/os/fd :std/os/fdio)

;; Open a file and get a raw device port
(def raw (open "/tmp/test" O_RDONLY))
(fd? raw)  ;; => #t
```
:::

## fdopen-port
```scheme
(fdopen-port fd dir name) -> port
```

Creates a predefined Gambit port from the integer file descriptor *fd*. The
*dir* argument specifies the direction (`'in`, `'out`, or `'inout`), and
*name* is a string name for the port. This uses `##open-predefined` to create
a standard buffered port.

## fd-e
```scheme
(fd-e raw) -> fixnum
```

Returns the underlying integer file descriptor from a raw device port *raw*.

::: tip Example:
```scheme
(import :std/os/fd :std/os/fdio)

(def raw (open "/tmp/test" O_RDONLY))
(fd-e raw)  ;; => 3 (or similar integer)
```
:::

## fd-io-in
```scheme
(fd-io-in raw) -> condvar
```

Returns the I/O condition variable for input readiness on the raw device
port *raw*. This can be used with `:std/event` for event-driven I/O.

## fd-io-out
```scheme
(fd-io-out raw) -> condvar
```

Returns the I/O condition variable for output readiness on the raw device
port *raw*.

## fd?
```scheme
(fd? obj) -> boolean
```

Returns `#t` if *obj* is a raw device port (created by `fdopen` or similar).

## fd-type?
```scheme
(fd-type? obj t) -> boolean
```

Returns `#t` if *obj* is a raw device port with type *t*.

::: tip Example:
```scheme
(fd-type? raw 'socket)  ;; => #t if raw is a socket
(fd-type? raw 'file)    ;; => #t if raw is a file
```
:::

## fd-type
```scheme
(fd-type raw) -> symbol
```

Returns the type symbol of the raw device port *raw* (e.g., `'file`,
`'socket`).
