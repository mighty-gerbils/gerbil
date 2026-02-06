# PIDs

The `:std/os/pid` library provides access to POSIX process identification.

::: tip To use the bindings from this module:
```scheme
(import :std/os/pid)
```
:::

## getpid
```scheme
(getpid) -> fixnum
```

Returns the process ID of the current process. This is a direct binding to the
POSIX `getpid(2)` system call.

::: tip Example:
```scheme
> (import :std/os/pid)
> (getpid)
12345
```
:::

## getppid
```scheme
(getppid) -> fixnum
```

Returns the process ID of the parent of the current process. This is a direct
binding to the POSIX `getppid(2)` system call.

::: tip Example:
```scheme
> (import :std/os/pid)
> (getppid)
12344
```
:::
