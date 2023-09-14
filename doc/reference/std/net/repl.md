# Network REPL

Network repl for debugging live programs.

::: tip usage
(import :std/net/repl)
:::

## start-repl-server!
::: tip usage
```
(start-repl-server! password: (passwd #f)
                    address: (address "127.0.0.1:7000"))
=> <server>

```
:::

Starts a network REPL server.

## stop-repl-server!
::: tip usage
```
(stop-repl-server! <server>)
```
:::

Stops a REPL server

## taint!
::: tip usage
```
REPL> (std/net/repl#taint! [tgroup])
  tgroup := thread-group; defaults to the primordial thread-group
=> <state>
```
:::

Taints a thread-group, redirecting its repl ports to the repl server ports.
This is necessary to visit threads in the debugger.
Returns the thread-group specific state.

## untaint!
::: tip usage
```
REPL> (std/net/repl#untaint! [tgroup [state]])
  tgroup := thread-group; defaults to the primordial thread-group
  state := any; defaults to #f
```
:::

Untaints a thread-group, restoring its specific state.

## Loading the Expander

By default, once connected, the REPL does not load the Gerbil expander but
uses the primitive Gambit eval. This allows the REPL to be embedded to
static binaries without the requirement to embed the expander's environment.

You can load the expander on demand in executables with:
```
REPL> (gerbil-load-expander!)
```
