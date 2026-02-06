# Advisory File Locking

The `:std/os/flock` library provides advisory file locking using the POSIX
`flock(2)` system call. It also provides convenience procedures for opening
files with an advisory lock.

::: tip To use the bindings from this module:
```scheme
(import :std/os/flock)
```
:::

## flock
```scheme
(flock raw op) -> boolean
```

Attempts a non-blocking advisory lock operation on *raw*, which can be either
an `fd` object or a raw file descriptor integer. The *op* argument specifies
the lock operation (`LOCK_SH`, `LOCK_EX`, or `LOCK_UN`).

Returns `#t` if the lock was acquired or released successfully, `#f` if the
lock could not be acquired immediately (would block).

## flock/block
```scheme
(flock/block raw-or-fd op (timeout #f)) -> void
```

Performs a blocking advisory lock operation. Polls with `flock` until the lock
is acquired. If *timeout* is specified, it can be:

- `#f`: Wait indefinitely
- A real number: Relative timeout in seconds from now
- A `time` object: Absolute deadline

Raises an error if the deadline is exceeded before the lock is acquired.

## open-input-file/lock
```scheme
(open-input-file/lock path (timeout #f)
                       op: (op LOCK_SH)
                       flags: (flags O_RDONLY))
=> port
```

Opens *path* for reading with a shared lock (`LOCK_SH` by default). The lock
is released automatically when the port is closed.

::: tip Example:
```scheme
(import :std/os/flock)
(let (port (open-input-file/lock "/tmp/data.txt"))
  (try (read-line port)
    (finally (close-port port))))
```
:::

## open-output-file/lock
```scheme
(open-output-file/lock path (timeout #f)
                        op: (op LOCK_EX)
                        flags: (flags (fxior O_WRONLY O_CREAT))
                        mode: (mode S_IRWXU))
=> port
```

Opens *path* for writing with an exclusive lock (`LOCK_EX` by default). Creates
the file if it does not exist. The lock is released automatically when the port
is closed.

::: tip Example:
```scheme
(import :std/os/flock)
(let (port (open-output-file/lock "/tmp/data.txt"))
  (try (display "hello" port)
    (finally (close-port port))))
```
:::

## open-file/lock
```scheme
(open-file/lock path op (timeout #f)
                direction: dir
                flags: flags
                mode: mode)
=> port
```

Opens *path* with the specified lock operation, direction (`'in` or `'out`),
flags, and mode. The lock is released automatically when the port is closed.

## open/lock
```scheme
(open/lock path op (timeout #f)
           flags: flags
           mode: mode)
=> fd
```

Opens *path* and acquires an advisory lock, returning a raw `fd` object.
Unlike `open-file/lock`, this returns an fd rather than a port, so you must
release the lock and close the fd manually.

## Constants

| Constant | Description |
|----------|-------------|
| `LOCK_SH` | Shared lock (multiple readers) |
| `LOCK_EX` | Exclusive lock (single writer) |
| `LOCK_UN` | Unlock |
