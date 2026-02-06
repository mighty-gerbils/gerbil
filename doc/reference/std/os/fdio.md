# File Descriptor I/O

The `:std/os/fdio` library provides low-level I/O operations on file
descriptors, including `open`, `close`, `read`, and `write`.

::: tip To use the bindings from this module:
```scheme
(import :std/os/fdio)
```
:::

## open
```scheme
(open path flags (mode 0)) -> fd
```

Opens the file at *path* with the given *flags* (from `:std/os/fcntl`, e.g.,
`O_RDONLY`, `O_WRONLY`, `O_CREAT`). The optional *mode* specifies the file
permissions when creating a new file (default `0`).

The returned value is a raw device port (see `:std/os/fd`). On Linux,
`O_NONBLOCK` and `O_CLOEXEC` are added automatically. On other platforms,
`fd-set-nonblock/closeonexec` is called after opening.

::: tip Example:
```scheme
(import :std/os/fdio :std/os/fcntl)

;; Open for reading
(def f (open "/etc/hostname" O_RDONLY))

;; Create and write
(def f (open "/tmp/output.txt" (fxior O_WRONLY O_CREAT O_TRUNC)
             (fxior S_IRUSR S_IWUSR)))
```
:::

## close
```scheme
(close raw) -> void
```

Closes the file descriptor *raw*. If *raw* is a raw device port (`fd?`
returns `#t`), calls `close-port`. Otherwise performs a raw `close` system
call with retry on `EINTR`.

## fdread
```scheme
(fdread raw bytes (start 0) (end (u8vector-length bytes))) -> fixnum | #f
```

Reads from the file descriptor *raw* into the byte vector *bytes*, starting
at offset *start* up to *end*. Returns the number of bytes read, or `#f` if
the operation would block (non-blocking mode). Automatically retries on
`EINTR`.

::: tip Example:
```scheme
(import :std/os/fdio :std/os/fcntl)

(def f (open "/etc/hostname" O_RDONLY))
(def buf (make-u8vector 256))
(def n (fdread f buf))
;; n is the number of bytes read
```
:::

## fdwrite
```scheme
(fdwrite raw bytes (start 0) (end (u8vector-length bytes))) -> fixnum | #f
```

Writes to the file descriptor *raw* from the byte vector *bytes*, starting
at offset *start* up to *end*. Returns the number of bytes written, or `#f`
if the operation would block (non-blocking mode). Automatically retries on
`EINTR`.

## fdsync
```scheme
(fdsync raw) -> void
```

Flushes all modified data of the file descriptor *raw* to the storage device.
Wraps the POSIX `fsync()` system call.

## fdseek
```scheme
(fdseek raw position from) -> fixnum
```

Repositions the file offset of the file descriptor *raw*. The *position* is
an integer offset, and *from* is one of:
- `'start` — relative to the beginning of the file
- `'current` — relative to the current position
- `'end` — relative to the end of the file

Returns the new file offset.

## Constants

### File Permission Modes

| Constant | Description |
|----------|-------------|
| `S_IRWXU` | Owner read, write, execute |
| `S_IRUSR` | Owner read |
| `S_IWUSR` | Owner write |
| `S_IXUSR` | Owner execute |
| `S_IRWXG` | Group read, write, execute |
| `S_IRGRP` | Group read |
| `S_IWGRP` | Group write |
| `S_IXGRP` | Group execute |
| `S_IRWXO` | Others read, write, execute |
| `S_IROTH` | Others read |
| `S_IWOTH` | Others write |
| `S_IXOTH` | Others execute |
