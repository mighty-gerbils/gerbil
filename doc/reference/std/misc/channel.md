# Buffered channels
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/channel)
```
:::

## make-channel
``` scheme
(make-channel [n = #f]) -> channel

  n := optional fixnum, number of values channel buffer can hold
```

Creates a new buffered channel, a synchronization construct useful for sending
and receiving data between producers and consumers, implicitly locking when
reading from or writing to the channel. Chaining multiple channels, one after
another, allows building computation pipelines with ease. *n* specifies how many
elements the channel buffer is allowed to hold before blocking, with `#f` never
blocking at all.

::: tip Examples:
``` scheme
> (import :std/iter :gerbil/gambit/threads)
> (def (consume ch)
    (let (val (channel-get ch))
      (unless (eof-object? val)
        (with ([src . num] val)
          (displayln "received " num " from " src)
          (consume ch)))))
> (def (produce ch count)
    (for (i (in-iota count))
      (channel-put ch (cons (current-thread)
                            (+ 10 (random-integer 90))))))
> (let* ((ch (make-channel 2))
         (consumer (spawn consume ch))
         (producers (for/collect (i (in-iota 3))
                      (spawn produce ch 3))))
    (for-each thread-join! producers)
    (channel-close ch)
    (thread-join! consumer))
received 36 from #<thread #4>
received 73 from #<thread #4>
received 69 from #<thread #4>
received 73 from #<thread #5>
received 52 from #<thread #5>
received 59 from #<thread #5>
received 69 from #<thread #6>
received 53 from #<thread #6>
received 81 from #<thread #6>
```
:::

## channel?
``` scheme
(channel? ch) -> boolean

  ch := channel to check
```

Returns `#t` if *ch* is a channel, `#f` otherwise.

::: tip Examples:
``` scheme
> (channel? (make-channel))
t

> (make-channel 3)
#<channel #26>
> (channel-close #26)
> (channel? #26)
#t
```
:::

## channel-put
``` scheme
(channel-put ch val [timeout = #f]) -> boolean | error

  ch      := channel to write to
  val     := value to write into ch
  timeout := optional, how long to wait when channel is full
```

Writes *val* to *ch* and returns a truth value indicating whether the send was
successful or not. `channel-put` blocks when the channel's buffer is full,
waiting indefinitely for an available slot or until the optional *timeout*,
declared in seconds or as a relative time object, is reached. Sending data to an
already closed channel will signal an error.

::: tip Examples:
``` scheme
> (def ch (make-channel 3))
> (channel-put ch 'a)
#t
> (channel-put ch 'b)
#t
> (channel-put ch 'c)
#t
> (channel-put ch 'd 2)    ; buffer full, gives up after 2 seconds
#f
> (import :gerbil/gambit/threads)
> (spawn-thread (lambda () (thread-sleep! 2) (channel-get ch)))
#<thread #29>
> (channel-put ch 'e)      ; blocks until other thread retrieves value
#t
> (channel-put ch 'e)      ; blocks indefinitely, no other threads retrieve values
*** ERROR IN ##thread-deadlock-action! -- Deadlock detected
```
:::

## channel-try-put
``` scheme
(channel-try-put ch val) -> boolean | error

  ch  := channel to write to
  val := value to write into ch
```

Similar to `channel-put`, but doesn't block when the channel's buffer is full,
simply indicating success or failure via a truth value. Sending data to an
already closed channel will signal an error.

::: tip Examples:
``` scheme
> (def ch (make-channel 3))
> (channel-try-put ch 'a)
#t
> (channel-try-put ch 'b)
#t
> (channel-try-put ch 'c)
#t
> (channel-try-put ch 'd)    ; buffer full, doesn't block, gives up right away
#f

> (close-channel ch)
> (channel-try-put ch 'e)    ; channel already closed, no longer valid to right to it
error
```
:::

## channel-sync
``` scheme
(channel-sync ch val ...) -> void | error

  ch      := channel to write to
  val ... := values to send to ch
```

Forcefully writes *val ...* to *ch*, ignoring the channel's buffer limit. Useful
for sending special values that indicate a bi-directional out-of-band
communication request between consumers and producers without blocking. Sending
data to an already closed channel will signal an error.

::: tip Examples:
``` scheme
> (import :std/iter :gerbil/gambit/threads)
> (def (consume ch)
    (let loop ((i 0))
      (match (channel-get ch)
        ((eq? #!eof)
         (displayln "we're done here"))
        ((cons (quote more?) (? thread? thread))
         (displayln "received: sync request")
         (thread-send thread (if (< i 10) 'yes 'no))
         (loop i))
        ((? number? num)
         (displayln "received: " num)
         (loop (1+ i))))))
> (def (produce ch)
    (let loop ()
      (if (channel-try-put ch (random-integer 100))
        (loop)
        (begin            ; if buffer full, ask consumer whether to produce more
          (channel-sync ch (cons 'more? (current-thread)))
          (match (thread-receive)
            ('yes (loop))
            ('no  (channel-close ch)))))))
> (let* ((ch (make-channel 4))
         (producer (spawn produce ch))
         (consumer (spawn consume ch)))
    (for-each thread-join! [producer consumer]))
received: 28
received: 67
received: 79
received: 67
received: sync request    ; out-of-band answer via thread-send: 'yes
received: 21
received: 43
received: 71
received: 54
received: sync request    ; answer: 'yes
received: 29
received: 19              ; consumer processed 10 items, target reached
received: 61
received: 88
received: sync request    ; answer: no; producer closes channel, consumer shuts down
we're done here
```
:::

## channel-get
``` scheme
(channel-get ch [timeout = #f] [default = #f]) -> any | default | #!eof

  ch      := channel to read from
  timeout := optional, how long to wait when channel is empty
  default := optional, value to return when timeout reached
```

Reads a value from *ch* and returns it, or *default* if a *timeout* was set and
reached, declared in seconds or as a relative time object. `channel-get` blocks
when the channel's buffer is empty, waiting indefinitely for more data or until
the optional *timeout* is reached. Reading data from an already closed channel
is allowed, but will always return `#!eof`.

::: tip Examples:
``` scheme
> (def ch (make-channel 3))
> (for-each (cut channel-try-put ch <>) (iota 10))
> (channel-get ch)
0
> (channel-get ch 2)           ; returns right away
1
> (channel-get ch 2 'EMPTY)
2
> (channel-get ch 2)           ; channel can only hold three values, waits two seconds
#f
> (channel-get ch 2 'EMPTY)
EMPTY
> (channel-close ch)
> (channel-get ch)
#!eof
> (channel-get ch 2 'EMPTY)    ; closed channel always returns #!eof
#!eof
```
:::

## channel-try-get
``` scheme
(channel-try-get ch [default = #f]) -> any | default | #!eof

  ch      := channel to read from
  default := optional, value to return when channel empty
```

Similar to `channel-get`, but doesn't block when the channel's buffer is empty,
simply returning *default* in that case. Reading data from an already closed
channel is allowed, but will always return `#!eof`.

::: tip Examples:
``` scheme
> (def ch (make-channel 3))
> (for-each (cut channel-try-put ch <>) (string->list "abcdef"))
> (channel-try-get ch)
#\a
> (channel-try-get ch)
#\b
> (channel-try-get ch 'EMPTY)
#\c
> (channel-try-get ch 'EMPTY)    ; returns right away, no blocking occurs
EMPTY
> (channel-close ch)
> (channel-try-get ch 'EMPTY)
#!eof
```
:::

## Channel Iterator
``` scheme
(defmethod (:iter (ch channel)) (iter-channel ch)) -> iterator

  ch := channel to iterate over
```

The module defines a generic dispatch overload for buffered channels, allowing
them to be iterated just like lists or hashes. Iterating *ch* will yield values,
and block if necessary, until the channel is closed and its elements fully
consumed.

::: tip Examples:
``` scheme
> (import :std/iter)
> (def (consume ch)
    (for/fold (sum 0) (x ch)
      (+ x sum)))
> (def (produce ch count)
    (for (i (in-iota count))
      (channel-put ch (random-integer 100))))
> (let* ((ch (make-channel))
         (consumer (spawn consume ch))
         (producers (for/collect (i (in-iota 10))
                      (spawn produce ch 100))))
    (for-each thread-join! producers)
    (channel-close ch)
    (thread-join! consumer))
49644
```
:::

## channel-close
``` scheme
(channel-close ch) -> void

  ch := channel to close
```

Closes a buffered channel, forbidding write access. Consumers are still allowed
to retrieve values from such a closed channel, but once empty, it will simply
return `#!eof`.

Note: Only senders should close channels. Furthermore, it's not an error to
close a channel multiple times.

::: tip Examples:
``` scheme
> (def ch (make-channel))
> (channel-put ch 1)
#t
> (channel-close ch)
> (channel-get ch)      ; reading from a closed channel is allowed
1
> (channel-get ch)
#!eof
> (channel-put ch 2)    ; writing to a closed channel signals an error
error
```
:::

## channel-closed?
``` scheme
(channel-closed? ch) -> boolean

  ch := channel to check
```

Returns `#t` if *ch* is closed, `#f` otherwise.

::: tip Examples:
``` scheme
> (def ch (make-channel))
> (channel-closed? ch)
#f
> (channel-close ch)
> (channel-closed? ch)
#t
```
:::

## Channel Destructor
``` scheme
(defmethod {destroy <port>} channel-close)
```

The module also defines a `destroy` method for channels, so that they can be
used in `with-destroy` forms and other primitives that use the destroy idiom,
ensuring that channels will be closed even if an error is signaled somewhere
within the body.

::: tip Examples:
``` scheme
> (def ch (make-channel))
> (channel-put ch 10)
#t
> (channel-closed? ch)
#f
> (with-destroy ch
    (channel-get ch))
10
> (channel-closed? ch)
#t
```
:::
