;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc base
package: std/actor/rpc

(import :gerbil/gambit/threads
        :std/misc/uuid
        :std/misc/sync
        :std/actor/message
        :std/actor/proto
        :std/actor/xdr
        :std/actor/rpc/proto/message)
(export #t)

(defproto-default-type
  (uuid::t xdr-read-uuid xdr-write-uuid)
  (actor-error::t)
  (remote-error::t)
  (rpc-error::t))

;; rpc server protocol
(defproto rpc
  id: std/actor#rpc
  ;; server <-> connection
  event:
  (connection-accept sock sa)
  (connection-shutdown)
  (connection-close)
  ;; client -> server
  call:
  (connect id address proto)
  (register id proto)
  (unregister id)
  (resolve id)
  (server-address)
  event:
  (monitor remote)
  (unmonitor remote)
  (disconnect remote)
  (shutdown))

(def (rpc-monitor thread (msg thread))
  (def (thread-monitor server thread msg)
    (with-catch values (cut thread-join! thread))
    (thread-send server msg))
  (spawn/name 'rpc-monitor thread-monitor (current-thread) thread msg))

(def (make-uuid-table)
  (make-hash-table test: uuid=? hash: uuid-hash))

(def (make-actor-table)
  (make-sync-hash (make-uuid-table)))
(def (actor-table-put! at uuid actor proto)
  (sync-hash-put! at uuid (values actor proto)))
(def actor-table-get
  sync-hash-get)
(def actor-table-key?
  sync-hash-key?)
(def actor-table-remove!
  sync-hash-remove!)

(def (rpc-send-error-response msg what)
  (when (message? msg)
    (with ((message content src dest) msg)
      (match content
        ((or (!call _ k) (!stream _ k))
         (!!error (message-source msg) (make-rpc-error 'rpc-server what) k))
        ((!yield k)
         (let (abort (make-message (make-!abort k) dest src #f))
           (send src abort)))
        (else (void))))))

(def (rpc-send-error-responses what)
  (let lp ()
    (<< ((? message? msg)
         (rpc-send-error-response msg what)
         (lp))
        (ignore (lp))
        (else (void)))))
