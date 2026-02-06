# Error Handling

The `:std/os/error` library provides OS-level error handling utilities for
working with POSIX system call errors (errno values).

::: tip To use the bindings from this module:
```scheme
(import :std/os/error)
```
:::

## raise-os-error
```scheme
(raise-os-error where errno irritants ...)
```

Raises an `OSError` exception with a human-readable message obtained from
`strerror`. The *where* argument identifies the calling procedure, *errno* is
the POSIX error number (may be negative — it is normalized to positive), and
*irritants* are additional context values included in the exception.

## os-error?
```scheme
(os-error? obj) -> boolean
```

Returns `#t` if *obj* is an `OSError` exception raised by `raise-os-error`
or `check-os-error`.

## os-error-errno
```scheme
(os-error-errno err) -> fixnum
```

Returns the POSIX errno value from an `OSError` exception.

## check-os-error
```scheme
(check-os-error expr (prim arg ...))
```

Macro that evaluates *expr* (which should be a system call returning a
fixnum). If the result is non-negative, returns it. If negative (indicating
an error), raises an OS error using *prim* as the caller context and *arg*
values as irritants.

::: tip Example:
```scheme
(import :std/os/error)

;; Typical usage wrapping a raw FFI call
(check-os-error (_open path flags mode)
  (open path flags mode))
```
:::

## do-retry-nonblock
```scheme
(do-retry-nonblock expr (prim arg ...) ERRNO ...)
```

Macro for non-blocking I/O operations. Evaluates *expr* and:
- If the result is non-negative, returns it
- If the errno matches one of the listed *ERRNO* values (typically `EAGAIN`
  or `EWOULDBLOCK`), returns `#f` (operation would block)
- If the errno is `EINTR` (interrupted), retries the operation
- Otherwise raises an OS error

::: tip Example:
```scheme
(import :std/os/error)

(do-retry-nonblock (_read fd bytes start end)
  (fdread raw bytes start end)
  EAGAIN EWOULDBLOCK)
```
:::

## check-ptr
```scheme
(check-ptr (make arg ...))
```

Macro that calls the foreign allocation function *make* with the given
arguments. If the result is `#f` (allocation failure), raises a
`foreign-allocation-error`. Otherwise returns the allocated pointer.

## foreign-allocation-error?
```scheme
(foreign-allocation-error? obj) -> boolean
```

Returns `#t` if *obj* is a foreign allocation error exception, raised when
a C memory allocation (such as `malloc`) returns `NULL`.

## strerror
```scheme
(strerror errno) -> string
```

Returns a human-readable error message string for the POSIX errno value
*errno*. This is a binding to the C `strerror()` function.

::: tip Example:
```scheme
(import :std/os/error)

(strerror ENOENT)  ;; => "No such file or directory"
(strerror EACCES)  ;; => "Permission denied"
```
:::

## Constants

Standard POSIX errno constants:

| Constant | Description |
|----------|-------------|
| `EPERM` | Operation not permitted |
| `ENOENT` | No such file or directory |
| `ESRCH` | No such process |
| `EINTR` | Interrupted system call |
| `EIO` | Input/output error |
| `ENXIO` | No such device or address |
| `E2BIG` | Argument list too long |
| `ENOEXEC` | Exec format error |
| `EBADF` | Bad file descriptor |
| `ECHILD` | No child processes |
| `EAGAIN` | Resource temporarily unavailable |
| `ENOMEM` | Cannot allocate memory |
| `EACCES` | Permission denied |
| `EFAULT` | Bad address |
| `ENOTBLK` | Block device required |
| `EBUSY` | Device or resource busy |
| `EEXIST` | File exists |
| `EXDEV` | Invalid cross-device link |
| `ENODEV` | No such device |
| `ENOTDIR` | Not a directory |
| `EISDIR` | Is a directory |
| `EINVAL` | Invalid argument |
| `ENFILE` | Too many open files in system |
| `EMFILE` | Too many open files |
| `ENOTTY` | Inappropriate ioctl for device |
| `ETXTBSY` | Text file busy |
| `EFBIG` | File too large |
| `ENOSPC` | No space left on device |
| `ESPIPE` | Illegal seek |
| `EROFS` | Read-only file system |
| `EMLINK` | Too many links |
| `EPIPE` | Broken pipe |
| `EDOM` | Numerical argument out of domain |
| `ERANGE` | Numerical result out of range |
| `EINPROGRESS` | Operation now in progress |
| `EWOULDBLOCK` | Operation would block |
| `ECONNABORTED` | Software caused connection abort |
| `ECONNREFUSED` | Connection refused |
| `ECONNRESET` | Connection reset by peer |
