;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server -- server building blocks
package: std/net/server

(import :gerbil/gambit/threads
        :std/net/server/base
        :std/os/socket
        :std/actor/message
        :std/actor/proto
        :std/logger
        :std/sugar)
(export #t)

(defmethod {:init! !io-state}
  (lambda (self)
    (struct-instance-init! self 'blocked (make-mutex) (make-condition-variable))))

(def (server-loop poll-evt do-poll add-socket close-socket shutdown!)
  (try
   (let loop ()
     (<- (! poll-evt
            (do-poll)
            (loop))
         ((!socket-server.add sock k)
          (try
           (let (ssock (add-socket sock))
             (!!value ssock k))
           (catch (e)
             (log-error "socket-server.add" e)
             (!!error e k)))
          (loop))
         ((!socket-server.close ssock dir shutdown)
          (try
           (close-socket ssock dir shutdown)
           (catch (e)
             (log-error "socket-server.close" e)))
          (loop))
         ((!socket-server.shutdown! k)
          (try
           (shutdown!)
           (!!value (void) k)
           (catch (e)
             (log-error "socket-server.shutdown!" e)
             (!!error e k))))
         (msg
          (warning "Unexpected message: ~a" msg)
          (loop))))
   (catch (e)
     ;; log it and die -- that's not good.
     (log-error "socket-server error" e)
     (shutdown!)
     (raise e))))

(def (io-state-signal-ready! iostate how)
  (with ((!io-state _ mx cv) iostate)
    (mutex-lock! mx)
    (set! (!io-state-e iostate)
      how)
    (condition-variable-broadcast! cv)
    (mutex-unlock! mx)))

(extern namespace: #f macro-absent-obj)

(def (io-state-wait-io! iostate timeo how)
  (with ((!io-state _ mx cv) iostate)
    (let lp ()
      (mutex-lock! mx)
      (case (!io-state-e iostate)
        ((closed)
         (mutex-unlock! mx)
         (error "Socket direction has been closed" how))
        ((ready)
         (set! (!io-state-e iostate) how)
         (mutex-unlock! mx)
         (void))
        (else
         (set! (!io-state-e iostate)
           'blocked)
         (and (mutex-unlock! mx cv (or timeo (macro-absent-obj)))
              (lp)))))))

(def (io-state-close-in! iostate sock shutdown)
  (if shutdown
    (shutdown-socket! sock shutdown)
    (close-input-port sock))
  (io-state-signal-ready! iostate 'closed))

(def (io-state-close-out! iostate sock shutdown)
  (if shutdown
    (shutdown-socket! sock shutdown)
    (close-output-port sock))
  (io-state-signal-ready! iostate 'closed))

(def (shutdown-socket! sock how)
  (try
   (socket-shutdown sock how)
   (catch (e)
     (log-error "socket-server.shutdown-socket!" e))))
