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
    [,(reaction-rule-macro ...) ...]
    [,@(multiple-reaction-rules-macro ...) ...]
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
```scheme
(handle proxy ref)
```

Creates a handle for sending messages to an actor through a proxy.
- `proxy` is the actor who will receive the messages, a thread.
- `ref` is a reference to the actor being proxied; in general it is
  something the proxy can interpret; see `referece` below.

### handle?
```scheme
(handle? obj)
```

Predicate for handles.


### handle-proxy
```scheme
(handle-proxy h)
```

Returns the proxy in the handle.

### handle-ref
```scheme
(handle-ref h)
```

Returns the actor reference in the handle.

### reference
```scheme
(defmessage reference (server id))
```

References for actors in the ensemble.
- `server` is the server identifier where the actor resides.
- `id` is the actor identifier, generally a symbol for references by name.


### reference->handle
```scheme
(reference->handle ref (srv (current-actor-server)))
```

Creates a handle from a reference, using by default the current actor
server as the proxy.


## Protocols

### defmessage
```scheme
(defmessage id (field-name ...) struct-options ...)
```

Macro to define message types that can be efficiently marshalled as
protocol messages.

The structure is final and transparent, and it is registered in the
message type registry where the unmarshaller can find it.

Note: messages _must_ be acyclic; if you want to send cyclic data you
can use a normal struct, but be aware that such structs will be
serialized/deserialized with the raw gambit serializer and carry the
whole type descriptor (including methods) with them.

### message?
```scheme
(message? obj)
```

Predicate for instances of messages defined with `defmessage`.

### defcall-actor
```scheme
(defcallactor (proc arg ...)
  expr
  [error: error-msg error-irritant ...])
```

Macro for defining synchronous interaction entry points for actors.

The macro defines a procedure that invokes an actor with `expr` and
matches the result.  If it is `!ok` the embeded value is returned.  If
it is `!error` an actor error is raised, using the optional error
message and irritants specified in the definition.

### !ok
```scheme
(defmessage !ok (value))
```

Message indicating a successful invocation of an actor.

### !error
```scheme
(defmessage !error (message))
```

Message indicating an error in an actor invocation. The message is a
diagnostic string, that will be included in the error raised by
`defcall-actor` definitions.

### with-result
```scheme
(with-result expr [fail!])
```

Evalutes `expr` and matches the result; if it is `!ok` the embedded
value is returned.  If it is `!error` an error is raised by invoking
the `fail!` (`error` by default) procedure with the error message.


## Actor Management Protocol

### !ping
```scheme
(defmessage !ping ())
```

Message sent to check liveness of an actor; the actor must reply with
`(!ok 'OK)` if it is live.

### @ping
```scheme
(defrule (@ping)
  ((!ping) (--> (!ok 'OK))))
```

Reaction macro to automatically respond to `!ping` messages.

You can use this in reaction context (`<-`) with the gnostic `,(@ping)` syntax.


### !shutdown
```scheme
(defmessage !shutdown ())
```

Message sent to request an actor to gracefully shutdown.

### @shutdown
```scheme
(defrule (@shutdown exit ...)
  ((!shutdown)
   (-->? (!ok (void)))
   exit ...))
```

Reaction macro to automatically (conditionally) respond to a `!shutdown` message.

You can use this in reaction context (`<-`) with the gnostic
`,(@shutdown exit-actor-loop ...)` syntax.

### @unexpected
```scheme
(defrule (@unexpected logf)
  (unexpected
   (logf "unexpected message from ~a: ~a" @source @message)
   (-->? (!error "unexpected message"))))
```

Reaction macro to autoamtically log and conditionally respond to unexpected messages.

You can use this in reaction contex (`<-`) with the gnostic
`,(@unexpected warnf)` syntax.


### Tickers

#### ticker
```scheme
(ticker peer (period 1) (tick 'tick))
```

Runs in a loop sending `!tick` messages to `peer` every ellapsed `period`.

You can spawn tickers to send heartbeat messages to an actor like this:
```scheme
(spawn/name 'ticker ticker (current-thread))
```

#### ticker-after
```scheme
(ticker-after peer initial-delay (period 1) (tick 'tick))
```

Runs `ticker` after sleeping for `initial-delay`.

#### after
```scheme
(after time peer (tick 'tick))
```

Sleeps for `time` and sends a tick to the specified peer.

#### !tick
```scheme
(defmessage !tick (id seqno))
```

This is the message sent by `ticker` and related procedures to signify a temporal tick.
- `id` is the identifier of the tick, which is a hint for actors to
  demulitplex multiple tick sources.
- `seqno` is the sequence number of the tick.


### Actor Monitors

#### actor-monitor
```scheme
(actor-monitor actor peer (send ->))
```

Joins `actor` and sends an `!actor-dead` message to `peer` when it exits.

The `send` procedure is used to send the message; if you are
processing raw messages with `<<` in your actor's reaction loop, you
can use `send-message` instead of `->` to avoid wrapping the
notification in an envelop.

You can spawn an actor monitor to notify you of thread exits like this:
```scheme
(spawn/name 'actor-monitor actor-monitor actor (current-thread))
```

#### !actor-dead
```scheme
(defmessage !actor-dead (thread))
```

Message sent by actor monitors to notify or a monitored thread exit.


## The Actor Server

### Server Addresses

Actor server addresses can be:
- UNIX domain addresses
- TCP addresses
- TLS addresses -- will be available for the v0.18 release.

### Unix Addresses
A UNIX domain address is denoted like this:
```
[unix: hostname path]
```

`hostname` is the name of the host where the server is
accessible and `path` is the socket path.

Actor servers will never try to connect to unix addresses in different
hosts.

### TCP Addresses
A TCP addres is denoted like this:
```
[tcp: inet-addr]
```

`inet-addr` is an inet address; normally a pair of a host address and a port.
See the `:std/net/address` module for more details.

### TLS Addresses

TODO

### current-actor-server
```scheme
(current-actor-server)
```

Parameter denoting the current actor server.

This parameter is set automatically by `start-actor-server!` and
`call-with-ensemble-server`; you don't normally have to set it
manually.

### start-actor-server!
```scheme
(start-actor-server! cookie:     (cookie (get-actor-server-cookie))
                     addresses:  (addrs [])
                     identifier: (id (make-random-identifier))
                     ensemble:   (known-servers (default-known-servers)))
```

Starts an actor server, sets the `current-actor-server` parameter and
returns the main server thread.
- `cookie` is the ensemble cookie; normally resides in `$GERBIL_PATH/ensemble/cookie`.
- `addresses` is the list of addresses the server should listen; by default it is empty,
  making this a transient actor server.
- `identifier` is the server identifier; if you don't specify one, a random server
  one will be generated.
- `ensemble` specifies statically known hosts; it is a hash table mapping server identifiers
  to lists of addresses.
  The default known servers only contain the registry with the default registry address.

### stop-actor-server!
```scheme
(stop-actor-server! (srv (current-actor-server)))
```

Stops and joins an actor server.

### actor-server-identifier
```scheme
(actor-server-identifier (srv (current-actor-server)))
```

Returns an actor server's identifier.

### register-actor!
```scheme
(register-actor! name (srv (current-actor-server)))
```

Registers the current thread in an actor server as an actor with the name `name`.

### connect-to-server!
```scheme
(connect-to-server! id (addrs #f) (srv (current-actor-server)))
```

Instructs an actor server to connect to another server.
- `id` is the identifier of the target server
- `addrs` is an optional list of addresses; if none is specified and
  the server is uknown, its addresses will be resolved through the
  ensemble registry.

### list-actors
```scheme
(list-actors (srv (current-actor-server)))
```

Lists the actors registered with an actor server.
Returns a list of references.

### list-connections
```scheme
(list-connections (srv (current-actor-server)))
```

Lists the current connections of an actor server.
Returns a list of pairs, with a server identifier at the car and the
list of addresses connected at the cdr.

### default-known-servers
```scheme
(default-known-servers)
```

Returns a hash table with the default known servers.
By default it only contains the registry reachable in its default address.

### set-default-known-servers!
```scheme
(set-default-known-servers! servers)
```

Sets the default known servers; `servers` must be a hash table mapping
server identifiers to lists of addresses.

### default-registry-addresses
```scheme
(default-registry-addresses)
```

Returns the default registry addresses, as a list of addresses.  By
default the registry is reachable at `/tmp/ensemble/registry` in the
current host.

### set-default-registry-addresses!
```scheme
(set-default-registry-addresses! addrs)
```

Sets the default registry addresses.

### server-address-cache-ttl
```scheme
(server-address-cache-ttl)
```

Returns the actor's server address cache TTL; by default this is 5 minutes.

### set-server-address-cache-ttl!
```scheme
(set-server-address-cache-ttl! ttl)
```

Sets the actor server's address cache TTL.



## Ensemble Servers

### call-with-ensemble-server
```scheme
(call-with-ensemble-server server-id thunk
                           log-level: (log-level 'INFO)
                           log-file:  (log-file #f)
                           listen:    (listen-addrs [])
                           announce:  (public-addrs #f)
                           registry:  (registry-addrs #f)
                           roles:     (roles [])
                           cookie:    (cookie (get-actor-server-cookie)))
```

This is the programmatic equivalent of `gxensemble run`; first it
starts the logger with the appropriate options, and then it starts a
new actor server with identifier `server-id`, starts the loader
service, adds the server to the ensemble, and then invokes thunk.
When the thunk exits, it shuts down the actor server and removes the
server-id from the ensemble.

Options:
- `log-level`: logging level to use; INFO by default
- `log-file`: log file for the logger; if it is "-" then the canonical
  server log is used; this file is at
  `$GERBIL_PATH/ensemble/server/<server-id>/log`.

### ensemble-base-path
```scheme
(ensemble-base-path)
```

Returns the base directory for the ensemble; this is `$GERBIL_PATH/ensemble`.

### ensemble-server-path
```scheme
(ensemble-server-path server-id)
```

Returns the directory for server specific data; this is `$GERBIL_PATH/ensemble/server/<server-id>`.

## Ensemble Control

This is programmatic functionality for operations normally performed
using the `gxensemble` tool; see the [ensemble tutorial](../tutorials/ensemble.md)
for more information.

### stop-actor!
```scheme
(stop-actor! ref (srv (current-actor-server)))
```

Stops an actor referred by `ref` by sending it a `!shutdown` request.

### remote-stop-server!
```
(remote-stop-server! srv-id (srv (current-actor-server)))
```

Stops the remote server with identifier `srv-id`.

### remote-list-actors
```scheme
(remote-list-actors srv-id (srv (current-actor-server)))
```

Lists registered actors at the remote server with identifier `srv-id`.

### remote-connect-to-server!
```scheme
(remote-connect-to-server! from-id to-id (addrs #f) (srv (current-actor-server)))
```

Asks the remote server with identifier `from-id` to connect to the
server with identifier `to-id`.  If the optional addresses `addrs` are
not specified, then the `to-id` server will be looked up in the registry.

### remote-list-connections
```scheme
(remote-list-connections srv-id (srv (current-actor-server)))
```

Lists the connections of a remote server with identifier `srv-id`.

### remote-load-library-module
```scheme
(remote-load-library-module srv-id mod (srv (current-actor-server)))
```

Asks the remote server with identifier `srv-id` to load the library module `mod`.

### remote-load-code
```scheme
(remote-load-code srv-id object-file-path (srv (current-actor-server)))
```

Asks the remote server with identifier `srv-id` to load a code object file.

### remote-eval
```scheme
(remote-eval srv-id expr (srv (current-actor-server)))
```

Evaluates `expr` in the remote server with identifier `srv-id`.

### ping-server
```scheme
(ping-server srv-id (srv (current-actor-server)))
```

Pings the remote server with identifier `srv-id`.

### ping-actor
```scheme
(ping-actor ref (srv (current-actor-server)))
```

Pings the actor referred by `ref`.

### ensemble-add-server!
```scheme
(ensemble-add-server! id addrs roles (srv (current-actor-server)))
```

Adds a server to the ensemble registry:
- `id` is the server identifier
- `addrs` is the list of actor server addresses.
- `roles` is a list of roles for the server; a list of symbols.

### ensemble-remove-server!
```scheme
(ensemble-remove-server! id (srv (current-actor-server)))
```

Removes the server with identifier `id` from the ensemble registry.

### ensemble-list-servers
```scheme
(ensemble-list-servers (srv (current-actor-server)))
```

Lists the current ensemble servers.

### ensemble-lookup-server
```scheme
(ensemble-lookup-server id (srv (current-actor-server)))
```

Looks up a server's addresses in the registry.

### ensemble-lookup-servers/role
```scheme
(ensemble-lookup-servers/role role (srv (current-actor-server)))
```

Looks up servers (and their addresses) that fullfilly `role` in the
ensemble.
