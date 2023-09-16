# Operating System Interfaces

The following library modules provide interfaces to the Operating System,
through system calls.

POSIX:
- [:std/os/error](error.md)
- [:std/os/socket](socket.md)
- [:std/os/fd](fd.md)
- [:std/os/fdio](fdio.md)
- [:std/os/fcntl](fcntl.md)
- [:std/os/flock](flock.md)
- [:std/os/socket](socket.md)
- [:std/os/pipe](pipe.md)
- [:std/os/signal](signal.md)
- [:std/os/signal-handler](signal-handler.md)
- [:std/os/hostname](hostname.md)
- [:std/os/temporaries](temporaries.md)

OS-specific:
- [:std/os/signalfd](signalfd.md) (Linux)
- [:std/os/inotfy](inotify.md) (Linux)
- [:std/os/epoll](epoll.md) (Linux)
- [:std/os/kqueue](kqueue.md) (BSD, Darwin)
