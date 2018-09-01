# Text Encoding and Decoding libraries.

## std/text/base64
Base64 encoding and decoding.

```
(import :std/text/base64)

;; exports:

  base64-string->u8vector
  base64-substring->u8vector
  u8vector->base64-string
  subu8vector->base64-string)
  base64-decode base64-decode-substring
  base64-encode base64-encode-subu8vector
```

## std/text/csv

CSV parser and unparser.
It is configurable through parameters to fit whichever CSV options your files use,
defaulting to the "standard" from the creativyst specification.
Parameters for RFC4180 are just a call-with- function call around.

The parameters are: `csv-separator` `csv-quote` `csv-unquoted-quotequote?` `csv-loose-quote?`
`csv-eol` `csv-line-endings` `csv-skip-whitespace?` `csv-allow-binary?`

Functions to locally set the parameters to known values are `call-with-creativyst-csv-syntax` `call-with-rfc4180-csv-syntax` `call-with-strict-rfc4180-csv-syntax`

The parsing and unparsing functions are `read-csv-line` `read-csv-lines` `read-csv-file` `write-csv-line` `write-csv-lines`.

```
(import :std/text/csv)

;; exports:

  csv-separator csv-quote csv-unquoted-quotequote? csv-loose-quote?
  csv-eol csv-line-endings csv-skip-whitespace?
  csv-allow-binary?
  call-with-creativyst-csv-syntax call-with-rfc4180-csv-syntax call-with-strict-rfc4180-csv-syntax
  read-csv-line read-csv-lines read-csv-file write-csv-line write-csv-lines
```

## std/text/hex
Hex encoding and decoding.

```
(import :std/text/hex)

;; exports:

  hex-encode hexlify
  hex-decode unhexlify
  hex unhex unhex*
```

## std/text/json
JSON encoding and decoding.

```
(import :std/text/json)

;; exports:

  read-json write-json
  string->json-object json-object->string
  json-symbolic-keys
```

## std/text/utf8
Faster UTF8 encoding and decoding.

```
(import :std/text/utf8)

;; exports

  string->utf8 utf8->string
  string-utf8-length
  utf8-encode utf8-decode
```

## std/text/yaml
YAML parsing and dumping; requires libyaml.

```
(import :std/text/yaml)

;; exports:

  yaml-load yaml-dump
```

## std/text/zlib
Compression and decompression with zlib.

```
(import :std/text/zlib)

;; exports:

  compress compress-gz uncompress
```