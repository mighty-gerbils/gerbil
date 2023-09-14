# Text Encoding and Decoding

This module provides utilities to encode and decode text in various methods.

## Base64

These provide text conversions according to [RFC 4648](https://tools.ietf.org/html/rfc4648).

### Base64 coding support notes


#### Support for urlsafe coding
In this mode, #\- instead of #\+ and #\_ is used instead of #\/. For this coding
to work, the padding should be turned off during encoding (so there's no #\=:s
in the output).  Also known as the "Base64 with URL and Filename Safe Alphabet"
aka base64url of RFC 4648.

#### Support for presence and absence of end padding
Supports both the older encoding with padding, and the unpadded form that's
slightly smaller, that is gaining popularity in decoders currently, currently
implemented in decoders such as that of Ecmascript 5 and the apache-commons Java
library. We imitate this functionality, while offering the option of not
outputting padding on encoding, as well as requiring padding on decoding.

Basically the requirement for padding on base64encoded was motivated by the
scarce nature of computing resources in the 1980:s. Today there's a move toward
not requiring the padding, as reflected for instance in Ecmascript 5's spec to
produce the padding on encode but not to require it on decode.

For some more references see:
- [Description of JS5 btoa()](https://en.wikipedia.org/wiki/Base64#HTML)
- [Why does base64 encoding require padding if the input length is not divisible by 3?](http://stackoverflow.com/questions/4080988/why-does-base64-encoding-requires-padding-if-the-input-length-is-not-divisible-b)
- [Why padding is used in Base64 encoding?](http://stackoverflow.com/questions/4322507/why-padding-is-used-in-base64-encoding)
- [Remove trailing “=” when base64 encoding](http://stackoverflow.com/questions/4492426/remove-trailing-when-base64-encoding)
- [URLEncoding padding is optional](https://github.com/golang/go/issues/4237)


::: tip To use the bindings from this module:
``` scheme
(import :std/text/base64)
```
:::

### base64-string-&gt;u8vector
``` scheme
(base64-string->u8vector str [nopadding-ok?: #t] [urlsafe?: #f]) -> u8vector

  str           := string to convert
  nopadding-ok? := boolean to disable padding
  urlsafe?      := boolean to enable urlsafe coding
```

Returns a newly allocated u8vector with Base64 encoded contents of *str*. Optional keyword arguments
control how the conversion is done. If *nopadding-ok?* is #t (default) the value
is converted. If *urlsafe?* is #t, the result is URL encoded as specified in RFC 4648.
...

### base64-substring-&gt;u8vector
``` scheme
(base64-substring->u8vector str start end [nopadding-ok?: #t] [urlsafe?: #f]) ->
u8vector

  str           := string of Base64 data
  start         := exact integer starting index
  end           := exact integer ending index
  nopadding-ok? := boolean to disable padding
  urlsafe?      := boolean to enable urlsafe coding
```

Returns a newly allocated u8vector containing Base64 encoded value of *str* from
*start* to *end* like `base64-string->u8vector`.

### u8vector-&gt;base64-string
``` scheme
(u8vector->base64-string u8vect [width: 0] [padding?: #t] [urlsafe?: #f]) -> string

  u8vect   := u8vector to convert
  width    := exact integer for padding width
  padding? := boolean to enable padding
  urlsafe? := boolean to enable urlsafe coding
```

Returns a newly allocated Base64 string with bytes of *u8vect* in left-to-right order to Base64 encoded string.

### subu8vector-&gt;base64-string
``` scheme
(subu8vector->base64-string u8vect start end [width: 0] [padding?: #t] [urlsafe?: #f]) -> string

  u8vect   := u8vector to encode data from
  start    := exact integer starting index
  end      := exact integer end index
  width    := exact integer for padding width
  padding? := boolean to enable padding
  urlsafe? := boolean to enable urlsafe coding
```

Returns a newly allocated string with bytes of *u8vect* Base64 encoded in
left-to-right order from *start* to *end*.

### base64-decode
``` scheme
(base64-decode str [nopadding-ok?: #t] [urlsafe: #f]) -> u8vector
```

This is an alias for `base64-string->u8vector`. See its definition for details.

### base64-decode-substring
``` scheme
(base64-decode-substring str start end [nopadding-ok?: #t] [urlsafe: #f]) -> u8vector
```

This is an alias for `base64-substring->u8vector`. See its definition for details.

### base64-encode
``` scheme
(base64-encode u8vect [width: 0] [padding: #t] [urlsafe: #f]) -> string
```

This is an alias for `u8vector->base64-string`. See its definition for details.

### base64-encode-subu8vector
``` scheme
(base64-encode-subu8vector u8vect start end [width: 0] [padding?: #t] [urlsafe?: #f]) -> string
```

This is an alias for `subu8vector->base64-string`. See its definition for details.

## Base58
The `:std/text/base58` library provides encoding and decoding to base58.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/base58)
```
:::

### base58-encode
``` scheme
(base58-encode bytes [alphabet = base58-btc-alphabet]) -> string

  bytes    := u8vector
  alphabet := optional encoding alphabet
```

Base58 encodes a u8vector, using the given alphabet.

### base58-decode
``` scheme
(base58-decode str [alphabet = base58-btc-alphabet]) -> u8vector | error

  str := string; base58 encoded
  alphabet := decoding alphabet
```

Base58 decodes a string, using the given *alphabet*. Signals a error on invalid characters.

### base58-btc-alphabet
``` scheme
(def base58-btc-alphabet)
```

The base58 encoding alphabet used by Bitcoin.

### base58-flickr-alphabet
``` scheme
(def base58-flickr-alphabet)
```

The base58 encoding alphabet used by Flickr.


## CSV

CSV parser and unparser.

::: tip To use the bindings from this module:
```scheme
(import :std/text/csv)
```
:::


### Overview
It is configurable through parameters to fit whichever CSV options your files use,
defaulting to the "standard" from the [creativyst
specification](http://www.creativyst.com/Doc/Articles/CSV/CSV01.htm). Parameters for [RFC4180](https://tools.ietf.org/html/rfc4180) are just a call-with- function call around.

The parameters are: `csv-separator`, `csv-quote`, `csv-unquoted-quotequote?`,
`csv-loose-quote?`, `csv-eol`, `csv-line-endings`, `csv-skip-whitespace?`, `csv-allow-binary?`

Functions to locally set the parameters to known values are `call-with-creativyst-csv-syntax`, `call-with-rfc4180-csv-syntax`, `call-with-strict-rfc4180-csv-syntax`

The parsing and unparsing functions are `read-csv-line`, `read-csv-lines`, `read-csv-file`, `write-csv-line`, `write-csv-lines`.

### read-csv-line
``` scheme
(read-csv-line port) -> list | error

  port := input port
```

Read one line from *port* in CSV format, using the current syntax parameters.
Return a list of strings, one for each field in the line.  Entries are read as
strings; it is up to you to interpret the strings as whatever you want. Signals
an error on malformed CSV entries.

### read-csv-lines
``` scheme
(read-csv-lines port) -> list | error

  port := input port
```

::: tip Examples
``` scheme
> (let ((csv-data "id;city;population\n01;Foobar;1200000\n02;Barville;250001\n03;Baz;21\n"))
    (read-csv-lines (open-input-string csv-data)))
(("id;city;population") ("01;Foobar;1200000") ("02;Barville;250001")("03;Baz;21"))

```
:::

Read lines from *port* in CSV format, using the current syntax parameters.  Return
a list of list of strings, one entry for each line, that contains one entry for
each field.  Entries are read as strings; it is up to you to interpret the
strings as whatever you want. Signals an error malformed CSV entries.

### read-csv-file
``` scheme
(read-csv-file path [settings]) -> list | error

  path := file path to csv file as string
  settings := optional settings configuring csv parsing
```

Open the file designated by the *path*, using the provided *settings* if any,
and call `read-csv-lines` on it.

### write-csv-line
``` scheme
(write-csv-line fields port) -> void

  fields := list of strings
  port   := output port
```

Format one line of *fields* to *port* in CSV format, using the current syntax parameters.

### write-csv-lines
``` scheme
(write-csv-lines lines port) -> void

  lines := list of strings
  port  := output port
```

Given a list of *lines*, each of them a list of fields, and a PORT,
format those lines as CSV according to the current syntax parameters.

### write-csv-file
``` scheme
(write-csv-file path lines . settings) -> void

  lines    := list of strings
  path     := output path
  settings := optional path settings
```
Writes `lines` to the designated `path` using `write-csv-lines`
and the provided `settings`. Check section
[17.7.1 Filesystem devices](http://www.iro.umontreal.ca/~gambit/doc/gambit.html#Filesystem-devices)
of the Gambit Manual if you want to know more about the `settings` parameter.

::: tip Examples:
``` scheme
> (write-csv-file "/tmp/foo.csv" [["hello" "world"] ["a" "b"]])
;; hello,world\na,b

> (write-csv-file "/tmp/foo.csv" [["and" "more"]] append: #t)
;; hello,world\na,b\nand,more
```
:::

### call-with-creativyst-csv-syntax
``` scheme
(call-with-creativyst-csv-syntax thunk) -> any

  thunk := procedure without parameters
```

Sets CSV parsing to match rules by creativyst and calls procedure *thunk*
returning its value.

### call-with-rfc4180-csv-syntax
``` scheme
(call-with-rfc4180-csv-syntax thunk) -> any

  thunk := procedure without parameters
```

Sets CSV parsing to match rules by RFC4180 and calls procedure *thunk*
returning its value.

### call-with-strict-rfc4180-csv-syntax
``` scheme
(call-with-strict-rfc4180-csv-syntax thunk) -> any

  thunk := procedure without parameters
```

Sets CSV parsing to match rules by strict RFC4180 and calls procedure *thunk*
returning its value.

### csv-separator
``` scheme
csv-separator
```

Separator used between CSV fields, defaults to `,`.

### csv-quote
``` scheme
csv-quote
```

Delimiter of string data; pascal-like quoted as double itself in a
string. Defaults to `"`.

### csv-unquoted-quotequote?
``` scheme
csv-unquoted-quotequote?
```
Boolean to control does a pair of quotes represent a quote outside of quotes?
M$, RFC says #f, csv.3tcl says #t. Defaults to #f.

### csv-loose-quote?
``` scheme
csv-loose-quote?
```

Boolean to control can quotes appear anywhere in a field? Defaults to #f.

### csv-eol
``` scheme
csv-eol
```

Line ending when exporting CSV. Defaults to `[+crlf+ +lf+]`.

### csv-line-endings
``` scheme
csv-line-endings
```

Acceptable line endings when importing CSV. Defaults to `[+cr+ +lf+ +crlf+]`.

### csv-skip-whitespace?
``` scheme
csv-skip-whitespace?
```

Boolean controls shall we skip unquoted whitespace around separators? Defaults
to #t.

### csv-allow-binary?
``` scheme
csv-allow-binary?
```

Boolean to control do we accept non-ascii data? Defaults to #t.

## Hex
::: tip To use the bindings from this module:
``` scheme
(import :std/text/hex)
```
:::

### hex-encode
``` scheme
(hex-encode bytes [start = 0] [end = #f]) -> string

  bytes := u8vector to convert
  start := exact integer as start index
  end   := exact integer as end index | #f
```

Returns a newly allocated string containing hex encoded characters from given
*bytes*.
Optional *start* gives starting index to start the encoding, *end* gives ending
index. Giving #f in *end* means reading to the end of byte vector.

### hexlify
``` scheme
(defialias hexlify hex-encode)
```

Short for `hex-encode`.

### hex-decode
``` scheme
(hex-decode str) -> u8vector | error

  str := string to decode
```

Returns a newly allocated u8vector with contents set to hex decoded *str*.

### unhexlify
``` scheme
(defalias unhexlify hex-decode)
```

Short for `hex-decode`.

### hex
``` scheme
(hex u4) -> character | error
```

Returns hex character for give *u4* integer value. Signals an error if integer
value can't be converted to hex.

::: tip Examples
``` scheme
> (hex 15)
#\f
> (hex 1)
#\1
> (hex 99)
*** ERROR IN (console)@20.1 -- (Argument 2) Out of range
(string-ref "0123456789abcdef" 99)
1>
```
:::

### unhex
``` scheme
(unhex char) -> exact integer | error
```

Returns hex value for given *char*. Signals an error if *char* isn't valid hex
character.

::: tip Examples
``` scheme
> (unhex #\f)
15
> (unhex #\3)
3
> (unhex #\i)
*** ERROR IN (console)@12.1 -- Unbound table key
(table-ref '#<table #4> #\i)
1>
```
:::

### unhex*
``` scheme
(unhex* char) -> character | #f
```

Returns hex value for given *char*. Returns #f if *char* isn't valid hex
character.

::: tip Examples
``` scheme
> (unhex* #\f)
15
> (unhex* #\3)
3
> (unhex* #\i)
#f
>
```
:::

## JSON
::: tip To use the bindings from this module:
``` scheme
(import :std/text/json)
```
:::

### read-json
``` scheme
(read-json [input = (current-input-port)]) -> json | error

  input := input source to read JSON data
```

Returns JSON object from given input source. Signals an error if fails to parse JSON

The input source can be:
- An input port.
- A BufferedStringReader.
- A BufferedReader.

### write-json
``` scheme
(write-json obj [sink = (current-output-port)]) -> void | error

  obj  := JSON object
  sink := output sink to write JSON data
```

Writes JSON object *obj* optionally given *port*. Defaults to using
current-output-port. Signals an error on failed write.

The output sink can be:
- An output port.
- A BufferedStringWriter.
- A BufferedWriter.
- A StringWriter.
- A Writer.

### string->json-object
``` scheme
(string->json-object str) -> json | error

  str := a string of JSON data
```

Parses given *str* and returns JSON object or signals an error fails to parse.

### json-object->string
``` scheme
(json-object->string obj) -> string | error

  obj := JSON object
```

Returns a newly allocated string with JSON object as a string. Signals an error if
fails to parse JSON.

### json-symbolic-keys
``` scheme
json-symbolic-keys
```

Boolean parameter to control should decoded hashes have symbols as keys? Defaults to #t.
#f means that keys will be strings.

::: tip Examples
``` scheme
> (hash->list (string->json-object "{\"a\":1}"))
((a . 1))

> (parameterize ((json-symbolic-keys #f))
    (hash->list (string->json-object "{\"a\":1}")))
(("a" . 1))
```

### json-list-wrapper
``` scheme
json-list-wrapper
```

Parameter to control how JSON lists should be transformed.
Defaults to `identity`, which means keep them as lists.
If bound to `list->vector` then JSON lists will be parsed as vectors.

::: tip Examples
``` scheme
> (string->json-object "[\"a\",1]")
("a" 1)

> (parameterize ((json-list-wrapper list->vector))
    (string->json-object "[\"a\",1]"))
#("a" 1)
```

## UTF-8
Faster UTF-8 encoding and decoding.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/utf8)
```
:::

### string-&gt;utf8
``` scheme
(string->utf8 str [start = 0] [end = (string-length str)]) -> u8vector | error

  str   := string of UTF-8 data
  start := exact integer for starting index
  end   := exact integer for end index
```

Returns a newly allocated u8vector with UTF-8 data from *str* converted to
bytes. Optional *start* and *end* limit the operation to substring of *str*.

### utf8-&gt;string
``` scheme
(utf8->string u8v [start = 0] [end = (u8vector-length str)]) -> string | error

  u8v   := u8vector of data to convert
  start := exact integer for starting index
  end   := exact integer for ending index
```

Returns a newly allocated string with UTF-8 contents from *u8v*. Optional *start*
and *end* parameters limit the operation to the sub-vector of given indexes.
The replacement character U+FFFD is used to replace an unknown,
unrecognized or unrepresentable character. An error is raised upon
reading an incomplete character.

### utf8-encode
``` scheme
(utf8-encode str start end) -> u8vector

  str   := UTF-8 encoded string
  start := exact integer for starting index
  end   := exact integer for ending index
```

Returns a newly allocated u8vector with byte data of UTF-8 string *str*.

### utf8-decode
``` scheme
(utf8-decode u8v start end) -> string | error

  u8v   := u8vector of input data
  start := exact integer for starting index
  end   := exact integer for ending index
```

Decodes the bytes in byte vector *u8v* from *start* index until *end* index and
returns the results as a string. Will signal an error if fails to parse UTF-8 bytes.

### string-utf8-length
``` scheme
(string-utf8-length str [start = 0] [end = (string-length str)]) -> integer | error
```

Returns the byte length of given UTF-8 string *str*. Optional *start* and *end*
indexes limit the operation on substring. Signals an error if *str* isn't
string.

::: tip Examples
``` scheme
> (import :std/format)
> (import :std/text/utf8)

> (let ((s  "uber")
        (us "über"))
    (printf "s length: ~a\n" (string-length s))
    (printf "u length: ~a\n" (string-length us))
    (newline)
    (printf "s utf8-length: ~a\n" (string-utf8-length s))
    (printf "u utf8-length: ~a\n" (string-utf8-length us)))
s length: 4
u length: 5

s utf8-length: 4
u utf8-length: 7

```
:::

## UTF-16
UTF-16 encoding and decoding.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/utf16)
```
:::

### string-&gt;utf16
``` scheme
(string->utf16 str (endianness 'big) (BOM? #f)) -> u8vector | error

  str        := string
  endianness := endianness symbol; specifies the endianness of the encoding
  BOM?       := boolean; specifies whether to include a BOM or not
```

Returns a newly allocated u8vector with UTF-16 data from *str* converted to
bytes.

### utf16-&gt;string
``` scheme
(utf16->string u8v (endianness 'big) (endianness-mandatory? #f)) -> string | error

  u8v                   := u8vector of data to convert
  endianness            := endianness symbol; specifies the endianness of the encoding
  endianness-mandatory? := boolean; if #f then try to read a BOM to determine endianness; if #t then the specified endianness is used.
```

Returns a newly allocated string with UTF-16 contents from *u8v*.

## UTF-32
UTF-32 encoding and decoding.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/utf32)
```
:::

### string-&gt;utf32
``` scheme
(string->utf32 str (endianness 'big) (BOM? #f)) -> u8vector | error

  str        := string
  endianness := endianness symbol; specifies the endianness of the encoding
  BOM?       := boolean; specifies whether to include a BOM or not
```

Returns a newly allocated u8vector with UTF-32 data from *str* converted to
bytes.

### utf32-&gt;string
``` scheme
(utf32->string u8v (endianness 'big) (endianness-mandatory? #f)) -> string | error

  u8v                   := u8vector of data to convert
  endianness            := endianness symbol; specifies the endianness of the encoding
  endianness-mandatory? := boolean; if #f then try to read a BOM to determine endianness; if #t then the specified endianness is used.
```

Returns a newly allocated string with UTF-32 contents from *u8v*.

## YAML
YAML parsing and dumping; this module requires that Gerbil scheme is compiled
against libyaml.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/yaml)
```
:::

### yaml-key-format
``` scheme
(yaml-key-format) -> formatter
(yaml-key-format new-formatter) -> old-formatter
```

A parameter that controls how string keys are stored in mappings.  YAML allows
non-string keys in mappings (e.g. numbers, sequences, and other mappings).
These are not affected by this parameter.

No conversion is done by default.

::: tip To convert map keys to symbols:
``` scheme
> (parameterize ((yaml-key-format string->symbol))
   (hash-keys (car (yaml-load-string "foo: bar"))))
(foo)
```
:::

::: tip To convert map keys to keywords:
``` scheme
> (parameterize ((yaml-key-format string->keyword))
   (hash-keys (car (yaml-load-string "foo: bar"))))
(foo:)
```
:::

### yaml-load
``` scheme
(yaml-load filename) -> any | error
  filename := string
```

Loads a YAML data from given *filename*. Signals an error if fails to parse YAML.

### yaml-load-string
``` scheme
(yaml-load-string str) -> any | error
  str := string of YAML data
```

Parses a YAML data from *str*. Signals an error if fails to parse YAML.

### yaml-dump
``` scheme
(yaml-dump filename . args)
  filename := string
```

Dumps the arguments to a YAML file.


## Zlib
Compression and decompression with zlib.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/zlib)
```
:::


### compress
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

### compress-gz
``` scheme
(compress-gz data [level = 6]) -> u8vector | string | input-port | error

  data  := u8vector, string, or input-port
  level := optional integer value, from 0 to 9
```

Compresses data given in *data* as `compress` procedure but in addition gzip
encodes it. Signals a error on wrong type of *data*.

### uncompress
``` scheme
(uncompress data) -> u8vector | error

  data := u8vector or input-port
```

Returns uncompressed bytes from *data*. Signals a error on wrong type of *data*.
