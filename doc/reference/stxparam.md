# Syntax Parameters

::: tip usage
(import :std/stxparam)
:::

## Macros

### defsyntax-parameter
::: tip usage
```
(defsyntax-parameter ...)
```
:::

Please document me!

### defsyntax-parameter*
``` scheme
(defsyntax-parameter* macro param (errmsg "Bad syntax")) -> macro

  macro  := name of the generated macro
  param  := name of the syntax parameter
  errmsg := custom error message
```

Expands into a macro with name *macro* which itself expands into
the value of the `syntax-parameter` *param*. The optional *errmsg* can
be used to customize syntax error reporting.

::: tip Examples:
``` scheme
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
and [std/actor/message.ss](https://github.com/vyzo/gerbil/blob/master/src/std/actor/message.ss).

:::

### syntax-parameterize
::: tip usage
```
(syntax-parameterize ...)
```
:::

Please document me!

## Syntax Bindings

For syntax bindings [phi=+1] for use in macros.

### syntax-parameter
```
(defclass syntax-parameter (key default))
```

Please document me!

### syntax-parameter-value
::: tip usage
```
(syntax-parameter-value ...)
```
:::

Please document me!

### syntax-parameter-e
::: tip usage
```
(syntax-parameter-e ...)
```
:::

Please document me!
