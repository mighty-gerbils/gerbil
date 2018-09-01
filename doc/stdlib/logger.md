# Logging facilities

The `:std/logger` library provides basic logging facilities.

::: tip usage
(import :std/logger)
:::

## current-logger

::: tip usage
```
(current-logger [<logger>])
```
:::

Parameter denoting the current logger

## start-logger!

::: tip usage
```
(start-logger! [output = (current-error-port)])
  output := output-port; for inline logging in an existing port
            string; file name to append to
=> <logger>
```
:::

Ensures that a logger is running:
- If the current logger is set, then it returns the current logger.
- Otherwise it creates a new logger logging to `output`, sets the current logger,
  and returns the logger

## debug

::: tip usage
```
(debug fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```
:::

Logs a debug message, formatting the arguments with the format specifier.

## warning

::: tip usage
```
(warning fmt . args)
  fmt  := string; a format specifier
  args := arguments for format specifier
```
:::

Logs a warning message, formatting the arguments with the format specifier.

## log-error

::: tip usage
```
(log-error msg exn)
  msg := string; a message providing context to the error
  exn := exception
```
:::

Logs an error message, displaying the exception `exn` with `display-exception`.

## log-message

::: tip usage
```
(log-message level msg)
  level := symbol; the log level
  msg   := string; the message to log

```
:::

Logs a message.
