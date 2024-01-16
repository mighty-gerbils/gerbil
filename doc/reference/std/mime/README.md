# Media (AKA MIME) types

There's often a need to know content types.

Email can contain other documents of varying types. The Web can serve files of any kind. Email extensions evolved into "Media Types".

::: tip To use bindings from this module `(import :std/mime/types)` :::


## `path-extension->mime-type-name`

```scheme
(path-extension->mime-type-name path) => string or #f

     path := a filename
```

The [`define-mime-types`](#define-mime-types) database has a [`mime-extensions`](#mime-extensions) map the get a [`mime-type`](#mime-type) from an extension via [`extension->mime-type`](#extension-mime-type). This procedure unites them.

```scheme
> (path-extension->mime-type-name "foo.ss")
"text/x-scheme.gerbil"
> (path-extension->mime-type-name "around-the-world.mp3")
"audio/mpeg"
> (path-extension->mime-type-name "Urgent: Outlook mail!.msg")
"application/vnd.ms-outlook"
```


<a id="extension-mime-type"></a>

## `extension->mime-type`

```scheme
(extension->mime-type str) => mime-type or #f
```


<a id="mime-extensions"></a>

## `mime-extensions`

```scheme
(def mime-extensions (make-hash-table))
```

A map of extensions to `mime-type`'s.


## `mime-types`

```scheme
(def mime-types (make-hash-table))
```

A map of names to `mime-types`


## `add-mime-type`

```scheme
(add-mime-type name ext ...) => mime-type
```

Add a newly created `mime=type` to the `mime-types` and `mime-extensions` mapping.


## `make-mime-type`

```scheme
(make-mime-type name ext ...) => mime-type
```


<a id="mime-type"></a>

## `mime-type`

```scheme
(defstruct mime-type (name extensions) transparent: #t constructor: :init!)
```


<a id="define-mime-types"></a>

## `define-mime-types`

```scheme
(define-mime-types
  file-or-definition ...)

file := A path tp a file like `/etc/mime.types`
definition := ("type/name" "ext" ...)
```

```scheme
(define-mime-types
  "./mime.types"
  ("text/x-scheme"		"scm" "sps" "sls" "sld")
  ("text/x-scheme.gerbil"	"ss")
  ("application/vnd.ms-outlook"	"msg"))
```
