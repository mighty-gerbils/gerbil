# inotify

The `:std/os/inotify` library provides an interface to the Linux `inotify(7)`
filesystem event notification mechanism.

::: tip To use the bindings from this module:
```scheme
(require linux)
(import :std/os/inotify)
```
:::

::: warning
This is a Linux-specific module.
:::

## inotify-init
```scheme
(inotify-init) -> inotify-fd
```

Creates a new inotify instance and returns an fd representing it. The fd is
created in non-blocking mode with close-on-exec set.

## inotify?
```scheme
(inotify? obj) -> boolean
```

Returns `#t` if *obj* is an inotify fd, `#f` otherwise.

## inotify-close
```scheme
(inotify-close in) -> void
```

Closes the inotify instance *in*.

## inotify-add-watch
```scheme
(inotify-add-watch in path mask) -> fixnum
```

Adds a watch on the file or directory at *path* for the events specified in
*mask* (a bitwise OR of event constants). Returns a watch descriptor that
can be used with `inotify-rm-watch`.

::: tip Example:
```scheme
(import :std/os/inotify)
(def in (inotify-init))
(def wd (inotify-add-watch in "/tmp" (fxior IN_CREATE IN_DELETE)))
```
:::

## inotify-rm-watch
```scheme
(inotify-rm-watch in wd) -> void
```

Removes the watch associated with watch descriptor *wd* from the inotify
instance *in*.

## inotify
```scheme
(inotify in (timeo #f)) -> list or #f
```

Reads events from the inotify instance *in*. Returns a list of
`inotify-event` structs. If *timeo* is specified, it is a timeout after
which `#f` is returned if no events are available.

::: tip Example:
```scheme
(import :std/os/inotify)
(def in (inotify-init))
(def wd (inotify-add-watch in "/tmp" IN_CREATE))
;; ... create a file in /tmp ...
(def events (inotify in 5))  ;; wait up to 5 seconds
(when events
  (for-each (lambda (ev)
              (displayln "event: " (inotify-event-name ev)
                         " mask: " (inotify-event-mask ev)))
            events))
```
:::

## inotify-event

An `inotify-event` struct with the following accessors:

| Accessor | Description |
|----------|-------------|
| `inotify-event-wd` | Watch descriptor |
| `inotify-event-mask` | Event mask (bitwise OR of event constants) |
| `inotify-event-cookie` | Cookie for correlating `IN_MOVED_FROM`/`IN_MOVED_TO` |
| `inotify-event-name` | Filename (for directory watches), or `#f` |

## Event Constants

### File Events

| Constant | Description |
|----------|-------------|
| `IN_ACCESS` | File was accessed |
| `IN_ATTRIB` | Metadata changed |
| `IN_CLOSE_WRITE` | File opened for writing was closed |
| `IN_CLOSE_NOWRITE` | File not opened for writing was closed |
| `IN_CREATE` | File/directory created in watched directory |
| `IN_DELETE` | File/directory deleted from watched directory |
| `IN_DELETE_SELF` | Watched file/directory itself was deleted |
| `IN_MODIFY` | File was modified |
| `IN_MOVE_SELF` | Watched file/directory itself was moved |
| `IN_MOVED_FROM` | File moved out of watched directory |
| `IN_MOVED_TO` | File moved into watched directory |
| `IN_OPEN` | File was opened |

### Convenience Constants

| Constant | Description |
|----------|-------------|
| `IN_ALL_EVENTS` | All of the above events |
| `IN_MOVE` | `IN_MOVED_FROM` or `IN_MOVED_TO` |
| `IN_CLOSE` | `IN_CLOSE_WRITE` or `IN_CLOSE_NOWRITE` |

### Watch Flags

| Constant | Description |
|----------|-------------|
| `IN_DONT_FOLLOW` | Don't follow symlinks |
| `IN_EXCL_UNLINK` | Exclude events for unlinked children |
| `IN_MASK_ADD` | Add events to existing watch mask |
| `IN_ONESHOT` | Monitor for only one event, then remove |
| `IN_ONLYDIR` | Only watch if target is a directory |

### Event Info Flags

| Constant | Description |
|----------|-------------|
| `IN_IGNORED` | Watch was removed |
| `IN_ISDIR` | Event subject is a directory |
| `IN_Q_OVERFLOW` | Event queue overflowed |
| `IN_UNMOUNT` | Filesystem containing watched object was unmounted |
