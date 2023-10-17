
# Port utilities
::: tip To use the bindings from this module:
```scheme
(import :std/misc/ports)
```
:::

## copy-port
```scheme
(copy-port in out) -> void | error

  in  := input port to read from
  out := output port to write to
```

Copy all data from port *in* to port *out*. Signals an error when *in* and *out*
aren't satisfying `input-port?` and `output-port?`, respectively.

::: tip Examples:
```scheme
> (def nums (string-join (map number->string [1 2 3 4 5]) "\n" 'suffix))
> (call-with-output-file "~/testing/nums.txt"
    (lambda (out)
      (call-with-input-string nums
        (lambda (in) (copy-port in out)))))

$ cat ~/testing/nums.txt    ; unix-like command-line
1
2
3
4
5

> (copy-port (current-input-port) (current-output-port))
hello,
hello,       ; duplicates what you type at the REPL
everyone!
everyone!    ; quit with Ctrl-D
```
:::

## read-all-as-string
```scheme
(read-all-as-string in) -> string | error

  in := input port to read from
```

Reads all the contents of port *in*, returning a single string including all
newline characters. Signals an error when *in* can't be read.

::: tip Examples:
```scheme
> (import :std/srfi/13)
> (with-input-from-file "~/dev/gerbil/CHANGELOG.md"
    (lambda ()
      (string-take (read-all-as-string (current-input-port)) 80)))
"### 2-9-2019: Gerbil-v0.15.1\n\nPatch release to support Gambit v4.9.3\n\nDetails:\n-"
```
:::

## read-all-as-lines
```scheme
(read-all-as-lines in [separator: #\newline] [include-separator?: #f]) -> list | error

  in                 := input port to read from
  separator          := character to consider line ending
  include-separator? := truth value, whether to include separator char in results
```

Reads all the contents of port *in* as a list of strings. The optional separator
related keyword parameters specify what is considered a line ending and whether
to include these separator characters in the line strings. Signals an error when
*in* can't be read.

::: tip Examples:
```scheme
> (import :std/srfi/1)
> (take (call-with-input-file "~/dev/gerbil/README.md" read-all-as-lines) 4)
("# Gerbil Scheme"
 ""
 "Gerbil is an opinionated dialect of Scheme designed for Systems Programming,"
 "with a state of the art macro and module system on top of the Gambit runtime.")

> (with-input-from-string "aa:bb:cc:dd::ff"
    (lambda () (read-all-as-lines (current-input-port) separator: #\:)))
("aa" "bb" "cc" "dd" "" "ff")
```
:::

## read-file-string
```scheme
(read-file-string path) -> string | error

  path := path to file to read contents from
```

Reads contents of the file at *path*, returning a single string including all
newline characters. Signals an error when *path* can't be read.

Note: There is another optional *settings* keyword parameter not shown above,
but it's not terribly interesting for this file reading procedure. Check section
`17.7.1 Filesystem devices` of the Gambit Manual if you want to know more.

::: tip Examples:
```scheme
$ cat ~/testing/nums.txt    ; unix-like command-line
1
2
3
4
5

(map string->number
     (string-split (read-file-string "~/testing/nums.txt") #\newline))
(1 2 3 4 5)
```
:::

## read-file-lines
```scheme
(read-file-lines path) -> list | error

  path := path to file to read contents from
```

Reads all lines of the file at *path* as a list of strings. Signals an error
when *path* can't be read.

Note: There is another optional *settings* keyword parameter not shown above,
but it's not terribly interesting for this file reading procedure. Check section
`17.7.1 Filesystem devices` of the Gambit Manual if you want to know more.

::: tip Examples:
```scheme
$ cat ~/testing/nums.txt    ; unix-like command-line
1
2
3
4
5

> (read-file-lines "~/testing/nums.txt")
("1" "2" "3" "4" "5")

;; Advent of code 2018, problem 01a: Sum a file of around 1000 exact integer values.
$ head -n5 ~/dev/aoc18/01/input.txt
+12
-13
+17
+17
-10

> (apply + (map string->number (read-file-lines "~/dev/aoc18/01/input.txt")))
508
```
:::

## read-all-as-u8vector
```scheme
(read-all-as-u8vector in (bufsize 8192)) -> u8vector | error

  in      := input port to read from
  bufsize := buffer size, defaults to 8192 bytes
```

Reads all the contents of port *in*, returning a single u8vector. Signals
an error when *in* can't be read.

::: tip Examples:
```scheme
> (def u8 (call-with-input-file "/path/to/file" read-all-as-u8vector))
> (u8vector-length u8)
98526
```
:::

## read-file-u8vector
```scheme
(read-file-u8vector path settings: [] bufsize: 8192) -> u8vector | error

  path     := path to file to read contents from
  settings := port settings, defaults to the empty list
  bufsize  := buffer size, defaults to 8192 bytes
```

Reads contents of the file at *path*, returning a single u8vector. Signals
an error when *path* can't be read.

Check section `17.7.1 Filesystem devices` of the Gambit Manual if you want
to know more about the *settings* parameter.

::: tip Examples:
```scheme
> (def u8 (read-file-u8vector "/path/to/file" bufsize: 1024))
> (u8vector-length u8)
98526
```
:::

## write-file-string
```scheme
(write-file-string file string settings: [] newline-ending: #t) -> void | error

  file           := the file to be written to
  string         := the string to write
  settings       := Gambit path-settings (default [])
  newline-ending := append newline if last character is not a newline (default #t)
```

Write string to file using the `display` procedure. Check section
[17.7.1 Filesystem devices](http://www.iro.umontreal.ca/~gambit/doc/gambit.html#Filesystem-devices)
of the Gambit Manual if you want to know more about the `settings` parameter.

::: tip Examples:
```scheme
;; write "Hello, world!\n" to /tmp/foo.txt (may overwrite an existing file)
(write-file-string "/tmp/foo.txt" "Hello, world!")  ; \n is appended automatically

;; by using a path-setting we can append a string to an existing file
(write-file-string "/tmp/foo.txt" "hi" settings: [append: #t])

;; the file content is now: "Hello, world!\nhi\n"

;; let's append another string without auto-enforcement of a newline ending
(write-file-string "/tmp/foo.txt" "ho" settings: [append: #t] newline-ending: #f)

;; the final file content is: "Hello, world!\nhi\nho"  ; no trail newline character
```
:::

## write-file-lines
```scheme
(write-file-lines file list settings: [] newline-ending: #t) -> void | error

  file           := the file to be written to
  list           := list of strings to write
  settings       := Gambit path-settings (default [])
  newline-ending := append newline if last character is not a newline (default #t)
```

Write every entry of the list as newline separated line to file using
the `display`procedure. Check section
[17.7.1 Filesystem devices](http://www.iro.umontreal.ca/~gambit/doc/gambit.html#Filesystem-devices)
of the Gambit Manual if you want to know more about the `settings` parameter.

::: tip Examples:
```scheme
(write-file-lines "/tmp/foo.txt" ["foo" "bar"])

$ cat /tmp/foo.txt    ; unix-like command-line
foo
bar
```
:::

## force-current-outputs
```scheme
(force-current-outputs) -> (void)
```

Force the `current-output-port` and the `current-error-port`.
Useful before you drop to a REPL, debugger or interactive prompt, or before you `exit` the program.

::: tip Examples:
```scheme
(force-current-outputs)
```
:::

## writeln
```scheme
(writeln object [port]) -> (void)
```

Display a string representation of the Scheme `object` as per `write`, then display a line ending as
per `newline`, using the optional `port` which defaults to `(current-output-port)`.

::: tip Examples:
```scheme
> (writeln ['a 1 "foo"]) ;; response is written, return value is (void), unwritten
(a 1 \"foo\")
> (with-output (o #f) (writeln '(a 1 "foo") o))
"(a 1 \"foo\")\n"
```
:::

## output-contents
```scheme
(output-contents contents ?port) -> void | error

  contents       := a string, byte array or procedure
  port           := an output port -- optional, defaults to (current-output-port)
```

Write the contents into the port: If it's a string, `display` it;
if it's a byte array, use `write-u8vector`; if it's a procedure, call it with the port as argument;
otherwise, throw an error.

`output-contents` is notably useful as a helper within a function that
makes a port available to a consumer, e.g. by creating a port, using it once or several times
by calling output-contents, then closing it, such as `call-with-output`.

::: tip Examples:
```scheme
(def (create-foo contents)
  (call-with-output-file ["/tmp/foo"] (cut output-contents foo <>)))
```
:::

## call-with-output
```scheme
(call-with-output output-spec content-spec) -> output content per spec
```

`call-with-output` creates an output port as designated by `output-spec`, then
output content to it as designated by `content-spec`.

The `output-spec` is interpreted as follows:
- a port designates itself;
- the false value `#f` designates a fresh string output port,
  and the result returned is the final string content of the port;
- the true value `#t` designates the `(current-output-port)`;
- a string designates a pathname to be open using `call-with-output-file`;
- a list designates a list of settings to pass to `call-with-output-file`;
- other values are invalid (a future version of Gerbil might accept additional values).

The content is handled as per `output-content`: a string is displayed, a byte array is written,
a procedure is called with the port as argument.

The result returned depends on the specified output:
typically, it's the result of the procedure passed as content
(or void if a string or byte array is passed as content);
but if the `output-spec` was false, a string containing the accumulated output is returned.

`output-contents` is notably useful as a helper within a function that
makes a port available to a consumer, e.g. by creating a port, using it once or several times
by calling output-contents, then closing it, such as `call-with-output`.

`call-with-output` is a good helper for higher-order functions that themselves produce or wrap
text content, and whose output is as often used standalone or transcluded as part of other functions
(with a port as an argument in the latter case).

::: tip Examples:
```scheme
;; pretty printer for a datastructure ms of type my-struct, with optional output-spec o
(def (pp-my-struct ms (o #f))
  (call-with-output o
    (lambda (port)
      (display "my-struct { a: " port)
      (pp-a (my-struct-a ms) port)
      (display " b: " port)
      (pp-a (my-struct-b ms) port)
      (display " }" port))))
```
:::

## with-output
```scheme
(with-output (o output-spec) body ...) -> same as (call-with-output output-spec (lambda (o) body ...))
(with-output (o) body ...) -> (call-with-output o (lambda (o) body ...))
```

`with-output` is a simple macro that wraps around `call-with-output`.
Interestingly, when its first argument is a list of one symbol, that symbol is used as both
input value for an `output-spec` as per `call-with-output` in the outer scope,
and as output binding for a resolved port in the inner scope,
allowing for seamless resolution of an `output-spec` designator around the inner scope.

::: tip Examples:
```scheme
;; same example as above using with-output
(def (pp-my-struct ms (o #f))
  (with-output (o)
    (display "my-struct { a: " o)
    (pp-a (my-struct-a ms) o)
    (display " b: " o)
    (pp-a (my-struct-b ms) o)
    (display " }" o)))
```
:::

## call-with-input
```scheme
(call-with-input input-spec f) -> call f with specified input
```

`call-with-input` creates an input port as designated by `input-spec`, then
calls the function `f` with that port as argument.

The `input-spec` is interpreted as follows:
- a port designates itself;
- the true value `#t` designates the `(current-input-port)`;
- a string designates a port to be open by passing it to `call-with-input-string`;
- a u8vector designates a port to be open by passing it to `call-with-input-u8vector`;
- a list designates the settings to pass to `call-with-input-file`;
- other values are invalid (a future version of Gerbil might accept additional values).

The result returned is that of the call to function `f`.

`call-with-input` is a good helper for higher-order functions that themselves consume or wrap
the consumption of a character stream, and whose input is as a complete string or file as it is
a stream passed as part of larger parsing effort (with a port as an argument in the latter case).

::: tip Examples:
```scheme
;; parser for a datastructure
(def (parse-my-struct i)
  (call-with-input i
    (lambda (port)
      (let* ((a (parse-a-field port))
             (b (parse-b-field port)))
        (make-my-struct a b)))))
```
:::

## with-input
```scheme
(with-input (i input-spec) body ...) -> same as (call-with-input input-spec (lambda (i) body ...))
(with-input (i) body ...) -> (call-with-input i (lambda (i) body ...))
```

`with-input` is a simple macro that wraps around `call-with-input`.
Interestingly, when its first argument is a list of one symbol, that symbol is used as both
input value for an `input-spec` as per `call-with-input` in the outer scope,
and as input binding for a resolved port in the inner scope,
allowing for seamless resolution of an `input-spec` designator around the inner scope.

::: tip Examples:
```scheme
;; same example as above using with-input
(def (parse-my-struct i)
  (with-input (i)
    (let* ((a (parse-a-field i))
           (b (parse-b-field i)))
      (make-my-struct a b))))
```
:::

## char-port-eof?
```scheme
(char-port-eof? port) -> bool
```

`char-port-eof?` is function that given a `port` that is an input-port for characters,
returns `#t` if that port is at the end of file, or else `#f`.

::: tip Examples:
```scheme
> (call-with-input-string "a" (lambda (port) (let* ((x (char-port-eof? port))
                                               (y (read-char port))
                                               (z (char-port-eof? port)))
                                          [x y z])))
(#f #\a #t)
```
:::

## Port Destructor
```scheme
(defmethod {destroy <port>} close-port)
```

The module also defines a `destroy` method for ports, so that they can be used
in `with-destroy` forms and other primitives that use the destroy idiom,
ensuring that ports will be closed even if an error is signaled somewhere within
the body.

::: tip Examples:
```scheme
> (define (for-each-dir-entry dir proc)
    (let ((dir-port (open-directory dir)))
      (let loop ()
        (let ((file (read dir-port)))
          (if (eof-object? file)
              (close-port dir-port)
              (begin
                (proc file)
                (loop)))))))

;; could also be written like this utilizing with-destroy:
> (import :std/sugar)
> (define (for-each-dir-entry dir proc)
    (let ((dir-port (open-directory dir)))
      (with-destroy dir-port
        ;; dir-port will be closed upon exiting this scope
        (let loop ((file (read dir-port)))
          (unless (eof-object? file)
            (proc file)
            (loop (read dir-port)))))))

> (for-each-dir-entry "/home/username" displayln)
dev
downloads
videos
documents
desktop
pictures
music
testing
```
:::
