# File Descriptor Control

The `:std/os/fcntl` library provides bindings to the POSIX `fcntl()` system
call for manipulating file descriptor flags and properties.

::: tip To use the bindings from this module:
```scheme
(import :std/os/fcntl)
```
:::

## fcntl
```scheme
(fcntl raw cmd) -> fixnum
(fcntl raw cmd arg) -> fixnum
```

Performs a file control operation on the file descriptor *raw* (either a raw
fd object or an integer). *cmd* is a `fcntl` command constant (e.g.,
`F_GETFL`, `F_SETFL`). The optional *arg* is an integer argument for commands
that require one. Returns the result of the `fcntl` call.

Raises an OS error on failure.

## fd-getfl
```scheme
(fd-getfl raw) -> fixnum
```

Returns the file status flags for the file descriptor *raw*. Equivalent to
`(fcntl raw F_GETFL)`.

## fd-setfl
```scheme
(fd-setfl raw xflags) -> fixnum
```

Adds *xflags* to the file status flags of *raw* using bitwise OR. Reads the
current flags, ORs them with *xflags*, and sets the result. Returns the
result of the `fcntl` call.

::: tip Example:
```scheme
(import :std/os/fcntl)

;; Set non-blocking mode (additive)
(fd-setfl my-fd O_NONBLOCK)
```
:::

## fd-setfl!
```scheme
(fd-setfl! raw flags) -> fixnum
```

Sets the file status flags for *raw* to exactly *flags* (replacing the
current flags entirely). Equivalent to `(fcntl raw F_SETFL flags)`.

## fd-getfd
```scheme
(fd-getfd raw) -> fixnum
```

Returns the file descriptor flags for *raw*. Equivalent to
`(fcntl raw F_GETFD)`.

## fd-setfd
```scheme
(fd-setfd raw xflags) -> fixnum
```

Adds *xflags* to the file descriptor flags of *raw* using bitwise OR.

## fd-setfd!
```scheme
(fd-setfd! raw flags) -> fixnum
```

Sets the file descriptor flags for *raw* to exactly *flags* (replacing the
current flags entirely). Equivalent to `(fcntl raw F_SETFD flags)`.

## fd-set-closeonexec
```scheme
(fd-set-closeonexec raw) -> fixnum
```

Sets the close-on-exec flag (`FD_CLOEXEC`) on the file descriptor *raw*.
This ensures the file descriptor is automatically closed when the process
calls `exec`.

## fd-set-nonblock
```scheme
(fd-set-nonblock raw) -> fixnum
```

Sets the non-blocking flag (`O_NONBLOCK`) on the file descriptor *raw*. I/O
operations on a non-blocking file descriptor return immediately if they would
otherwise block.

## fd-set-nonblock/closeonexec
```scheme
(fd-set-nonblock/closeonexec raw) -> fixnum
```

Convenience function that sets both `O_NONBLOCK` and `FD_CLOEXEC` on the
file descriptor *raw*.

## Constants

### File Open Flags

| Constant | Description |
|----------|-------------|
| `O_RDONLY` | Open for reading only |
| `O_WRONLY` | Open for writing only |
| `O_RDWR` | Open for reading and writing |
| `O_ACCMODE` | Mask for access mode |
| `O_CREAT` | Create file if it does not exist |
| `O_EXCL` | Fail if file exists (with `O_CREAT`) |
| `O_TRUNC` | Truncate file to zero length |
| `O_APPEND` | Append to file |
| `O_NONBLOCK` | Non-blocking mode |
| `O_SYNC` | Synchronous writes |
| `O_DSYNC` | Synchronous data writes |
| `O_NOCTTY` | Don't make this the controlling terminal |
| `O_NOFOLLOW` | Don't follow symlinks |
| `O_CLOEXEC` | Set close-on-exec |
| `O_DIRECT` | Direct I/O (Linux) |
| `O_NOATIME` | Don't update access time (Linux) |
| `O_TMPFILE` | Create unnamed temporary file (Linux) |

### fcntl Commands

| Constant | Description |
|----------|-------------|
| `F_GETFL` | Get file status flags |
| `F_SETFL` | Set file status flags |
| `F_GETFD` | Get file descriptor flags |
| `F_SETFD` | Set file descriptor flags |
| `F_DUPFD` | Duplicate file descriptor |

### File Descriptor Flags

| Constant | Description |
|----------|-------------|
| `FD_CLOEXEC` | Close-on-exec flag |
