# Print results and Exit

The `:std/cli/print-exit` module helps you write functions that can be
invoked either from the Scheme REPL or the Unix CLI, and in either case
will print their computation results after their invocation.

::: tip usage
```scheme
(import :std/cli/print-exit)
```
:::

The facilities are named in a way reminiscent of REPL (Read-Eval-Print-Loop),
except that instead of a form being Read and Eval'ed,
a function is called or a body is evaluated as in `begin`,
and after the Print part we Exit rather than Loop.

## Interface

### value-printer
```scheme
(define value-printer (make-parameter prn))
```
This parameter will return a function called on each value received
by `print-exit` or `print-values`
(unless there is a single value `(void)` that isn't printed).

Defaults to `prn`. You could instead use `writeln` or `displayln`.

### print-values
```scheme
(print-values . vs) => (void)
```
Process a list of values `vs` from a previous computation
(as per `(call-with-values thunk print-values)`), and
print each of those values (as applicable) using `(value-printer)`,
unless there is a single value that is `(void)`
in which case don't print anything
(also don't print anything if provided no values as per `(values)`).

Any values but `(void)` and `(values)` will thus cause the values to be printed,
one by one, using `(value-printer)`, similar to how the Scheme REPL works.
However, the Scheme REPL would use [`writeln`](../misc/ports.md#writeln) as its
value printer, but the default `(value-printer)` above is
[`prn`](../misc/repr.md#prn) which we found to be more useful in this situation.

### print-exit
```scheme
(print-exit . vs) => [exit]
```

Process a list of values `vs` from a previous computation
(as per `(call-with-values thunk print-exit)`), and
(1) print those values using `print-values`, then
(2) exit with an according exit code.

Any values but `#f` and `(values)` will cause the exit code 0 to be returned,
which the Unix shell will interpret as success or true.
The values `#f` and `(values)` will cause the exit code 1 to be returned,
which the Unix shell will interpret as failure or false.

The value `(void)` will thus indicate a silent success,
wherein nothing is printed and success is assumed, as is customary in Scheme.
The value `(values)` meanwhile will thus indicate a silent failure,
wherein nothing is printed and failure is assumed, of which however
only the first part (nothing printed) is customary in Scheme, whereas the
failure assumed is not customary in Scheme (but a false value would be assumed in e.g. CL).

### silent-exit
```scheme
(silent-exit success?) => void-or-values
```

Takes a boolean `success?` and returns a multiple values
that when passed to `print-exit` will not be printed, yet
will cause return an error code that the Unix shell will interpret
as success or true if the boolean is true, and
failure or false if the boolean is false.

`(void)` is the silent true exit returned if `success?` is true,
and `(values)` is the silent false exit returned if it is false.

### call-print-exit
```scheme
(call-print-exit fun) => [exit]
```
Call a function, print the resulting values (if applicable),
and exit with an according exit code, as per `print-exit`.
If an error occurs during execution,
exit with an error code as per
[`with-exit-on-error`](../error.md#with-exit-on-error).

### begin-print-exit
```scheme
(begin-print-exit body ...) => [exit]
```
Evaluates the `body` as in an anonymous function called by `call-print-exit`.

This macro is named in a way reminiscent of REPL (Read-Eval-Print-Loop),
except instead of a form being Read and Eval'ed, the body is evaluated
like `begin`, and after the Print part it Exits rather than Loops.
