;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server api
package: std/net/server

(import (only-in :gerbil/gambit/threads spawn)
        (only-in :gerbil/gambit/os time? seconds->time)
        :std/os/socket
        :std/os/fd
        :std/os/error
        :std/net/address
        :std/net/server/base
        :std/net/server/sync-server
        :std/sugar
        :std/error
        )
(export start-socket-server! server-shutdown!
        server-connect
        server-listen server-accept
        server-send server-send-all
        server-recv server-recv-all
        server-close server-close-input server-close-output
        sync-socket-server
        )

(cond-expand
  (linux-gnu
   (import :std/net/server/epoll-server)))

(def (default-server-impl)
  (cond-expand
    (linux-gnu epoll-socket-server)
    (else sync-socket-server)))

(def default-listen-sockopts
  (if (not (fxnegative? SO_REUSEADDR))
    [SO_REUSEADDR]
    []))

;; start a server
(def (start-socket-server! (impl (default-server-impl)))
  (spawn impl))

(def (server-shutdown! srv)
  (!!socket-server.shutdown! srv))

(defrules with-error-close ()
  ((_ sock body ...)
   (try body ...
        (catch (e)
          (socket-close sock)
          (raise e)))))

;; => !socket that is connected and ready
(def (server-connect srv addr (timeo #f))
  (let* ((sa (socket-address addr))
         (sock (socket (socket-address-family sa) SOCK_STREAM))
         (rcon (with-error-close sock
                 (socket-connect sock sa)))
         (ssock (!!socket-server.add srv sock)))
    (with ((!socket _ _ _ wait-out close) ssock)
      (unless rcon
        (unless (wait-out ssock (abs-timeout timeo))
          (close ssock 'inout)
          (raise-timeout 'server-connect "Operation timeout exceeded" addr)))
      (let (errno (socket-getsockopt sock SOL_SOCKET SO_ERROR))
        (if (fxzero? errno)
          ssock
          (begin
            (close ssock 'inout)
            (raise-os-error errno server-connect srv addr timeo)))))))

;; => !socket that is bound and listening
(def (server-listen srv addr (backlog 10) (opts default-listen-sockopts))
  (let* ((sa (socket-address addr))
         (sock (server-socket (socket-address-family sa) SOCK_STREAM)))
    (with-error-close sock
      (for-each (cut socket-setsockopt sock SOL_SOCKET <> 1)
                opts)
      (socket-bind sock sa)
      (socket-listen sock backlog)
      (!!socket-server.add srv sock))))

;; => !socket | #f if tiemout
(def (server-accept ssock (sa #f))
  (with ((!socket sock srv wait-in) ssock)
    (if wait-in
      (let lp ()
        (wait-in ssock #f)
        (let (cli (socket-accept sock sa))
          (if cli
            (!!socket-server.add srv cli)
            (lp))))
      (error "Socket is not open for input" ssock))))

;; => count | #f if timeout
(def (server-send ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ _ wait-out) ssock)
    (if wait-out
      (let (timeo (abs-timeout timeo))
        (let lp ()
          (and (wait-out ssock timeo)
            (let (r (socket-send sock buf start end))
              (or r (lp))))))
      (error "Socket is not open for output" ssock))))

;; => count | #f
;; try to fill the buffer with recvs, may return fewer bytes or #f
;; if timeout is reached
(def (server-send-all ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ _ wait-out) ssock)
    (if wait-out
      (let (timeo (abs-timeout timeo))
        (let lp ((count 0) (start start))
          (cond
           ((fx>= start end)
            count)
           ((wait-out ssock timeo)
            (let (r (socket-send sock buf start end))
              (if r
                (lp (fx+ count r) (fx+ start r))
                (lp count start))))
           ((fxpositive? count)
            count)
           (else #f))))
      (error "Socket is not open for output" ssock))))

;; => count | #f if timeout
(def (server-recv ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ wait-in) ssock)
    (if wait-in
      (let (timeo (abs-timeout timeo))
        (let lp ()
          (and (wait-in ssock timeo)
               (let (r (socket-recv sock buf start end))
                 (or r (lp))))))
      (error "Socket is not open for input" ssock))))

;; => count | #f
;; try to fill the buffer with recvs, may return fewer bytes or #f
;; if timeout is reached or end of input is reached
(def (server-recv-all ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ wait-in) ssock)
    (if wait-in
      (let (timeo (abs-timeout timeo))
        (let lp ((count 0) (start start))
          (cond
           ((fx>= start end)
            count)
           ((wait-in ssock timeo)
            (let (r (socket-recv sock buf start end))
              (cond
               ((not r)
                (lp count start))
               ((fxzero? r)
                count)
               (else
                (lp (fx+ count r) (fx+ start r))))))
           ((fxpositive? count)
            count)
           (else #f))))
      (error "Socket is not open for input"))))

;; close an ssock
(def (server-close ssock)
  ((!socket-close ssock) ssock 'inout #f))

;; close input side of an ssock
(def (server-close-input ssock (shutdown #f))
  ((!socket-close ssock) ssock 'in (and shutdown SHUT_RD)))

;; close output side of an ssock
(def (server-close-output ssock (shutdown #f))
  ((!socket-close ssock) ssock 'out (and shutdown SHUT_WR)))

;; utils
(def (abs-timeout timeo)
  (cond
   ((or (not timeo) (time? timeo))
    timeo)
   ((real? timeo)
    (seconds->time (+ (##current-time-point) timeo)))
   (else
    (error "Bad timeout; expected real, time or #f" timeo))))
