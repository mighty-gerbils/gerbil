;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server api
package: std/net/server

(import (only-in :gerbil/gambit/threads spawn)
        (only-in :gerbil/gambit/os time? seconds->time)
        :std/net/server/base
        :std/net/server/basic-server
        :std/os/socket
        :std/os/fd
        :std/os/error
        :std/net/address
        :std/sugar
        :std/error
        :std/logger
        )
(export start-socket-server! server-shutdown!
        server-connect
        server-listen server-accept
        server-send server-send-all
        server-recv server-recv-all
        server-socket-e
        server-close server-close-input server-close-output
        )

(cond-expand
  (linux-gnu
   (import :std/net/server/epoll-server)))

(def (default-server-impl)
  (cond-expand
    (linux-gnu epoll-socket-server)
    (else basic-socket-server)))

(def default-listen-sockopts
  (if (not (fxnegative? SO_REUSEADDR))
    [SO_REUSEADDR]
    []))

;; start a server
(def (start-socket-server! (impl (default-server-impl)))
  (start-logger!)
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
      (let (errno (or rcon (socket-getsockopt sock SOL_SOCKET SO_ERROR)))
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
(def (server-accept ssock (sa #f) (timeo #f))
  (with ((!socket sock srv wait-in) ssock)
    (if wait-in
      (let (timeo (abs-timeout timeo))
        (let lp ()
          (let (cli (socket-accept sock sa))
            (if cli
              (!!socket-server.add srv cli)
              (and (wait-in ssock timeo)
                   (lp))))))
      (error "Socket is not open for input" ssock))))

;; => count | #f if timeout
(def (server-send ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ _ wait-out) ssock)
    (if wait-out
      (let (timeo (abs-timeout timeo))
        (let lp ()
          (let (r (socket-send sock buf start end))
            (or r
                (and (wait-out ssock timeo)
                     (lp))))))
      (error "Socket is not open for output" ssock))))

;; => count | #f
;; try to fill the buffer with recvs, may return fewer bytes or #f
;; if timeout is reached
(def (server-send-all ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ _ wait-out) ssock)
    (if wait-out
      (let (timeo (abs-timeout timeo))
        (let lp ((count 0) (start start))
          (if (fx>= start end)
            count
            (let (r (socket-send sock buf start end))
              (cond
               (r (lp (fx+ count r) (fx+ start r)))
               ((wait-out ssock timeo)
                (lp count start))
               ((fxpositive? count)
                count)
               (else #f))))))
      (error "Socket is not open for output" ssock))))

;; => count | #f if timeout
(def (server-recv ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ wait-in) ssock)
    (if wait-in
      (let (timeo (abs-timeout timeo))
        (let lp ()
          (let (r (socket-recv sock buf start end))
            (or r
                (and (wait-in ssock timeo)
                     (lp))))))
      (error "Socket is not open for input" ssock))))

;; => count | #f
;; try to fill the buffer with recvs, may return fewer bytes or #f
;; if timeout is reached or end of input is reached
(def (server-recv-all ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock _ wait-in) ssock)
    (if wait-in
      (let (timeo (abs-timeout timeo))
        (let lp ((count 0) (start start))
          (if (fx>= start end)
            count
            (let (r (socket-recv sock buf start end))
              (cond
               ((not r)
                (cond
                 ((wait-in ssock timeo)
                  (lp count start))
                 ((fxpositive? count)
                  count)
                 (else #f)))
               ((fxzero? r)
                count)
               (else
                (lp (fx+ count r) (fx+ start r))))))))
      (error "Socket is not open for input"))))

;; retrieve the socket in a server socket
(def (server-socket-e ssock)
  (!socket-e ssock))

;; close an ssock
(def (server-close ssock)
  ((!socket-close ssock) ssock 'inout #f))

;; close input side of an ssock
(def (server-close-input ssock (shutdown #f))
  ((!socket-close ssock) ssock 'in (and shutdown SHUT_RD)))

;; close output side of an ssock
(def (server-close-output ssock (shutdown #f))
  ((!socket-close ssock) ssock 'out (and shutdown SHUT_WR)))

;; with-destroy
(defmethod {destroy !socket}
  (lambda (self)
    ((!socket-close self) self 'inout #f)))

;; utils
(def (abs-timeout timeo)
  (cond
   ((or (not timeo) (time? timeo))
    timeo)
   ((real? timeo)
    (seconds->time (+ (##current-time-point) timeo)))
   (else
    (error "Bad timeout; expected real, time or #f" timeo))))
