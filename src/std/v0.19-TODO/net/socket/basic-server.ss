;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous sockets -- socket server building blocks

;;; --- DEPRECAT$ED ---

(import :gerbil/gambit
        :std/net/socket/base
        :std/os/socket
        :std/actor-v13/message
        :std/actor-v13/proto
        :std/logger
        :std/sugar)
(export (except-out #t errorf warnf infof debugf verbosef))

(deflogger socket)

(defmethod {:init! !io-state}
  (lambda (self)
    (struct-instance-init! self 'blocked (make-mutex) (make-condition-variable))))

(def (server-poll server io)
  (let lp ()
    (##wait-for-io! io #t)
    (!!socket-server.poll server)
    (lp)))

(def (server-loop poll-io do-poll add-socket close-socket shutdown!)
  (def poll-thread
    (and poll-io
         (spawn/name 'server-poll server-poll (current-thread) poll-io)))

  (try
   (let loop ()
     (<- ((!socket-server.poll k)
          (do-poll)
          (!!value (void) k)
          (loop))

         ((!socket-server.add sock k)
          (try
           (let (ssock (add-socket sock))
             (!!value ssock k))
           (catch (e)
             (errorf "socket-server.add: ~a" e)
             (!!error e k)))
          (loop))
         ((!socket-server.close ssock dir shutdown)
          (try
           (close-socket ssock dir shutdown)
           (catch (e)
             (errorf "socket-server.close: ~a" e)))
          (loop))
         ((!socket-server.shutdown! k)
          (try
           (shutdown!)
           (!!value (void) k)
           (catch (e)
             (errorf "socket-server.shutdown!: ~a" e)
             (!!error e k))))
         (msg
          (warnf "Unexpected message: ~a" msg)
          (loop))))
   (catch (e)
     ;; log it and die -- that's not good.
     (errorf "socket-server error: ~a" e)
     (shutdown!)
     (raise e))
   (finally
    (when poll-thread
      (thread-terminate! poll-thread)))))

(def (io-state-signal-ready! iostate how)
  (with ((!io-state _ mx cv) iostate)
    (mutex-lock! mx)
    (set! (!io-state-e iostate)
      how)
    (condition-variable-broadcast! cv)
    (mutex-unlock! mx)))

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
         (and (mutex-unlock! mx cv (or timeo absent-obj))
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
     (errorf "socket-server.shutdown-socket!: ~a" e))))
