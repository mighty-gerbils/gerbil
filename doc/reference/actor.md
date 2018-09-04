# Actors

Actor-oriented concurrent and distributed programming.

::: tip usage
(import :std/actor)
:::

## Overview

Please write me!

## Basic Types

### message
```
(defstruct message (e source dest options))
```

Please document me!

### proxy
```
(defstruct proxy (handler))
```

Please document me!

### handle
```
(defstruct (handle proxy) (uuid))
```

Please document me!

### remote
```
(defstruct (remote handle) (address proto))
```

Please document me!

### remote=?
::: tip usage
```
(remote=? ...)
```
:::

Please document me!

### remote-hash
::: tip usage
```
(remote-hash ...)
```
:::

Please document me!


## Exceptions

### actor-error?
::: tip usage
```
(actor-error? ...)
```
:::

Please document me!

### rpc-error?
::: tip usage
```
(rpc-error? ...)
```
:::

Please document me!

### remote-error?
::: tip usage
```
(remote-error? ...)
```
:::

Please document me!

### rpc-io-error?
::: tip usage
```
(rpc-io-error? ...)
```
:::

Please document me!


## Message Primitives

### -&gt;
::: tip usage
```
(-> ...)
```
:::

Please document me!

### send
::: tip usage
```
(send ...)
```
:::

Please document me!

### send-message
::: tip usage
```
(send-message ...)
```
:::

Please document me!

### send-message/timeout
::: tip usage
```
(send-message/timeout ...)
```
:::

Please document me!

### &lt;&lt;
::: tip usage
```
(<< ...)
```
:::

Please document me!

### &lt;-
::: tip usage
```
(<- ...)
```
:::

Please document me!

### @message
```
(defsyntax @message)
(defsyntax @@message)
```

Please document me!

### @value
```
(defsyntax @value)
(defsyntax @@value)
```

Please document me!

### @source
```
(defsyntax @source)
(defsyntax @@source)
```

Please document me!

### @dest
```
(defsyntax @dest)
(defsyntax @@dest)
```

Please document me!

### @options
```
(defsyntax @options)
(defsyntax @@options)
```

Please document me!

### !
```
(defsyntax !)
```

Please document me!


## Protocols

### defproto
::: tip usage
```
(defproto ...)
```
:::

Please document me!

### defproto-default-type
::: tip usage
```
(defproto-default-type ...)
```
:::

Please document me!

### !protocol
```
(defstruct !protocol (id super types))
```

Please document me!

### proto-out
::: tip usage
```
(proto-out ...)
```
:::

Please document me!

### !rpc
```
(defstruct !rpc ())
```

Please document me!

### !call
```
(defstruct (!call !rpc) (e k)
```

Please document me!

### !!call
::: tip usage
```
(!!call ...)
```
:::

Please document me!


### !value
```
(defstruct (!value !rpc) (e k))
```

Please document me!

### !!value
::: tip usage
```
(!!value ...)
```
:::

Please document me!


### !error
```
(defstruct (!error !rpc) (e k))
```

Please document me!

### !!error
::: tip usage
```
(!!error ...)
```
:::

Please document me!

### !event
```
(defstruct (!event !rpc) (e))
```

Please document me!

### !!event
::: tip usage
```
(!!event ...)
```
:::

Please document me!

### !stream
```
(defstruct (!stream !rpc) (e k))
```

Please document me!

### !!stream
::: tip usage
```
(!!stream ...)
```
:::

Please document me!

### !yield
```
(defstruct (!yield !rpc) (e k))
```

Please document me!

### !!yield
::: tip usage
```
(!!yield ...)
```
:::

Please document me!

### !end
```
(defstruct (!end !rpc) (k))
```

Please document me!

### !!end
::: tip usage
```
(!!end ...)
```
:::

Please document me!

### !continue
```
(defstruct (!continue !rpc) (k))
```

Please document me!

### !!continue
::: tip usage
```
(!!continue ...)
```
:::

Please document me!

### !close
```
(defstruct (!close !rpc) (k))
```

Please document me!

### !!close
::: tip usage
```
(!!close ...)
```
:::

Please document me!

### !abort
```
(defstruct (!abort !rpc) (k))
```

Please document me!

### !!abort
::: tip usage
```
(!!abort ...)
```
:::

Please document me!

### !sync
```
(defstruct (!sync !rpc) (k))
```

Please document me!

### !!sync
::: tip usage
```
(!!sync ...)
```
:::

Please document me!

### !token
```
(defstruct !token ())
```

Please document me!


### !!pipe
::: tip usage
```
(!!pipe ...)
```
:::

Please document me!


## Syntax Bindings

### make-protocol-info
::: tip usage
```
(make-protocol-info ...)
```
:::

Please document me!

### protocol-info?
::: tip usage
```
(protocol-info? ...)
```
:::

Please document me!

### protocol-info-runtime-identifier
::: tip usage
```
(protocol-info-runtime-identifier ...)
```
:::

Please document me!

### protocol-info-id
::: tip usage
```
(protocol-info-id ...)
```
:::

Please document me!

### protocol-info-extend
::: tip usage
```
(protocol-info-extend ...)
```
:::

Please document me!

### protocol-info-calls
::: tip usage
```
(protocol-info-calls ...)
```
:::

Please document me!

### protocol-info-events
::: tip usage
```
(protocol-info-events ...)
```
:::

Please document me!

### protocol-info-streams
::: tip usage
```
(protocol-info-streams ...)
```
:::

Please document me!


## RPC

### current-rpc-server
::: tip usage
```
(current-rpc-server ...)
```
:::

Please document me!

### start-rpc-server!
::: tip usage
```
(start-rpc-server! ...)
```
:::

Please document me!

### stop-rpc-server!
::: tip usage
```
(stop-rpc-server! ...)
```
:::

Please document me!

### rpc-connect
::: tip usage
```
(rpc-connect ...)
```
:::

Please document me!

### rpc-register
::: tip usage
```
(rpc-register ...)
```
:::

Please document me!

### rpc-unregister
::: tip usage
```
(rpc-unregister ...)
```
:::

Please document me!

### bind-protocol!
::: tip usage
```
(bind-protocol! ...)
```
:::

Please document me!


## RPC Server Protocol

### rpc.register
::: tip usage
```
(rpc.register ...)
(!rpc.register ...)
(!!rpc.register ...)
```
:::

Please document me!

### rpc.unregister
::: tip usage
```
(rpc.unregister ...)
(!rpc.unregister ...)
(!!rpc.unregister ...)
```
:::

Please document me!

### rpc.resolve
::: tip usage
```
(rpc.resolve ...)
(!rpc.resolve ...)
(!!rpc.resolve ...)
```
:::

Please document me!

### rpc.server-address
::: tip usage
```
(rpc.server-address ...)
(!rpc.server-address ...)
(!!rpc.server-address ...)
```
:::

Please document me!

### rpc.monitor
::: tip usage
```
(rpc.monitor ...)
(!rpc.monitor ...)
(!!rpc.monitor ...)
```
:::

Please document me!

### rpc.unmonitor
::: tip usage
```
(rpc.unmonitor ...)
(!rpc.unmonitor ...)
(!!rpc.unmonitor ...)
```
:::

Please document me!

### rpc.disconnect
::: tip usage
```
(rpc.disconnect ...)
(!rpc.disconnect ...)
(!!rpc.disconnect ...)
```
:::

Please document me!

### rpc.shutdown
::: tip usage
```
(rpc.shutdown ...)
(!rpc.shutdown ...)
(!!rpc.shutdown ...)
```
:::

Please document me!


## RPC Wire Protocols

### rpc-null-proto
::: tip usage
```
(rpc-null-proto ...)
```
:::

Please document me!

### rpc-cookie-proto
::: tip usage
```
(rpc-cookie-proto ...)
```
:::

Please document me!

### rpc-generate-cookie!
::: tip usage
```
(rpc-generate-cookie! ...)
```
:::

Please document me!

### rpc-cipher-proto
::: tip usage
```
(rpc-cipher-proto ...)
```
:::

Please document me!

### rpc-cookie-cipher-proto
::: tip usage
```
(rpc-cookie-cipher-proto ...)
```
:::

Please document me!


## RPC Options

### set-rpc-keep-alive-interval!
::: tip usage
```
(set-rpc-keep-alive-interval! ...)
```
:::

Please document me!

### set-rpc-idle-timeout!
::: tip usage
```
(set-rpc-idle-timeout! ...)
```
:::

Please document me!

### set-rpc-call-timeout!
::: tip usage
```
(set-rpc-call-timeout! ...)
```
:::

Please document me!


## Example

Please write me!
