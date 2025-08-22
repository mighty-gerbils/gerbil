# Syntactic Tokens

There are predefined identifiers with an illegal reference expansion
that are frequently used as special identfiers for macro specific
expansion. It is recommended to avoid shadowing them (unless of course
you know what you are doing), as you could inadvertently interfere
with common macro semantics.

## _

The null binding or ignored value.

Syntax level predicate: `underscore?`

::: tip Note
`_` has somewhat special semantics in Gerbil: binding forms interpret
it as the ignored binding, which makes it non-referential. An attempt
to reference `_` will result in a syntax error.
:::

## ...
The ellipsis identifier.

Syntax level predicate: `ellipsis?`.

### else
Default alternative; marks the default clause in several macros.

### =>
Used for indirection in some macros; also used as return type
modifier in procedure/method signatures.

## unquote
Used by `quasiquote` to force evaluation.
Used by other macros in order to support meta-expansion _gnostic syntax.

Reader macro:
```
,x => (unquote x)
```

## unquote-splicing
Used by `quasiquote` to force evaluation, splicing the result as a list.
Used by other macros in order to support meta-expansion _gnostic syntax.

Reader macro:
```
,@x => (unquote-splicint x)
```

## unsyntax
Used by `quasisyntax`.

```
#,x => (unsyntax x)
```

## unsyntax-splicing
Used by `quasisyntax`.

```
#,@x => (unsyntax-splicing x)
```

## <>
Cut hole; used by `cut` and other macros to denote a hole filled by a lambda argument.

## <...>
Cut tail; used by `cut` and other macros to denote a hole filled by a lambda tail argument.
