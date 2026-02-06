# URIs [RFC3986]

The `:std/net/uri` library provides URI encoding and decoding functions
as specified in [RFC 3986](https://www.rfc-editor.org/rfc/rfc3986), as well
as HTML form URL encoding/decoding.

::: tip To use the bindings from this module:
```scheme
(import :std/net/uri)
```
:::

## uri-encode
```scheme
(uri-encode str (encoding-table uri-encoding)) -> string
```

Percent-encodes the string *str* according to RFC 3986. Characters not in the
encoding table are encoded as `%XX` hex sequences (UTF-8 encoded).

By default, only RFC 3986 unreserved characters (`A-Z a-z 0-9 - . _ ~`) are
left unencoded. You can pass a custom *encoding-table* created with
`make-uri-encoding-table` to change which characters are preserved.

::: tip Example:
```scheme
(import :std/net/uri)

(uri-encode "hello world")
;; => "hello%20world"

(uri-encode "foo@bar.com/path?q=1&x=2")
;; => "foo%40bar.com%2Fpath%3Fq%3D1%26x%3D2"
```
:::

## uri-decode
```scheme
(uri-decode str (encoding #f)) -> string
```

Decodes a percent-encoded string *str*, converting `%XX` hex sequences back
to their corresponding characters (UTF-8 decoded).

If *encoding* is provided (a vector of length 256), it maps byte values to
replacement characters (e.g., decoding `+` as space for form-URL-encoded
data).

::: tip Example:
```scheme
(import :std/net/uri)

(uri-decode "hello%20world")
;; => "hello world"

(uri-decode "foo%40bar.com")
;; => "foo@bar.com"
```
:::

## form-url-encode
```scheme
(form-url-encode fields (+space? #t)) -> string
```

Encodes an association list of key-value pairs into a
`application/x-www-form-urlencoded` string. Each element of *fields* is a
pair `(key . value)` where both key and value are strings. If the value is
`#f`, only the key is included (without `=`).

When *+space?* is `#t` (the default), spaces are encoded as `+` instead of
`%20`, following the HTML form encoding convention.

::: tip Example:
```scheme
(import :std/net/uri)

(form-url-encode '(("name" . "John Doe") ("age" . "30")))
;; => "name=John+Doe&age=30"

(form-url-encode '(("q" . "hello world") ("lang" . "en")))
;; => "q=hello+world&lang=en"

;; Without +space encoding
(form-url-encode '(("q" . "hello world")) #f)
;; => "q=hello%20world"

;; Key without value
(form-url-encode '(("flag" . #f) ("key" . "val")))
;; => "flag&key=val"
```
:::

## form-url-decode
```scheme
(form-url-decode str) -> list
```

Decodes an `application/x-www-form-urlencoded` string into an association
list of `(key . value)` pairs. The `+` character is decoded as space. If a
field has no `=`, the value in the pair is `#f`.

::: tip Example:
```scheme
(import :std/net/uri)

(form-url-decode "name=John+Doe&age=30")
;; => (("name" . "John Doe") ("age" . "30"))

(form-url-decode "flag&key=val")
;; => (("flag" . #f) ("key" . "val"))
```
:::

## query-string
```scheme
(query-string path key value ...) -> string
```

Builds a URL with query parameters. Appends key-value pairs to *path* as
query parameters. Keys and values alternate in the argument list. If a value
is `#f`, the key-value pair is skipped.

Note: This function does **not** perform URI encoding on the keys or values.
You should pre-encode them with `uri-encode` if needed.

::: tip Example:
```scheme
(import :std/net/uri)

(query-string "/search" "q" "gerbil" "lang" "en")
;; => "/search?q=gerbil&lang=en"

(query-string "/api" "id" "42" "verbose" #f "format" "json")
;; => "/api?id=42&format=json"
```
:::

## Encoding Tables

### make-uri-encoding-table
```scheme
(make-uri-encoding-table self-chars (sub-chars [])) -> vector
```

Creates a URI encoding table (a vector of length 256) where characters in
*self-chars* are mapped to themselves (not encoded), and pairs in *sub-chars*
specify character substitutions.

*sub-chars* is a list of pairs `(char . replacement-char)`, where occurrences
of *char* in the input are replaced by *replacement-char* instead of being
percent-encoded.

::: tip Example:
```scheme
(import :std/net/uri)

;; Encoding table that preserves unreserved chars and encodes space as +
(def my-encoding
  (make-uri-encoding-table uri-unreserved-chars '((#\space . #\+))))

(uri-encode "hello world" my-encoding)
;; => "hello+world"
```
:::

### uri-unreserved-chars
```scheme
uri-unreserved-chars -> string
```

The set of RFC 3986 unreserved characters:
`abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~`

### uri-gendelim-chars
```scheme
uri-gendelim-chars -> string
```

The set of RFC 3986 general delimiter characters: `:/?#[]@`

### uri-subdelim-chars
```scheme
uri-subdelim-chars -> string
```

The set of RFC 3986 sub-delimiter characters: `!$&'()*+,;=`
