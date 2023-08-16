# Actors

Actor-oriented concurrent and distributed programming.

::: tip to use bindings from this package
(import :std/actor)
:::

**Note: this page documents the API of the actors package in Gerbil v0.18 and later; the legacy actor package is deprecated, but still available in `:std/actor-v13` if you need time to port existing code.**

## Messaging Primitives

### ->
```scheme
(-> dest msg
    replyto: (replyto #f)
    expiry: (expiry #f)
    reply-expected: (reply-expected? #f))
```
Sends a message to dest, which must be a thread or actor handle, wrapped in an envelope.
- `replyto` is an optional nonce when sending a reply to a previous message.
- `expiry` is an optional expiry time (as a time object), which denotes the expiry of the
   message. Expired messages will not be processed by the reaction macro `<-` below.
- `reply-expected?` is a boolean indicated whether a reply is expected to this message.
   It is a hint for message routers to send back a control reply in case of routing
   errors.
Returns the nonce of the message or `#f` if the message was not sent because the destination
actor was detected as dead.

### ->>
```scheme
(->> dest msg
     replyto: (replyto #f)
     timeout: (timeo (default-reply-timeout)))
```
Sends a message to dest and waits for the reply.
- `replyto` is an optional nonce indicating a reply to a previous interaction.
- `timeout` is the timeout for receiving the reply, which must be a relative time (a positive real) or an absolute time (a time object).

Returns the value received in the reply message.

Raises an actor error if the message could not be sent because the destination was detected
as dead.

Raises a timeout error if waiting for the reply times out.

### -->
```scheme
(--> result)
```

Sends result as a reply to the source of the message in the current
reaction context; it must be invoked within the lexical scope of a
`<-` reaction.

### -->?
```scheme
(-->? result)
```

Conditionally sends result as a reply to the source of the message in
the current reaction context, if a reply is expected; it must be
invoked within the lexical scope of a `<-` reaction.

### <-
```scheme
(<- (pattern body ...) ...
    [timeout: timeo]
    [(else body ...)])
```

Receives an enveloped message from the thread's mailbox matching one
of the patterns and dispatching the body accordingly; patterns are
matched with `match`.

If there is a timeout specified, it will raise a timeout error if no
message matching any of the patterns is received before the timeout
ellapses.

If there is an `else` clause it will be dispatched immediately if
there is no message matching any of the patters in the mailbox.

Within a reaction rule body, the following syntactic variables are set:
- `@envelope` is set to the message envelope.
- `@message`  is set to the envelope payload.
- `@desat`    is set to the envelope destination.
- `@source`   is set to the envelope source.
- `@nonce`    is set to the envelope nonce.
- `@replyto`  is set to the envelope reply nonce.
- `@expiry`   is set to the envelope expiry.
- `@reply-expected?` is sewt to the envelope reply-expected hint.

### <<
```scheme
(<< (pattern body ...) ...
    [timeout: timeo]
    [(else body ...)])
```

Like `<-` but it matches raw messages; you don't normally have to use this.
There are no syntactic variables bound in the reaction context.

### envelope
```scheme
(defstruct envelope (message dest source nonce replyto expiry reply-expected?)
 ...)
```

Envelope structure for messages; you normally shouldn't construct
those by hand and let the send operators construct it for you.

The structure is provided so that you program raw reactions with `<<`,
for instance when writing a proxy actor.

### send-message
```scheme
(send-message actor msg)
```

Sends a message to an actor, which must be a thread or a handle.
Returns `#f` if the message was not sent because the actor was detected as dead.

You don't normally have to invoke this, it is invoked internally by
the send operators.  It is provided however in case you want to send
pre-constructed envelopes, for instance when writing a proxy actor.

### current-thread-nonce!
```scheme
(current-thread-nonce!)
```

Returns the current thread's numeric nonce and post increments.

You don't normally have to use this procedure, the nonce is
incremented automatically by the send operators. Its is provided
however in case you want to construct your own envelopes, for instance
when writing a prpoxy actor.

### actor-error
```scheme
(defstruct (actor-error <error>) ())
```

Structure for actor errors.

### raise-actor-error
```scheme
(raise-actor-error where what . irritants)
```

Raises an actor error.

### default-reply-timeout
```scheme
(default-reply-timeout)
```

The default reply timeout; initial value is 5s.

### set-default-reply-timeout!
```scheme
(set-default-reply-timeout! timeo)
```
Sets the default reply timeout.


## Handles and References

### make-handle

### handle?

### handle-proxy

### handle-ref

### reference

### reference->handle



## Protocols

### defmessage

### message?

### defcall-actor

### !ok

### !error

### with-result


## Actor Management Protocol

### !ping

### @ping

### !shutdown

### @shutdown

### @unexpected



### Tickers

#### ticker

#### ticker-after

#### after

#### !tick


### Actor Monitors

#### actor-monitor

#### !actor-dead


## The Actor Server

### Actor Addresses

### current-actor-server

### start-actor-server!

### stop-actor-server!

### actor-server-identifier

### register-actor!

### connect-to-server!

### list-actors

### list-connections

### default-known-servers

### set-default-known-servers!

### default-registry-addresses

### set-default-registry-addresses!

### server-address-cache-ttl

### set-server-address-cache-ttl!


## Ensemble Servers

### call-with-ensemble-server


## Ensemble Control

This is programmatic functionality for operations normally performed
using the `gxensemble` tool; see the [ensemble
tutorial](../tutorials/ensemble.md) for more information.

### stop-actor!

### remote-stop-server!

### remote-list-actors

### remote-connect-to-server!

### remote-list-connections

### remote-load-library-module

### remote-load-code

### remote-eval

### ping-server

### ping-actor

### ensemble-add-server!

### ensemble-remove-server!

### ensemble-list-servers

### ensemble-lookup-server

### ensemble-lookup-servers/role
