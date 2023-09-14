# Timeouts
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/timeout)
```
:::

## make-timeout
``` scheme
(make-timeout t [def = absent-obj]) -> time object | def | error

  t   := real number in seconds | time object | #f (false value)
  def := default value returned in case t is #f
```

Creates a time object representing a time point relative to the current time.
These time objects are used as timeout input parameters for synchronization
primitives in modules such as `:gerbil/gambit/threads` or `:std/misc/channel`:

- `(thread-sleep! timeout)`
- `(thread-join! thread [timeout [timeout-val]])`
- `(mutex-lock! mutex [timeout [thread]])`
- `(mutex-unlock! mutex [condition-variable [timeout]])`
- `(channel-put channel value [time-object])`
- `(channel-get channel [time-object [default]])`

`make-timeout` expects *t* to be exact or inexact real number in seconds; a time
point object satisfying `time?`, in which case it returns *t* itself; or `#f`,
which is often the case for gerbil's internal usage of `make-timeout`, returning
the optional default parameter *def* instead.

Signals an error when *t* is something other than a real number, a time object or `#f`.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (thread-sleep! (make-timeout 10))
  ; no output, but will take ten seconds to complete
```
:::
