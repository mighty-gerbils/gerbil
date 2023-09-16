# Zlib
Compression and decompression with zlib.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/zlib)
```
:::


## compress
``` scheme
(compress data [level = 6]) -> u8vector | string | port | error

  data  := u8vector, string or input-port
  level := optional integer value, from 0 to 9
```

Compresses given *data* using zlib. The return value varies by given *data*'s
 type. If given u8vector the return value is newly allocated u8vector with
 contents of data compressed. Signals a error on wrong type of *data*.

The optional *level* parameter sets the compression level used. Value of 1 gives
best speed, 9 gives best compression, 0 gives no compression at all (the input
data is simply copied a block at a time).

## compress-gz
``` scheme
(compress-gz data [level = 6]) -> u8vector | string | input-port | error

  data  := u8vector, string, or input-port
  level := optional integer value, from 0 to 9
```

Compresses data given in *data* as `compress` procedure but in addition gzip
encodes it. Signals a error on wrong type of *data*.

## uncompress
``` scheme
(uncompress data) -> u8vector | error

  data := u8vector or input-port
```

Returns uncompressed bytes from *data*. Signals a error on wrong type of *data*.
