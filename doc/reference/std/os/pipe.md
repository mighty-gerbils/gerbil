# Pipes
::: tip usage
(import :std/os/pipe)
:::

## pipe
::: tip usage
```
(pipe [direction = 'inout] [closeonexec = #t])
=> (values in out)
```
:::

Creates a pipe.

The parameter `direction` controls the returned values:
- if the direction is `inout`, it returns two raw devices for input and output
- if the direction is `in`, it returns a raw device for input and a file descriptor for output
- if the direction is `out`, it returns a file descriptor for input and a raw device for output
- if the direction is `none`, it returns two file descriptors for input and output.

If the `closeonexec` parameter is true, then the raw devices are set to close on exec.
Note that the file descriptors are not affected by the option, and they are not set to nonblocking
either.
