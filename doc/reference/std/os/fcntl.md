## File Descriptor Control
::: tip usage
(import :std/os/fcntl)
:::

### fcntl
```
(fcntl raw cmd)
(fcntl raw cmd arg)
```

Please document me!

### fd-getfl
```
(fd-getfl raw)
```

Please document me!

### fd-setfl
```
(fd-setfl raw xflags)
```

Please document me!

### fd-setfl!
```
(fd-setfl! raw flags)
```

Please document me!

### fd-getfd
```
(fd-getfd raw)
```

Please document me!

### fd-setfd
```
(fd-setfd raw xflags)
```

Please document me!

### fd-setfd!
```
(fd-setfd! raw flags)
```

Please document me!

### fd-set-closeonexec
```
(fd-set-closeonexec raw)
```

Please document me!

### fd-set-nonblock
```
(fd-set-nonblock raw)
```

Please document me!

### fd-set-nonblock/closeonexec
```
(fd-set-nonblock/closeonexec raw)
```

Please document me!

### Constants
```
O_ACCMODE
O_APPEND
O_CLOEXEC
O_CREAT
O_DIRECT
O_DSYNC
O_EXCL
O_NOATIME
O_NOCTTY
O_NOFOLLOW
O_NONBLOCK
O_RDONLY
O_RDWR
O_SYNC
O_TMPFILE
O_TRUNC
O_WRONLY

F_GETFL
F_SETFL
F_GETFD
F_SETFD
F_DUPFD

FD_CLOEXEC
```
