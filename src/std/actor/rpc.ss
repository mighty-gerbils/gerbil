;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc
package: std/actor

(import :gerbil/gambit/hvectors
        :gerbil/gambit/ports
        :std/sugar
        :std/format
        :std/event
        :std/misc/uuid
        :std/actor/message
        :std/actor/proto
        )
(export
  handle handle::t make-handle handle? handle-uuid
  remote remote::t make-remote remote? remote-address remote-proto
  start-rpc-server!
  rpc-server-null-proto-accept
  rpc-server-null-proto-connect
  )

(defstruct (handle proxy) (uuid)
  id: std/actor#handle::t
  constructor: :init!)

(defstruct (remote handle) (address proto)
  id: std/actor#remote-handle::t)

(defmethod {:init! handle}
  (lambda (self handler id)
    (set! (proxy-handler self)
      handler)
    (set! (handle-uuid self)
      (UUID id))))

(defmethod {:init! remote-handle}
  (lambda (self handler id address proto)
    (handle:::init! self handler id)
    (set! (remote-handle-address self)
      (inet-address address))
    (set! (remote-handle-proto self)
      proto)))

;; rpc server protocol
(defproto rpc
  id: std/actor#rpc::proto
  ;; server <-> connection
  event: (connection-shutdown address)
  event: (connection-close address)
  call:  (lookup-proto uuid) => _
  ;; client -> server
  call:  (register id proto) => _
  call:  (unregister id) => _
  call:  (lookup id) => _
  )

;;; rpc-server
(def (start-rpc-server! (address #f)
                        (accept-e rpc-null-proto-accept)
                        (connect-e rpc-null-proto-connect))
  (spawn rpc-server address accept-e connect-e))

(def (rpc-server address rpc-accept-e rpc-connect-e)
  (let (sock (and address
                   (open-tcp-server
                    (inet-address->string
                     (inet-address address)))))
    (rpc-server-loop (if address never-evt sock)
                     accept-e
                     connect-e)))

(def (rpc-server-loop sock-evt accept-e connect-e)
  (def actors  (make-hash-table-eq))
  (def protos  (make-hash-table-eq))
  (def conns   (make-hash-table))
  (def threads (make-hash-table))
  
  (def (accept-connection sock)
    (let* ((thr (spawn rpc-server-connection (current-thread) cli accept-e))
           (sinfo (tcp-client-peer-socket-info sock))
           (address (cons (socket-info-address sinfo)
                          (socket-info-port-number sinfo))))
      (hash-put! conns address thr)
      (hash-put! threads thr address)))
  
  (def (open-connection address)
    (let (thr (spawn rpc-client-connection
                     (current-thread) address  connect-e))
      (hash-put! conns address thr)
      (hash-put! threads thr address)
      thr))
  
  (def (handle-protocol-action msg)
    (with ((message payload src dest opt) msg)
      (match payload
        ((rpc.connection-shutdown)
         (cond
          ((hash-get threads src)
           => (lambda (address)
                (rpc.connection-close src)
                (hash-remove! conns address)
                (hash-remove! theads thr)))
          (else
           (eprintf "Unexpected protocol mesage" msg))))
        ((rpc.lookup-proto uuid)
         (cond
          ((hash-get protos uuid)
           => (lambda (proto)
                (!!value src proto k)))
          (else
           (!!value src #f k))))
        ((rpc.register id proto k)
         (let (uuid (UUID id))
           (cond
            ((hash-get actors uuid)
             => (lambda (actor)
                  (eprintf "Warning: replacing actor ~a ~a ~a" uuid actor src))))
           (hash-put! actors uuid src)
           (hash-put! actors uuid proto)
           (!!value src uuid k)))
        ((rpc.unregister id k)
         (let (uuid (UUID id))
           (hash-remove! actors uuid)
           (!!value src #!void k)))
        ((rpc.lookup id k)
         (let (uuid (UUID id))
           (cond
            ((hash-get actors uuid)
             => (lambda (actor)
                  (!!value src actor k)))
            (else
             (!!value src #f k)))))
        (else
         (eprintf "Unexpected message" msg)))))
  
  (let lp ()
    (<< ((! sock-evt => accept-conection)
         ((? message? msg)
          (with ((message value source dest opts) msg)
           (cond
            ((eq? (current-thread) dest)
             (handle-protocol-action msg))
            ((remote? dest)
             (let (address (inet-address->string (remote-address dest)))
               (try
                (cond
                 ((hash-get conns address)
                  => (lambda (handler)
                       (thread-send handler msg)))
                 (else
                  (let (thr (open-connection address))
                    (thread-send thr msg)))))))
                (catch (e)
                  (eprintf "warning: [~a] error connecting client ~a ~a"
                           (current-thread) address e)
                  (rpc-send-error-response msg)))
            ((handle? dest)
             (let (uuid (handle-uuid dest))
               (cond
                ((hash-get actors uuid)
                 => (lambda (actor) (send actor msg)))
                (else
                 (rpc-send-error-response msg)))))
            (else
             (eprintf "warning: [~a] bad destination ~a"
                      (current-thre) dest)
             (rpc-send-error-response msg)))))
        (value
         (eprintf "warning: [~a] unexepected message ~a"
                  (current-thread) value)))
    (lp)))

(def (rpc-send-error-response msg)
  (when (message? msg)
    (with ((message content src) msg)
      (match content
        ((!call _ k)
         (!!error src "connection error" k))
        (else #!void)))))

(def (rpc-server-connection rpc-server sock proto-e)
  (try
   (let (client (read sock))
     (rpc-connection-loop rpc-server client proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e))))

(def (rpc-client-connection rpc-server address proto-e)
  (try
   (let (cli (open-tcp-client address address))
     (rpc-connection-loop rpc-server cli proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e))))

(def (rpc-connection-loop rpc-server sock proto-e)
  XXX
  )

(def (rpc-connection-shutdown rpc-server)
  XXX ; send rpc.connection-shutdown -> rpc-server
  XXX ; cleanup and error reply all messages in queue
  XXX ; wait until rpc.connection-close
  XXX ; also check the health of the rpc server
  )

(def (rpc-connection-cleanup rpc-server exn)
  (when exn
    (eprintf "warning: [~a] connection error ~a"
             (current-thre) exn))
  XXX ; send rpc.connection-shutdown -> rpc-server
  XXX ; cleanup and error reply all messages in queue
  XXX ; wait until rpc.connection-close
  XXX ; also check the health of the rpc server
  )

;;; NULL proto; unathenticated clear text.
(def (rpc-server-null-proto-accept sock)
  (values sock read-subu8vector write-subu8vector))

(def (rpc-server-null-proto-connect sock)
  (values sock read-subu8vector write-subu8vector))

