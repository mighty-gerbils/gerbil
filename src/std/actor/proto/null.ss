;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol
package: std/actor/proto

(import :std/actor/proto
        )

(export
  rpc-server-null-proto-accept
  rpc-server-null-proto-connect)

;;; NULL proto; unathenticated clear text.
(def (rpc-server-null-proto-accept sock)
  XXX
  )

(def (rpc-server-null-proto-connect sock)
  XXX)

