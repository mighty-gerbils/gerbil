# Optimizing Gerbil Programs

Once you have mastered Gerbil, you will be able to write complex
systems programs with a performance envelope similar to equivalent
complexity C programs. Alas, mastery comes through practice, so it
might take you some time to fully understand the performance
properties of your code.

Here are some tips that can significantly improve performance.

## Profile your program first

This should be self-evident, but you shouldn't be trying to optimize
without [profiling](profiler.md) first. Once you have identified the
hotspots at module top level procedure granularity, you can focus your
efforts on optimizing the critical performance section.

## Always compile with -O

The optimizer does a lot of transforms that make you code go
significantly faster. Forgetting `-O` is like forgetting to drink
water.

## Use specialized arithmetic operations

If you are working with fixnums, use the `fx` prefixed operators.  If
you are working with flonums, use the `fl` prefixed operators.  You
can also scope this with `(declare (fixnum))` or `(declare (flonum))`
where appropriate.

## Surgically use `(not safe)`

Adding a `(declare (not safe))` in performance critical modules or
functions can help eliminate all overhead from dynamic type checking.
Use judiciously however, as it _really_ is unsafe; if you have a bug
it will be memory corruption and most likely a segfault.

## Limit use of apply

Use case-lambdas and opt-lambdas where applicable; `apply` allocates a
list for the arguments, which takes time, creates garbage, and
stresses the garbage collector.

## Make direct calls

The compiler arity checks and optimizes direct calls to known
procedures.

## Avoid internal optional, keyword, and case lambdas

They are great at the module interface barrier as they offer great
flexibility and the compiler optimizes direct dispatch. They are a
performance liability however as first class procedures as they have
to pack arguments and use apply for dispatch.

## Use unchecked accessors and mutators internally

Use the `unchecked: #t` option for generating unchcked accessors and
mutators for your structs and classes, which evade type checks (and
obviously are unsafe for export). Once you have checked the type of an
object at the interface barrier, you can avoid extraneous checks.

## Use interfaces

It goes without saying, but interface dispatch is a lot faster than
dynamic method dispatch. [Interfaces](/reference/std/interface.md)
provide the ideal vehicle for building facades to complex
functionality, where implementation details are hidden and certain
assumptions can be made.

## Benchmark Mode

If you want to see how fast your program can go at its current form,
then you can compile with `-full-program-optimization` and `-prelude
'(declare (not safe))'`. This will remove all implicit runtime
checking and show you your performance envelope.

::: tip Note
We do not advocate shipping programs compiled like this in production
servers, unless you want your devops to be debugging segfaults. The
programs are also nearly impossible to debug because everything is
lumped in a single host function and you might not even get a stack
trace with gdb.
:::
