# Actors

Actor-oriented concurrent and distributed programming.

::: tip to use bindings from this package
(import :std/actor)
:::

**Note: this page documents the API of the actors package in Gerbil v0.18 and later; the legacy actor package is deprecated, but still available in `:std/actor-v13` if you need time to port existing code.**

## Messaging Primitives

### ->

### ->>

### -->

### -->?

### <-

### <<

### envelope

### send-message

### current-thread-nonce!

### actor-error

### raise-actor-error

### default-reply-timeout

### set-default-reply-timeout!



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

### Results

#### !ok

#### !error

#### with-result

### Actor Managment Protocol

#### !ping

#### @ping

#### !shutdown

#### @shutdown

#### @unexpected


### Tickers

#### ticker

#### ticker-after

#### after

#### !tick


### Actor Monitors

#### actor-monitor

#### !actor-dead


## The Actor Server

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

This is programmatic functionality for operations normally performed using the `gxensemble` tool;
see the  [ensemble tutorial](../tutorials/ensemble.md) for more information.

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
