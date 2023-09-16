# Exception Base Classes

The `:std/error` library provides base classes for exceptions and errors.

::: tip usage
(import :std/error)
:::


################################################################################
## exception

```
(defsyntax exception)
```

Empty base class for library-defined exceptions.

## &lt;error&gt;

```
(defsyntax <error>)
```

Base class for commonly structured error objects.

It is a struct type with 3 fields:
- `message`: a string message describing the error
- `irritants`: a list containing the irritants pertaining to the error
- `trace`: an optional symbol tracing the originating procedure

## io-error

```
(defstruct (io-error <error>) ())
```

Errors raised by the standard library because of I/O conditions.

## raise-io-error

::: tip usage
```
(raise-io-error where what . irritants)
```
:::

Raises an `io-error`.

## timeout-error

```
(defstruct (timeout-error <error>) ())
```

Errors raised by the standard library because of timeouts.

## raise-timeout

::: tip usage
```
(raise-timeout where what . irritants)
```
:::

Raises a `timeout-error`.
