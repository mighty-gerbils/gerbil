# Debugging

Complex programs usually start as scribbling in a buffer, evaluated in
the REPL. The scribbling then becomes a module, which later becomes a
library, and eventually the program takes its more or less final
shape. In the end, it is compiled as a fully static binary and shipped
to a production server.

One thing is certain: in all stages of a program's evolution there
will be bugs.  Gerbil offers various mechanisms for debugging
programs, from inception to production.

See also [Testing](test.md).

## Debugging in the REPL

For interactive debugging, you can just load the relevant dynamic
modules in the `gxi` REPL and utilize its facilities. If the module is
loaded from source, then you will also get rudimentary stepping
support.

Here are the debugging commands avaiable in the `gxi` REPL:
```
$ gxi
Gerbil 0.17.0-336-g94ff9728 on Gambit v4.9.5-40-g24201248
> ,help
Gambit v4.9.5-40-g24201248
,?   | ,help    : Summary of comma commands
,h   | ,(h X)   : Help on procedure of last error or procedure/macro named X
,q              : Terminate the process
,qt             : Terminate the current thread
,t              : Jump to toplevel REPL
,d              : Jump to enclosing REPL
,c   | ,(c X)   : Continue the computation with stepping off
,s   | ,(s X)   : Continue the computation with stepping on (step)
,l   | ,(l X)   : Continue the computation with stepping on (leap)
,N              : Move to specific continuation frame (N>=0)
,N+  | ,N-      : Move forward/backward by N continuation frames (N>=0)
,+   | ,-       : Like ,1+ and ,1-
,++  | ,--      : Like ,N+ and ,N- with N = nb. of frames at head of backtrace
,y              : Display one-line summary of current frame
,i              : Display procedure attached to current frame
,b   | ,(b X)   : Display backtrace of current continuation or X (cont/thread)
,be  | ,(be X)  : Like ,b and ,(b X) but also display environment
,bed | ,(bed X) : Like ,be and ,(be X) but also display dynamic environment
,e   | ,(e X)   : Display environment of current frame or X (proc/cont/thread)
,ed  | ,(ed X)  : Like ,e and ,(e X) but also display dynamic environment
,st  | ,(st X)  : Display current thread group, or X (thread/thread group)
,(v X)          : Start a REPL visiting X (proc/cont/thread)
```

## Debugging with Exception Stack Traces

Gerbil goes to a lot of effort to ensure all exceptions have full
stack traces and a proper error context pointing to the location of
the source code where the fault condition occured.

If you have an exception stack trace, you can navigate to the
offending code in `GERBIL_PREFIX/src` and understand what the problem
is. Once you understand it, you can dynamically load the module where
the fault originated in the `gxi` REPL to reproduce and fix the
issue. Once the issue is fixed, you should probably add a regression
test as well.

## Debugging Hard Crashes

Occasionally, if you are using a `(not safe)` declaration in some
performance critical piece of code, there can be segfaults. All the
standard Gerbil modules included in `libgerbil` have debug symbols
enabled, so you can just run the program in gdb and get the location
of the crash.

If the crash is inside `libgerbil`, then you will most like have exact
location pointing to the _expanded_ source of the crash. You can find
the offending code in `GERBIL_PREFIX/lib/static`.  Note that we
_could_ have the tracked scheme source point to the original,
unexpanded source, but we prefer to work with expanded source as we'd
like to see the actual code that was compiled and also have the
ability to debug potential compiler bugs (these are exceedingly rare,
but they can happen).

If the crash is inside your own library or main code and you have an
input repro, you can just load the executable module of your program
dynamically with `gerbil :your-executable-module input-param
...`.
So within gdb, you can `gdb gerbil` and `r :your-executable-module input-param`.
This will get you source location, as all dynamically executable
modules are compiled with debug symbols.

If the crash is non deterministic, you can build your executable with
`gerbil build --debug`. This will get you debug symbols for the binary
and you can just run it directly with gdb until the crash occurs.  The
actual expanded source files will be in your build's
`GERBIL_PATH/lib/static`.  So if you built your project with `gerbil
build --debug`, these will be located in `.gerbil/lib/static`.

::: warning Note
Sometimes you might get a crash that has no usable stack trace.  This
can occur if you are calling a non procedure in unsafe context or
because of some very low level bugs.  If that happens, you will need
to guess a bit where the crash is coming from and disable your `(not
safe)` declarations in the relevant module so that you get an
exception with a stack trace instead.

If you determine that such a crash occurs because of some low level
Gerbil or Gambit bug, please file an [Issue](https://github.com/mighty-gerbils/gerbil/issues)
and/or get in touch with the Gerbil development team on
[gitter](https://gitter.im/gerbil-scheme/community).
:::


## Debugging Live Programs

You can use a remote/network REPL to connect to a running program
and evaluate code that helps you inspect and modify the state of
the program.

Gerbil offers a couple of different options for this:
 - The embedded [Network REPL](/reference/std/net/repl.md) is useful for any
   running program in your development workstation or laptop.
   You can just use `telnet` to connect, but you have to
   manually start the repl server inside your program.
 - Servers in an [Actor Ensemble](/tutorials/ensemble.md) automatically have
   network repl capabilities for debugging and loading code.
   You can interact with them  using the `gxensemble` tool.

Once you have a REPL to a running program, you can interact with it by
evaluating code.  Gerbil also provides some useful
[debugging libraries](/reference/std/debug.md) you can use to inspect the
state of the program, debug memory usage and leaks, and so on.
