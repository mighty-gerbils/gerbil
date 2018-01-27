;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc base
package: std/actor/rpc

(import :gerbil/gambit/threads
        :std/misc/uuid
        :std/misc/sync
        :std/net/bio
        :std/actor/message
        :std/actor/proto
        :std/actor/xdr)
(export #t)

(def (xdr-read-uuid buffer)
  (let (bytes (make-u8vector uuid-length))
    (bio-read-bytes bytes buffer)
    (make-uuid bytes #f)))

(def (xdr-write-uuid obj buffer)
  (bio-write-subu8vector (uuid->u8vector obj) 0 uuid-length buffer))


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
  (connect id address)
  (register id)
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

(def +protocols+
  (make-uuid-table))

(def (bind-protocol! id proto)
  (unless (!protocol? proto)
    (error "Bad protocol" proto))
  (hash-put! +protocols+ (UUID id) proto))

(definline (lookup-protocol uuid)
  (hash-get +protocols+ uuid))

(def (make-actor-table)
  (make-sync-hash (make-uuid-table)))
(defalias actor-table-put!
  sync-hash-put!)
(defalias actor-table-get
  sync-hash-get)
(defalias actor-table-key?
  sync-hash-key?)
(defalias actor-table-remove!
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
