# Text Encoding and Decoding

## Base64
::: tip usage
(import :std/text/base64)
:::

### base64-encode
::: tip usage
```
(base64-encode ...)
```
:::

Please document me!

### base64-encode-subu8vector
::: tip usage
```
(base64-encode-subu8vector ...)
```
:::

Please document me!

### u8vector-&gt;base64-string
::: tip usage
```
(u8vector->base64-string ...)
```
:::

Please document me!

### subu8vector-&gt;base64-string
::: tip usage
```
(subu8vector->base64-string ...)
```
:::

Please document me!

### base64-decode
::: tip usage
```
(base64-decode ...)
```
:::

Please document me!

### base64-decode-substring
::: tip usage
```
(base64-decode-substring ...)
```
:::

Please document me!

### base64-substring-&gt;u8vector
::: tip usage
```
(base64-substring->u8vector ...)
```
:::

Please document me!

### base64-string-&gt;u8vector
::: tip usage
```
(base64-string->u8vector ...)
```
:::

Please document me!



## Base58
The `:std/text/base58` library provides encoding and decoding to base58.

::: tip usage
(import :std/text/base58)
:::

### base58-encode
::: tip usage
```
(base58-encode bytes [alphabet = base58-btc-alphabet])
  bytes := u8vector
  alphabet := encoding alphabet
=> string
```
:::

Base58 encodes a u8vector, using the given alphabet.

### base58-decode
::: tip usage
```
(base58-decode str [alphabet = base58-btc-alphabet])
  str := string; base58 encoded
  alphabet := decoding alphabet
=> u8vetor
```
:::

Base58 decodes a string, using the given alphabet

### base58-btc-alphabet
```
(def base58-btc-alphabet)
```

The base58 encoding alphabet used by Bitcoin.

### base58-flickr-alphabet
::: tip usage
(def base58-flickr-alphabet)
:::

The base58 encoding alphabet used by Flickr.


## CSV

CSV parser and unparser.

::: tip usage
(import :std/text/csv)
:::

### Overview
It is configurable through parameters to fit whichever CSV options your files use,
defaulting to the "standard" from the creativyst specification.
Parameters for RFC4180 are just a call-with- function call around.

The parameters are: `csv-separator` `csv-quote` `csv-unquoted-quotequote?` `csv-loose-quote?`
`csv-eol` `csv-line-endings` `csv-skip-whitespace?` `csv-allow-binary?`

Functions to locally set the parameters to known values are `call-with-creativyst-csv-syntax` `call-with-rfc4180-csv-syntax` `call-with-strict-rfc4180-csv-syntax`

The parsing and unparsing functions are `read-csv-line` `read-csv-lines` `read-csv-file` `write-csv-line` `write-csv-lines`.

### read-csv-line
::: tip usage
```
(read-csv-line ...)
```
:::

Please document me!

### read-csv-lines
::: tip usage
```
(read-csv-lines ...)
```
:::

Please document me!

### read-csv-file
::: tip usage
```
(read-csv-file ...)
```
:::

Please document me!

### write-csv-line
::: tip usage
```
(write-csv-line ...)
```
:::

Please document me!

### write-csv-lines
::: tip usage
```
(write-csv-lines ...)
```
:::

Please document me!

### call-with-creativyst-csv-syntax
::: tip usage
```
(call-with-creativyst-csv-syntax ...)
```
:::

Please document me!

### call-with-rfc4180-csv-syntax
::: tip usage
```
(call-with-rfc4180-csv-syntax ...)
```
:::

Please document me!

### call-with-strict-rfc4180-csv-syntax
::: tip usage
```
(call-with-strict-rfc4180-csv-syntax ...)
```
:::

Please document me!

### csv-separator
::: tip usage
```
(csv-separator ...)
```
:::

Please document me!

### csv-quote
::: tip usage
```
(csv-quote ...)
```
:::

Please document me!

### csv-unquoted-quotequote?
::: tip usage
```
(csv-unquoted-quotequote? ...)
```
:::

Please document me!

### csv-loose-quote?
::: tip usage
```
(csv-loose-quote? ...)
```
:::

Please document me!

### csv-eol
::: tip usage
```
(csv-eol ...)
```
:::

Please document me!

### csv-line-endings
::: tip usage
```
(csv-line-endings ...)
```
:::

Please document me!

### csv-skip-whitespace?
::: tip usage
```
(csv-skip-whitespace? ...)
```
:::

Please document me!

### csv-allow-binary?
::: tip usage
```
(csv-allow-binary? ...)
```
:::

Please document me!


## Hex
::: tip usage
(import :std/text/hex)
:::

### hex-encode
::: tip usage
```
(hex-encode ...)
```
:::

Please document me!

### hexlify
```
(defialias hexlify hex-encode)
```

Please document me!

### hex-decode
::: tip usage
```
(hex-decode ...)
```
:::

Please document me!

### unhexlify
```
(defalias unhexlify hex-decode)
```

Please document me!

### hex
::: tip usage
```
(hex ...)
```
:::

Please document me!

### unhex
::: tip usage
```
(unhex ...)
```
:::

Please document me!

### unhex*
::: tip usage
```
(unhex* ...)
```
:::

Please document me!


## JSON
::: tip usage
(import :std/text/json)
:::

### read-json
::: tip usage
```
(read-json ...)
```
:::

Please document me!

### write-json
::: tip usage
```
(write-json ...)
```
:::

Please document me!

### string-&gt;json-object
::: tip usage
```
(string->json-object ...)
```
:::

Please document me!

### json-object-&gt;string
::: tip usage
```
(json-object->string ...)
```
:::

Please document me!

### json-symbolic-keys
::: tip usage
```
(json-symbolic-keys ...)
```
:::

Please document me!



## UTF8
Faster UTF8 encoding and decoding.

::: tip usage
(import :std/text/utf8)
:::

### string-&gt;utf8
::: tip usage
```
(string->utf8 ...)
```
:::

Please document me!

### utf8-&gt;string
::: tip usage
```
(utf8->string ...)
```
:::

Please document me!

### utf8-encode
::: tip usage
```
(utf8-encode ...)
```
:::

Please document me!

### utf8-decode
::: tip usage
```
(utf8-decode ...)
```
:::

Please document me!

### string-utf8-length
::: tip usage
```
(string-utf8-length ...)
```
:::

Please document me!



## YAML
YAML parsing and dumping; requires libyaml.

::: tip usage
(import :std/text/yaml)
:::

### yaml-load
::: tip usage
```
(yaml-load filename)
  filename := string
=> any
```
:::

Loads a YAML file.

### yaml-load-string
::: tip usage
```
(yaml-load-string str)
  str := string
=> any
```
:::

Parses a YAML string.

### yaml-dump
::: tip usage
```
(yaml-dump filename . args)
  filename := string
```
:::

Dumps the arguments to a YAML file.


## Zlib
Compression and decompression with zlib.

::: tip usage
(import :std/text/zlib)
:::


### compress
::: tip usage
```
(compress ...)
```
:::

Please document me!

### compress-gz
::: tip usage
```
(compress-gz ...)
```
:::

Please document me!

### uncompress
::: tip usage
```
(uncompress ...)
```
:::

Please document me!
