# Error Handling
::: tip usage
(import :std/os/error)
:::

## raise-os-error
```
(raise-os-error where errno irritants ...)
```

Please document me!

## os-error?
```
(os-error? obj)
```

Please document me!

## check-os-error
```
(check-os-error expr (prim arg ...))
```

Please document me!

## do-retry-nonblock
```
(do-retry-nonblock expr (prim arg ...) ERRNO ...)
```

Please document me!

## check-ptr
```
(check-ptr (make arg ...))
```

Please document me!

## foreign-allocation-error?
```
(foreign-allocation-error? obj)
```

Please document me!


## strerror
```
(strerror errno) -> string
```
Please document me!

## Constants
```
EAGAIN
EINTR
EINPROGRESS
EWOULDBLOCK
EBADF
ECONNABORTED
ECONNREFUSED
ECONNRESET
```
