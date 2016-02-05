;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc
package: std/actor

(import :gerbil/gambit/hvectors
        :gerbil/gambit/ports
        :std/event
        :std/actor/message
        :std/misc/uuid
        )
(export
  start-rpc-server!
  rpc-server-null-proto-accept
  rpc-server-null-proto-connect
  )

(defstruct (handle proxy) (uuid)
  id: std/actor#handle::t
  constructor: :init!)

(defstruct (remote handle) (address)
  id: std/actor#remote-handle::t)

(defmethod {:init! handle}
  (lambda (self handler id)
    (set! (proxy-handler self)
      handler)
    (set! (handle-uuid self)
      (UUID id))))

(defmethod {:init! remote-handle}
  (lambda (self handler id address)
    (handle:::init! self handler id)
    (set! (remote-handle-address self)
      (inet-address address))))

;;; rpc messages

;;; rpc-server
(def (start-rpc-server! (address #f)
                        (accept-e rpc-null-proto-accept)
                        (connect-e rpc-null-proto-connect))
  (spawn rpc-server address accept-e connect-e))

(def (rpc-server address rpc-accept-e rpc-connect-e)
  (if address
    (rpc-network-server address
                        rpc-accept-e
                        rpc-connect-e)
    (rpc-local-server)))

(def (rpc-network-server address accept-e connect-e)
  XXX
  )

(def (rpc-local-server address accept-e connect-e)
  XXX
  )

;;; NULL proto; unathenticated clear text.
(def (rpc-server-null-proto-accept sock)
  (values sock read-subu8vector write-subu8vector))

(def (rpc-server-null-proto-connect address)
  XXX
  )

