
## Identifiers

### identifier?
``` scheme
(identifier? syntax-object)
```

Returns #t if syntax-object is an identifier, or #f otherwise.

Very useful as a guard for expansion.

``` scheme
> (defsyntax (add42 stx)
   (syntax-case stx () 
    ((_ id) (identifier? #'id)
     #'(+ id 42))))
> (let (n 0) (add42 n))
42
> (add42 0)
*** ERROR -- 
*** ERROR IN (stdin)@432.1
--- Syntax Error: Bad syntax
... form:   (add42 0)
> 
```


### free-identifier=?
::: tip usage
```
(free-identifier=? ...)
```
:::

Please document me!

### bound-identifier=?
::: tip usage
```
(bound-identifier=? ...)
```
:::

Please document me!

### genident
::: tip usage
```
(genident ...)
```
:::

Please document me!

### gentemps
::: tip usage
```
(gentemps ...)
```
:::

Please document me!

### stx-identifier
::: tip usage
```
(stx-identifier ...)
```
:::

Please document me!

### identifier-list?
::: tip usage
```
(identifier-list? ...)
```
:::

Please document me!

### check-duplicate-identifiers
::: tip usage
```
(check-duplicate-identifiers ...)
```
:::

Please document me!

### underscore?
::: tip usage
```
(underscore? ...)
```
:::

Please document me!

### ellipsis?
::: tip usage
```
(ellipsis? ...)
```
:::

Please document me!

