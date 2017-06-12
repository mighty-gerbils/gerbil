;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server -- server building blocks
package: std/net/server

(import :std/net/server/base
        :std/actor/message
        :std/actor/proto
        :std/logger
        :std/sugar
        )
(export #t)

(def (server-loop poll-evt do-poll add-socket close-socket shutdown!)
  (let loop ()
    (<- (! poll-evt
           (try
            (do-poll)
            (loop)
            (catch (e)
              ;; log it and die -- that's not good.
              (log-error "socket-server.do-poll" e)
              (shutdown!))))
        ((!socket-server.add sock k)
         (try
          (let (ssock (add-socket sock))
            (!!value ssock k))
          (catch (e)
            (log-error "socket-server.add" e)
            (!!error (error-message e) k)))
         (loop))
        ((!socket-server.close ssock dir shutdown k)
         (try
          (close-socket ssock dir shutdown)
          (!!value (void) k)
          (catch (e)
            (log-error "socket-server.close" e)
            (!!error (error-message e) k)))
         (loop))
        ((!socket-server.shutdown! k)
         (try
          (shutdown!)
          (!!value (void) k)
          (catch (e)
            (log-error "socket-server.shutdown!" e)
            (!!error (error-message e) k))))
        (msg
         (warning "Unexpected message: ~a" msg)
         (loop)))))
