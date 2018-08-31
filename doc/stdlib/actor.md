# Actors

::: tip usage
(import :std/actor)
:::

Package for actor-oriented concurrent and distributed programming.

```
(import :std/actor)

;; exports:

;; :std/actor/message
  (struct-out message proxy)
  (struct-out actor-error)
  -> send send-message send-message/timeout
  << <- !

;; :std/actor/proto
  rpc-io-error? raise-rpc-io-error
  (struct-out remote-error rpc-error)
  (struct-out handle remote)
  remote=? remote-hash
  (struct-out !rpc !call !value !error !event
              !stream !yield !end !continue !close !abort !sync
              !token)
  !!call !!value !!error !!event
  !!stream !!pipe !!yield !!end !!continue !!close !!abort !!sync
  (struct-out !protocol)
  defproto proto-out
  defproto-default-type
  (phi: +1 make-protocol-info protocol-info?
        protocol-info-runtime-identifier
        protocol-info-id
        protocol-info-extend
        protocol-info-calls
        protocol-info-events)

;; :std/actor/rpc
  current-rpc-server
  start-rpc-server!
  stop-rpc-server!
  rpc-connect rpc-register rpc-unregister
  (struct-out rpc.register)
  !rpc.register !!rpc.register
  (struct-out rpc.unregister)
  !rpc.unregister !!rpc.unregister
  (struct-out rpc.resolve)
  !rpc.resolve !!rpc.resolve
  (struct-out rpc.server-address)
  !rpc.server-address !!rpc.server-address
  (struct-out rpc.monitor)
  !rpc.monitor !!rpc.monitor
  (struct-out rpc.unmonitor)
  !rpc.unmonitor !!rpc.unmonitor
  (struct-out rpc.disconnect)
  !rpc.disconnect !!rpc.disconnect
  (struct-out rpc.shutdown)
  !rpc.shutdown !!rpc.shutdown
  rpc-null-proto
  rpc-cookie-proto
  rpc-generate-cookie!
  rpc-cipher-proto
  rpc-cookie-cipher-proto
  set-rpc-keep-alive-interval!
  set-rpc-idle-timeout!
  set-rpc-call-timeout!
  bind-protocol!
```