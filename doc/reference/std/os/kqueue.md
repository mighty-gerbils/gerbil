# kqueue

The `:std/os/kqueue` library provides a low-level interface to the BSD
`kqueue(2)` event notification mechanism, available on macOS, FreeBSD,
OpenBSD, and NetBSD.

::: tip To use the bindings from this module:
```scheme
(require bsd)
(import :std/os/kqueue)
```
:::

::: warning
This is a BSD-specific low-level module. Most applications should use
higher-level I/O abstractions from `:std/io` or `:std/net/socket` instead.
:::

## kqueue
```scheme
(kqueue) -> kqueue-fd
```

Creates a new kqueue instance and returns an fd representing it. The fd is
created with close-on-exec set.

## kqueue-close
```scheme
(kqueue-close kq) -> void
```

Closes the kqueue instance *kq*.

## make-kevents
```scheme
(make-kevents size) -> kevents
```

Allocates a buffer for up to *size* kevent structures.

## kevent-set!
```scheme
(kevent-set! kevts ix
             ident: ident
             filter: filter
             flags: (flags 0)
             filter-flags: (filter-flags 0)
             data: (data 0)
             user-data: (user-data #f))
=> void
```

Sets the *ix*-th kevent in the *kevts* buffer with the specified fields.

## kevent
```scheme
(kevent kqueue change-list nchanges event-list nevents) -> fixnum
```

Calls `kevent(2)` on the given *kqueue*. *change-list* is a kevents buffer with
*nchanges* changes to register, and *event-list* is a buffer to receive up to
*nevents* triggered events. Returns the number of events placed in *event-list*.

## kqueue-poll
```scheme
(kqueue-poll kqueue events nevents) -> fixnum
```

Polls *kqueue* for pending events without registering changes. Returns the
number of events placed in *events*.

## kqueue-kevent-add
```scheme
(kqueue-kevent-add kqueue dev filter (additional-flags 0) (filter-flags 0) (data 0)) -> fixnum
```

Convenience procedure to add a watch on *dev* for the given *filter* on the
*kqueue* instance.

## kqueue-kevent-del
```scheme
(kqueue-kevent-del kqueue dev filter) -> fixnum
```

Removes the watch on *dev* for the given *filter* from the *kqueue* instance.

## kqueue-kevent-disable
```scheme
(kqueue-kevent-disable kqueue dev filter) -> fixnum
```

Disables (without removing) the watch on *dev* for the given *filter*.

## kevent Accessors

| Accessor | Setter | Description |
|----------|--------|-------------|
| `kevent-ident` | `set-kevent-ident!` | Identifier for this event (fd, signal number, etc.) |
| `kevent-filter` | `set-kevent-filter!` | Filter type (`EVFILT_READ`, etc.) |
| `kevent-flags` | `set-kevent-flags!` | Action flags (`EV_ADD`, etc.) |
| `kevent-fflags` | `set-kevent-fflags!` | Filter-specific flags |
| `kevent-data` | `set-kevent-data!` | Filter-specific data |
| `kevent-udata` | `set-kevent-udata!` | User-defined data pointer |

## Flag Constants

### Action Flags

| Constant | Description |
|----------|-------------|
| `EV_ADD` | Add event to kqueue |
| `EV_ENABLE` | Enable event |
| `EV_DISABLE` | Disable event |
| `EV_DELETE` | Remove event from kqueue |
| `EV_ONESHOT` | Remove after first occurrence |
| `EV_CLEAR` | Reset state after retrieval |
| `EV_EOF` | EOF condition |
| `EV_ERROR` | Error condition |

### Filter Types

| Constant | Description |
|----------|-------------|
| `EVFILT_READ` | Readable data available |
| `EVFILT_WRITE` | Writable |
| `EVFILT_VNODE` | File system changes |
| `EVFILT_PROC` | Process events |
| `EVFILT_SIGNAL` | Signal received |
| `EVFILT_TIMER` | Timer events |

### Filter Flags (NOTE_*)

| Constant | Description |
|----------|-------------|
| `NOTE_WRITE` | File was written to |
| `NOTE_DELETE` | File was deleted |
| `NOTE_EXTEND` | File was extended |
| `NOTE_ATTRIB` | Attributes changed |
| `NOTE_LINK` | Link count changed |
| `NOTE_RENAME` | File was renamed |
| `NOTE_REVOKE` | Access revoked |
| `NOTE_EXIT` | Process exited |
| `NOTE_FORK` | Process forked |
| `NOTE_EXEC` | Process called exec |
| `NOTE_LOWAT` | Low watermark |

Additional platform-specific constants are available on each BSD variant
(OpenBSD, NetBSD, FreeBSD, macOS).
