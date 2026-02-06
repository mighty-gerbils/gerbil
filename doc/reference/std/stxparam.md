# Syntax Parameters

The `:std/stxparam` library provides syntax parameters — a mechanism for
passing syntactic information from a parent macro to its children without
explicit `with-syntax` bindings. This enables clean macro composition where
inner macros can access context established by outer macros.

See [Keeping it Clean with Syntax Parameters](http://eli.barzilay.org/misc/stxparam.pdf)
for the theoretical background.

::: tip To use the bindings from this module:
```scheme
(import :std/stxparam)
```
:::

## Macros

### defsyntax-parameter
```scheme
(defsyntax-parameter id default)
```

Defines a syntax parameter named *id* with a *default* expander. The
*default* is a syntax transformer (e.g., a `syntax-rules` form) that is
used when the parameter has not been rebound by `syntax-parameterize`.

::: tip Example:
```scheme
(import :std/stxparam)

;; Define a syntax parameter with a default that raises an error
(defsyntax-parameter current-target
  (syntax-rules ()
    ((_ . _) (error "current-target used outside of with-target"))))
```
:::

### defsyntax-parameter*
```scheme
(defsyntax-parameter* macro param (errmsg "Bad syntax")) -> macro

  macro  := name of the generated macro
  param  := name of the syntax parameter
  errmsg := custom error message
```

Expands into a macro with name *macro* which itself expands into
the value of the `syntax-parameter` *param*. The optional *errmsg* can
be used to customize syntax error reporting.

::: tip Example:
```scheme
(defsyntax-parameter* @message @@message "Bad syntax; not in reaction context")
```

You can now `syntax-parameterize` a "parent" macro with the `@@message` parameter.
This will allow "children" macros to use the `@message` macro as a
`syntax-parameter` whose value is bound by the parameterization of `@@message`.
That allows you to pass syntactic information down from a parent macro
to its children without using `with-syntax` in every one of them.
The `@@message` syntax parameter can also be cleanly re-parameterized without
affecting existing macros.

See [Keeping it Clean with Syntax Parameters](http://eli.barzilay.org/misc/stxparam.pdf)
and [std/actor-v18/message.ss](https://github.com/mighty-gerbils/gerbil/blob/master/src/std/actor-v18/message.ss).
:::

### syntax-parameterize
```scheme
(syntax-parameterize ((param value) ...)
  body ...)
```

Rebinds one or more syntax parameters within the lexical scope of *body*.
Each *param* must have been defined with `defsyntax-parameter` or
`defsyntax-parameter*`. Each *value* is a syntax transformer that replaces
the parameter's expander for the duration of the body.

This is the mechanism by which parent macros pass context to child macros.

::: tip Example:
```scheme
(import :std/stxparam)

(defsyntax-parameter current-name
  (syntax-rules () ((_) (error "no name"))))

(defrules with-name ()
  ((_ name body ...)
   (syntax-parameterize ((current-name (syntax-rules () ((_) name))))
     body ...)))

;; Now (current-name) expands to "Alice" inside with-name
(with-name "Alice"
  (displayln (current-name)))
;; prints: Alice
```
:::

## Syntax Bindings

These are compile-time (`phi=+1`) bindings for use inside macros.

### syntax-parameter
```scheme
(defclass syntax-parameter (key default))
```

The compile-time class representing a syntax parameter. It has two fields:

- `key`: A gensym used internally to look up the current binding
- `default`: The default syntax transformer used when the parameter is not
  rebound

You normally don't construct these directly — use `defsyntax-parameter` instead.

### syntax-parameter-value
```scheme
(syntax-parameter-value id-stx) -> value
```

Returns the current value of the syntax parameter identified by *id-stx*
(a syntax object). If the parameter has been rebound via `syntax-parameterize`,
returns the rebound value; otherwise returns the default. Raises a syntax
error if *id-stx* is not bound to a syntax parameter.

This is used inside macro transformers to retrieve the current parameterized
value.

### syntax-parameter-e
```scheme
(syntax-parameter-e param) -> expander
```

Returns the current expander for the `syntax-parameter` object *param*. If
the parameter has been rebound, returns the rebound expander; otherwise
returns the default. Unlike `syntax-parameter-value`, this takes the
parameter object directly rather than a syntax identifier.
