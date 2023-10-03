# File Descriptor I/O
::: tip To Use bindings from this module
(import :std/os/fdio)
:::

## open
```
(open path flags (mode 0))
```

Please document me!

## close
```
(close raw)
```

Please document me!

## fdread
```
(fdread raw bytes (start 0) (end (u8vector-length bytes)))
```

Please document me!

## fdwrite
```
(fdwrite raw bytes (start 0) (end (u8vector-length bytes)))
```

Please document me!


## Constants
```
S_IRWXU S_IWUSR S_IRUSR S_IXUSR
S_IRWXG S_IRGRP S_IWGRP S_IXGRP
S_IRWXO S_IROTH S_IWOTH S_IXOTH
```
