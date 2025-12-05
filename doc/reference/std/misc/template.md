# String Templates

The `:std/misc/template` library provides basic string templating procedures.
This templating interface is much simpler than something like [the `format`
procedure from the `:std/format` module](/reference/std/format.md#format).

::: tip To use the bindings from this module:
```scheme
(import :std/misc/template)
```
:::

## apply-template

```scheme
(apply-template (template : :string)
                key: value ...)
=> :string
```

::: tip
Any number of `key: value` argument pairs may be provided, but they **must** be
in pairs
:::

Returns a new string as defined by `template` with the following differences:

- Each instance of the marker text `${key}` in the `template` is replaced by the
  `value` in the matching `key: value` argument pair. It is an error if there is
  no matching `key: value` argument pair
- Each instance of the text `\\c` (where `c` is any character) is replaced with
  `c`. This allows escaping parts of the aforementioned marker text to prevent
  replacement
