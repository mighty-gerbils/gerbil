# CSV

CSV parser and unparser.

::: tip To use the bindings from this module:
```scheme
(import :std/text/csv)
```
:::


## Overview
It is configurable through parameters to fit whichever CSV options your files use,
defaulting to the "standard" from the [creativyst
specification](http://www.creativyst.com/Doc/Articles/CSV/CSV01.htm). Parameters for [RFC4180](https://tools.ietf.org/html/rfc4180) are just a call-with- function call around.

The parameters are: `csv-separator`, `csv-quote`, `csv-unquoted-quotequote?`,
`csv-loose-quote?`, `csv-eol`, `csv-line-endings`, `csv-skip-whitespace?`, `csv-allow-binary?`

Functions to locally set the parameters to known values are `call-with-creativyst-csv-syntax`, `call-with-rfc4180-csv-syntax`, `call-with-strict-rfc4180-csv-syntax`

The parsing and unparsing functions are `read-csv-line`, `read-csv-lines`, `read-csv-file`, `write-csv-line`, `write-csv-lines`.

## read-csv-line
``` scheme
(read-csv-line port) -> list | error

  port := input port
```

Read one line from *port* in CSV format, using the current syntax parameters.
Return a list of strings, one for each field in the line.  Entries are read as
strings; it is up to you to interpret the strings as whatever you want. Signals
an error on malformed CSV entries.

## read-csv-lines
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

## read-csv-file
``` scheme
(read-csv-file path [settings]) -> list | error

  path := file path to csv file as string
  settings := optional settings configuring csv parsing
```

Open the file designated by the *path*, using the provided *settings* if any,
and call `read-csv-lines` on it.

## write-csv-line
``` scheme
(write-csv-line fields port) -> void

  fields := list of strings
  port   := output port
```

Format one line of *fields* to *port* in CSV format, using the current syntax parameters.

## write-csv-lines
``` scheme
(write-csv-lines lines port) -> void

  lines := list of strings
  port  := output port
```

Given a list of *lines*, each of them a list of fields, and a PORT,
format those lines as CSV according to the current syntax parameters.

## write-csv-file
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

## call-with-creativyst-csv-syntax
``` scheme
(call-with-creativyst-csv-syntax thunk) -> any

  thunk := procedure without parameters
```

Sets CSV parsing to match rules by creativyst and calls procedure *thunk*
returning its value.

## call-with-rfc4180-csv-syntax
``` scheme
(call-with-rfc4180-csv-syntax thunk) -> any

  thunk := procedure without parameters
```

Sets CSV parsing to match rules by RFC4180 and calls procedure *thunk*
returning its value.

## call-with-strict-rfc4180-csv-syntax
``` scheme
(call-with-strict-rfc4180-csv-syntax thunk) -> any

  thunk := procedure without parameters
```

Sets CSV parsing to match rules by strict RFC4180 and calls procedure *thunk*
returning its value.

## csv-separator
``` scheme
csv-separator
```

Separator used between CSV fields, defaults to `,`.

## csv-quote
``` scheme
csv-quote
```

Delimiter of string data; pascal-like quoted as double itself in a
string. Defaults to `"`.

## csv-unquoted-quotequote?
``` scheme
csv-unquoted-quotequote?
```
Boolean to control does a pair of quotes represent a quote outside of quotes?
M$, RFC says #f, csv.3tcl says #t. Defaults to #f.

## csv-loose-quote?
``` scheme
csv-loose-quote?
```

Boolean to control can quotes appear anywhere in a field? Defaults to #f.

## csv-eol
``` scheme
csv-eol
```

Line ending when exporting CSV. Defaults to `[+crlf+ +lf+]`.

## csv-line-endings
``` scheme
csv-line-endings
```

Acceptable line endings when importing CSV. Defaults to `[+cr+ +lf+ +crlf+]`.

## csv-skip-whitespace?
``` scheme
csv-skip-whitespace?
```

Boolean controls shall we skip unquoted whitespace around separators? Defaults
to #t.

## csv-allow-binary?
``` scheme
csv-allow-binary?
```

Boolean to control do we accept non-ascii data? Defaults to #t.
