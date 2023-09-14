# Process Utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/process)
```
:::

## run-process
``` scheme
(run-process cmd
             [coprocess: read-all-as-string]
             [check-status: #t]
             [environment: #f]
             [directory: #f]
             [stdin-redirection: #t]
             [stdout-redirection: #t]
             [stderr-redirection: #f]
             [pseudo-terminal: #f]
             [show-console: #f]) -> any | error

  cmd                := list of strings, [path . arguments]
  coprocess          := procedure interacting with process
  check-status       := procedure or truth value
  environment        := list of strings, ["VAR=VALUE" ...]
  directory          := dir, working directory
  stdin-redirection  := boolean, standard input redirection
  stdout-redirection := boolean, standard output redirection
  stderr-redirection := boolean, standard error redirection
  pseudo-terminal    := boolean, terminal or pipes (UNIX)
  show-console       := boolean, show or hide console (Windows)
```

Synchronously runs *cmd* in a subprocess, where *cmd* is expected to be a list
consisting of a path to an executable on the filesystem and its arguments.

The following keyword settings are available:

- *coprocess*: A procedure that specifies how to interact with the process,
  which it receives as an argument, and what should be returned from
  `run-process`. Defaults to reading the whole output as a string via
  `std/misc/ports#read-all-as-string`.
- *check-status*: Declares how to handle the exit status of the process upon
  termination. If a procedure is provided, then it will be called with the
  process' exit status and a list of process creation arguments. If
  *check-status* is `#t`, the default, then the exit status is checked and an
  error is raised in case it differs from `0`. Lastly, the exit status is simply
  ignored, when *check-status* is `#f`.
- *environment*: Indicates the set of environment variable bindings that the
  process receives. Each element of the list is a string of the form
  `VAR=VALUE`, where *VAR* is the name of the variable and *VALUE* is its
  binding. When *environment* is `#f`, which is the default, the process inherits
  the environment variable bindings of the Scheme program.
- *directory*: Sets the working directory of the process. When it's `#f`, the
  default, then the process uses the value of `(current-directory)`.
- *stdin-redirection*: Indicates how the standard input of the process is
  redirected. The default `#t` will redirect the standard input from the
  process-port (i.e. what is written to the process-port will be available on
  the standard input). `#f` will leave the standard input as-is, which typically
  results in input coming from the console.
- *stdout-redirection*: Indicates how the standard output of the process is
  redirected. The default `#t` will redirect the standard output to the
  process-port (i.e. all output to standard output can be read from the
  process-port). `#f` will leave the standard output as-is, which typically
  results in the output going to the console.
- *stderr-redirection*: Indicates how the standard error of the process is
  redirected. `#t` will redirect the standard error to the process-port (i.e.
  all output to standard error can be read from the process-port). The default
  `#f` will leave the standard error as-is, which typically results in error
  messages being output to the console.
- *pseudo-terminal*: Applies to *UNIX*. It indicates what type of device will be
  bound to the process’ standard input and standard output. `#t` will use a
  pseudo-terminal device (this is a device that behaves like a tty device even
  though there is no real terminal or user directly involved). The default `#f`
  will use a pair of pipes. The difference is important for programs which
  behave differently when they are used interactively, for example shells.
- *show-console*: Applies to *Microsoft Windows*. It controls whether the
  process’ console window will be hidden or visible. The default value of this
  setting is `#f` (i.e. hide the console window).

More information can be found in section `17.7.2 Process devices` of the Gambit
manual.

::: tip Examples:
``` scheme
> (run-process ["date" "--utc"] coprocess: read-line)
"Tue 21 May 2019 12:22:20 PM UTC"

> (run-process ["/usr/bin/ls"])
"desktop\ndev\ndocuments\ndownloads\nmusic\nnotes\npictures\nvideos\n"

> (import :std/misc/ports)
> (run-process ["ls" "-l"] coprocess: read-all-as-lines)
("drwxr-xr-x.  2 user user  4096 Mar 26 13:26 desktop"
 "drwxr-xr-x.  8 user user  4096 May 13 14:28 dev"
 "drwxr-xr-x. 12 user user 12288 May 19 17:26 documents"
 "drwxr-xr-x.  2 user user  4096 May 20 10:13 downloads"
 "drwxrwxr-x.  8 user user  4096 May  1 15:13 music"
 "drwxr-xr-x.  2 user user  4096 May 21 10:53 notes"
 "drwxr-xr-x.  9 user user  4096 Apr 30 19:08 pictures"
 "drwxrwxr-x.  3 user user 12288 May 21 09:41 videos")


> (def (word-count path)
    (run-process ["wc" path]
                 coprocess: (lambda (process)
                              (with ([l w c] (filter number? (read-all process)))
                                (displayln "lines: " l "\nwords: " w "\nchars: " c)))))
> (word-count "/home/user/dev/scheme/nums.txt")
lines: 5
words: 5
chars: 10
```
:::

## run-process/batch
``` scheme
(run-process/batch cmd) -> void

  cmd := list of strings, [path . arguments]
```

Runs a batch process with *stdin* closed, and both *stdout* and *stderr* on the
current console. Same as `(run-process cmd coprocess: close-output-port
stdout-redirection: #f)`.

::: tip Examples:
``` scheme
> (def files ["file1.txt" "file2.txt" "file3.txt"])
> (for-each (lambda (file) (run-process/batch ["touch" file])) files)
> (run-process/batch (append ["zip" "big.zip"] files))
adding: file1.txt (stored 0%)
adding: file2.txt (stored 0%)
adding: file3.txt (stored 0%)
```
:::
