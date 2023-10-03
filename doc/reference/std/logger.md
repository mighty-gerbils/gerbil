# Logging

The `:std/logger` library provides basic logging facilities.

::: tip To use bindings from this module
(import :std/logger)
:::

## Overview
The logging system is built around the notion of sources and levels; a source indicates the origin
of a log message and the level indicates th severity of the condition.

There are 5 pre-defined levels:
- ERROR   (0) -- indicates an error condition in the program.
- WARN    (1) -- indicates a warning.
- INFO    (2) -- indicates an informational message.
- DEBUG   (3) -- indicates a debug message.
- VERBOSE (4) -- indicates a verbose debug message.

You can customize the threshold level over which messages are logged by parameterizing
`current-logger-options`.
The parameter value can be either a level (symbolic or fixnum) or an instance of `logger-options`,
which allows you to set a default and per-source threshold levels.

You can use the `deflogger` macro to define a log source, which will expand to define 5 logging
functions: `errorf`, `warnf`, `infof`, `debugf`, and `verbosef`. These are format-like functions,
that accept a message string with optional format arguments, and log using the specified source.

Finally, in order to log messages, you must start a logger actor with `start-logger!`
somewhere in your program. You can supply a port (defaults to `current-error-port`) or a file path,
to which log output will be appended.


## Procedures and Macros
### deflogger
```
(deflogger source)
=>
(begin
  (def (errorf fmt . args) ...)
  (def (warnf fmt . args) ...)
  (def (infof fmt . args) ...)
  (def (debugf fmt . args) ...)
  (def (verbosef fmt . args) ...))
```

Macro which Defines log functions for a specific log source.

### start-logger!

```
(start-logger! [output = (current-error-port)])
  output := output-port; for inline logging in an existing port
            string; file name to append to
=> <logger>
```

Ensures that a logger is running:
- If the current logger is set, then it returns the current logger.
- Otherwise it creates a new logger logging to `output`, sets the current logger,
  and returns the logger

### current-logger

```
(current-logger [<logger>])
```

Parameter denoting the current logger

### current-logger-options
```
(current-logger-options [<logger-options>|<symbol>|<fixnum>])
```

Parameter denoting the current logger options.
The value can be a level (symbolic of fixnum) or an instance of `logger-options`.

### logger-options
```
(make-logger options <threshold> <per-source-thresholds>)
=> <logger-options>

(logger-options? obj) => bool

```

The logger options allow you to specify a default and per source log thresholds, so that you
can customize the log output of a program post factor.
The constructor accepts a a threshold level (symbolic or fixnum) and a hash table of source to
threshold level.

## errorf

```
(errorf fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```

Predefined error logger, using the default source.

## warnf

```
(warnf fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```

Predefined warn logger, using the default source.

## infof

```
(infof fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```

Predefined info logger, using the default source.


## debugf

```
(debug fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```

Predefined debug logger, using the default source.

## verbosef

```
(verbosef fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```

Predefined verbose logger, using the default source.
