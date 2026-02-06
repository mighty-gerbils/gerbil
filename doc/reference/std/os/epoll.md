# epoll

The `:std/os/epoll` library provides a low-level interface to the Linux
`epoll(7)` I/O event notification facility.

::: tip To use the bindings from this module:
```scheme
(require linux)
(import :std/os/epoll)
```
:::

::: warning
This is a Linux-specific low-level module. Most applications should use
higher-level I/O abstractions from `:std/io` or `:std/net/socket` instead.
:::

## epoll-create
```scheme
(epoll-create) -> epoll-fd
```

Creates a new epoll instance and returns an fd representing it. The fd is
created with close-on-exec set.

## epoll-ctl-add
```scheme
(epoll-ctl-add epoll dev events) -> void
```

Registers the fd *dev* on the *epoll* instance to monitor for the specified
*events* (a bitwise OR of event flags).

## epoll-ctl-mod
```scheme
(epoll-ctl-mod epoll dev events) -> void
```

Modifies the monitored events for *dev* on the *epoll* instance.

## epoll-ctl-del
```scheme
(epoll-ctl-del epoll dev) -> void
```

Removes *dev* from the *epoll* instance.

## epoll-wait
```scheme
(epoll-wait epoll evts maxevts) -> fixnum
```

Waits for events on the *epoll* instance. *evts* is an event buffer created
with `make-epoll-events`, and *maxevts* is the maximum number of events to
return. Returns the number of ready events, or retries on `EINTR`.

## make-epoll-events
```scheme
(make-epoll-events size) -> epoll-events
```

Allocates a buffer for up to *size* epoll events.

## epoll-event-fd
```scheme
(epoll-event-fd evts k) -> fixnum
```

Returns the file descriptor for the *k*-th event in *evts* (0-indexed).

## epoll-event-events
```scheme
(epoll-event-events evts k) -> fixnum
```

Returns the event flags for the *k*-th event in *evts* (0-indexed).

## Event Flag Constants

| Constant | Description |
|----------|-------------|
| `EPOLLIN` | Ready for reading |
| `EPOLLOUT` | Ready for writing |
| `EPOLLERR` | Error condition |
| `EPOLLHUP` | Hang up |
| `EPOLLET` | Edge-triggered mode |
| `EPOLLONESHOT` | One-shot mode |
