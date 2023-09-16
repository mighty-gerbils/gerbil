# Exception Base Classes

The `:std/error` library provides base classes for exceptions and errors.

::: tip usage
(import :std/error)
:::

## The root of the hierarchy

The exception hierarchy is rooted in two base classes: `Error` and `Exception`.
- Instances of `Error` indicate error conditions, and they have a
  standard payload of a message, a subsystem or procedure name where
  the error originated, and a list of irritants.
- Instances of `Exception` indicate exceptional conditions that are
  not necessarily errors, and do not have a standard payload.

### Exception
```scheme
(defclass Exception ...)
```

The base class for naked exception objects; there are no fields or slots in this class.

### Error
```scheme
(defclass Error ...)

(Error message irritants: (irritants []) where: (where #f))
```
The base class for errors.

The constructor takes a required argument (`message`) and two optional keyword arguments:
- `message`; this the error message to display to the user.
- `irritants`; this is a list of objects related to the error condition.
- `where`; this is usually a symbol (may be false) indicating the source of the error.

### Error?
```scheme
(Error? obj)
```

Predicate for `Error` instances.

### Error-message
```scheme
(Error-message err) -> string
  err := instance of Error
```

Accessor for the error message.

### Error-irritants
```scheme
(Error-irritants err) -> list
  err := instance of Error
```

Accessor for the error irritants.

### Error-where
```scheme
(Error-where err) -> any
  err := instance of Error
```

Accessor for the error origin.

### Error:::init!
```scheme
(Error:::init! err message irritants: (irritants []) where: (where #f))
  err := instance of Error
```

The base `Error` constructor, which error subclasses can call to
initialize the base error reprsentation.

### Error::display-exception
```scheme
(Error::display-exception err port)
  err  := instance of Error
  port := output port
```

Base method for displaying Errors, including a stack trace if
available; see `StackTrace` below.


## Standard Error Classes

The following are predefined classes with standard semantics, used
througout the standard library.

### StackTrace
```scheme
(defclass StackTrace (continuation))
```

Mixin class for stack traces in errors.

If an error class mixes in `StackTrace` is raised by this module's
redefined `raise` (see below), then the current continuation will be
captured (if not already captured) and stored in the `continuation`
slot. The continuation backtrace will be displayed by
`Error::display-exception` to facilitate debugging.


### StackTrace?
```scheme
StackTrace?
```

Predicate for `StackTrace` mixins.

### BadArgument
```scheme
(defclass (BadArgument StackTrace Error) ())
```

Error indicating a bad argument condition.

### BadArgument?
```scheme
(BadArgument? exn)
```

Predicate testing whether the error is a bad argument condition.

### bad-argument-error?
```scheme
(def bad-argument-error? BadArgument?
```

same as `BadArgument?`

### IOError
```scheme
(defclass (IOError StackTrace Error) ())
```

Error indicating an IO condition.

### IOError?
```scheme
(IOError? exn)
```

Predicate testing whether the error is an IO condition.

### io-error?
```scheme
(def io-error? IOError?
```

same as `IOError?`

### PrematureEndOfInput
```scheme
(defclass (PrematureEndOfInput IOError) ())
```

Error indicating that input was exhausted prematurely; similar to EOF
exceptions in other languages.

### PrematureEndOfInput?
```scheme
(PrematureEndOfInput? obj)
```

Predicate testing whether the error is a premature end of input condition.

### premature-end-of-input-error?
```scheme
(def permature-end-of-input? PrematureEndOfInput?)
```

Same as `PrematureEndOfInput?`.

### IOClosed
```scheme
(defclass (IOClosed IOError) ())
```

Error indicating that the IO sink or source has been closed and thus
no further IO operations can be performed.

### IOClosed?
```scheme
(IOClosed? obj)
```

Predicate testing whether the error is an IO closed condition.

### io-closed-error?
```scheme
(def io-closed-error? IOClosed?)
```

Same as `IOClosed?`.

### Timeout
```scheme
(defclass (Timeout StackTrace Error) ())
```

Error indicating that some operation has timed out.

### Timeout?
```scheme
(Timeout? obj)
```

Predicate testing whether the error is a timeout.

### timeout-error?
```scheme
(def timeout-error? Timeout?)
```

Same as `Timeout?`.

## Raising Errors

The library redefines `raise` so that it feels stack traces where appropriate.
It also provides some utility procedure for raising particular errors.

### raise
```scheme
(raise exn)
```

Raises an exception condition.

If the exception object is an instance of `StackTrace`, then unless
there is already a continuation because this is a re-raise, the
continuation is captured and stored in the `continuation` slot.

### raise-bad-argument
```scheme
(raise-bad-argument where expectation bad)
```

Raises a `BadArgument` condition.

### raise-io-error
```scheme
(raise-io-error where what . irritants)
```

Raises an `IOError` condition.

### raise-premature-end-of-input
```scheme
(raise-premature-end-of-input where . irritants)
```

Raises a `PrematureEndOfInput` condition.

### raise-io-closed
```scheme
(raise-io-closed where what . irritants)
```

Raises an `IOClosed` condition.

### raise-timeout
```scheme
(raise-timeout where what . irritants)
```

Raises a `Timeout` condition.
