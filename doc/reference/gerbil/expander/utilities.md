## Utilities

Working with syntax is easy if you use the correct utilities. Because
Gerbil is a meta-scheme almost all such things are somewhere in the
[Expander Runtime](README.md.)

So, if you've moved beyond [Identifiers](identifiers.md), this could
be what you're looking for.

### stx-boolean?
```scheme
(stx-boolean? ...)
```

Please document me!

### stx-keyword?
```scheme
(stx-keyword? ...)
```

Determine if the syntax represents a `keyword`.

```scheme
> (defsyntax (foo stx) 
    (syntax-case stx () 
	  ((_ key) (stx-keyword? #'key) #'"YAY!")
      ((_ no) #'"NAY")))
> (foo bar:)
"YAY!"
> (foo 'bar)
"NAY
```

### stx-char?
```scheme
(stx-char? ...)
```

Please document me!

### stx-number?
```scheme
(stx-number? ...)
```

Please document me!

### stx-fixnum?
```scheme
(stx-fixnum? ...)
```

Please document me!

### stx-string?
```scheme
(stx-string? stx)
```

Determines if the syntax is a string.

```scheme
> (defsyntax (foo stx) 
   (syntax-case stx () 
    ((_ str) (stx-string? #'key) #'"YAY!") ((_ no) #'"Nay")))
> (foo bar:)
"Nay"
> (foo "bar")
"YAY!
```


Please document me!

### stx-null?
```scheme
(stx-null? ...)
```

Please document me!

### stx-pair?
```scheme
(stx-pair? ...)
```

Please document me!

### stx-pair/null?
```scheme
(stx-pair/null? ...)
```

Please document me!

### stx-list?
```scheme
(stx-list? ...)
```

Please document me!

### stx-box?
```scheme
(stx-box? ...)
```

Please document me!

### stx-vector?
```scheme
(stx-vector? ...)
```

Please document me!

### stx-datum?
```scheme
(stx-datum? ...)
```

Please document me!

### stx-eq?
```scheme
(stx-eq? ...)
```

Please document me!

### stx-eqv?
```scheme
(stx-eqv? ...)
```

Please document me!

### stx-equal?
```scheme
(stx-equal? ...)
```

Please document me!

### stx-false?
```scheme
(stx-false? ...)
```

Please document me!

### stx-e
```scheme
(stx-e ...)
```

Please document me!

### locat 
 
 A "locat" object represents a source code location.  The location is
 a 2 or 3 element vector composed of the container of the source code
 (a file, a text editor window, etc) and one or two positions within
 that container (a character offset, a line/column index, a text
 bookmark, an expression, etc). When there are two positions they are
 the start and end positions of the source code location.

 Source code location containers and positions can be encoded with any
 concrete type, except that positions cannot be pairs.  The procedure
 `##container->path` takes a container object and returns #f if the
 container does not denote a file, otherwise it returns the absolute
 path of the file as a string.  The procedure `##container->id` takes
 a container object and returns a string that can be used to identify
 the container when it is not a file (e.g. the name of a text editor
 window).
 
 The procedure `##position->filepos` takes a position object and
 returns a fixnum encoding the line and column position (see function
 `##make-filepos`).
 
### stx-source
```scheme
(stx-source stx) -> locat | #f
  stx := syntax
```

Returns the source location of a syntax object AST `stx`.

The `locat` structure includes the container and one or two positions,
accessed by `##locat-container`, `##locat-start-position` and
`##locat-end-position`. 


The procedure `##position->filepos` takes a position object and
returns a `##filepos` The filepos has line and column information,
accessed with `##filepos-line` and `##filepos-col`.

```shell
$ cat > /tmp/foo.ss <<'EOF'
(defsyntax (foo stx) 
  (let* ((locat (stx-source stx))
         (con (##locat-container locat))
		 (path (##container->path con))
		 (start-pos (##locat-start-position locat))
		 (start-filepos (##position->filepos start-pos))
		 (start-line (##filepos-line start-filepos))
		 (start-col (##filepos-col start-filepos))
		 (end-pos (##locat-end-position locat))
		 (end-filepos (##position->filepos end-pos))
		 (end-line (##filepos-line end-filepos))
		 (end-col (##filepos-col end-filepos)))
    (displayln "Where? " path "start: line " start-line " col " start-col
	            " end: line " end-line " col " end-col)
 #'()))
       
	   (foo
	   
	   
)
EOF
$ gxc /tmp/foo.ss
Where? /private/tmp/foo.ssstart: line 16 col 7 end: line 19 col 1
```

### stx-wrap-source

```scheme
(stx-wrap-source stx src) -> syntax
  stx := any
  src := locat
```
:::

Produces a new syntax object with source location `src`
if `stx` is not wrapped as an AST already, otherwise returns `stx` unchanged.

The `locat` structure can be constructed with
`(##make-locat container start-position end-position)`, where:

  - `container` is a string denoting a file path, or a list containing
    a symbol denoting the provenance (string, port, etc.).
	
  - `start-position` can be constructed with: 
    `(##filepos->position (##make-filepos line col off))`.
	
  - `end-position` can be `#f` if the location is a position, or a
    number similar to `start-position` indicating the end position
    (not included) if the location is a range.

### stx-car
```scheme
(stx-car ...)
```

Please document me!

### stx-cdr
```scheme
(stx-cdr ...)
```

Please document me!

### stx-length
```scheme
(stx-length ...)
```

Please document me!

### stx-for-each
```scheme
(stx-for-each ...)
```

Please document me!

### stx-map
```scheme
(stx-map ...)
```

Please document me!

### stx-foldl
```scheme
(stx-foldl ...)
```

Please document me!

### stx-foldr
```scheme
(stx-foldr ...)
```

Please document me!

### stx-reverse
```scheme
(stx-reverse ...)
```

Please document me!

### stx-last
```scheme
(stx-last ...)
```

Please document me!

### stx-last-pair
```scheme
(stx-last-pair ...)
```

Please document me!

### stx-list-tail
```scheme
(stx-list-tail ...)
```

Please document me!

### stx-list-ref
```scheme
(stx-list-ref ...)
```

Please document me!

### stx-andmap
```scheme
(stx-andmap ...)
```

Please document me!

### stx-ormap
```scheme
(stx-ormap ...)
```

Please document me!

### stx-plist?
```scheme
(stx-plist? ...)
```

Please document me!

### stx-getq
```scheme
(stx-getq ...)
```

Please document me!
