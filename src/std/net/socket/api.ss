;;; -*- Gerbil -*-
;;; (C) vyzo
;;; synchronous sockets -- api

;;; --- DEPRECATED ---

(import :gerbil/gambit
        :std/net/socket/base
        :std/net/socket/basic-socket
        :std/os/socket
        :std/os/error
        :std/error
        :std/sugar)
(export ssocket-connect
        ssocket-listen
        ssocket-accept
        ssocket-send ssocket-send-all
        ssocket-recv ssocket-recv-all
        ssocket-socket
        ssocket-close ssocket-close-input ssocket-close-output)

(declare (not safe))

;;; synchronous socket constructors
;; => !socket that is connected and ready
(def (ssocket-connect addr (timeo #f))
  (let* ((sa (socket-address addr))
         (sock (socket (socket-address-family sa) SOCK_STREAM))
         (rcon (with-error-close sock
                 (socket-connect sock sa)))
         (ssock (make-ssocket sock)))
    (with ((!socket _ _ wait-out close) ssock)
      (unless rcon
        (unless (wait-out ssock (abs-timeout timeo))
          (close ssock 'inout #f)
          (raise-timeout 'ssocket-connect "connection timeout" addr)))
      (let (errno (or rcon (socket-getsockopt sock SOL_SOCKET SO_ERROR)))
        (if (##fxzero? errno)
          ssock
          (begin
            (close ssock 'inout #f)
            (raise-os-error errno ssocket-connect addr timeo)))))))

;; => !socket that is bound and listening
(def (ssocket-listen addr (backlog 10) (opts default-listen-sockopts))
  (let* ((sa (socket-address addr))
         (sock (server-socket (socket-address-family sa) SOCK_STREAM)))
    (with-error-close sock
      (for-each (cut socket-setsockopt sock SOL_SOCKET <> 1)
                opts)
      (socket-bind sock sa)
      (socket-listen sock backlog)
      (make-ssocket sock))))

;; => !socket
(def (ssocket-accept ssock (sa #f) (timeo #f))
  (with ((!socket sock) ssock)
    (let (timeo (abs-timeout timeo))
      (let lp ()
        (let (wait-in (!socket-wait-in ssock))
          (if wait-in
            (let (cli (socket-accept sock sa))
              (if cli
                (make-ssocket cli)
                (if (wait-in ssock timeo)
                  (lp)
                  (raise-timeout 'ssocket-accept "accept timeout" ssock))))
            (raise-io-error 'ssocket-accept "Socket is not open for input" ssock)))))))


;;; synchronous socket i/o
(def (ssocket-send ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock) ssock)
    (let (timeo (abs-timeout timeo))
      (let lp ()
        (let (wait-out (!socket-wait-out ssock))
          (if wait-out
            (let (r (socket-send sock buf start end))
              (or r
                  (if (wait-out ssock timeo)
                    (lp)
                    (raise-timeout 'ssocket-send "send timeout" ssock))))
            (raise-io-error 'ssocket-send "Socket is not open for output" ssock)))))))

(def (ssocket-send-all ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock) ssock)
    (let (timeo (abs-timeout timeo))
      (let lp ((count 0) (start start))
        (let (wait-out (!socket-wait-out ssock))
          (if wait-out
            (if (##fx< start end)
              (let (r (socket-send sock buf start end))
                (cond
                 (r (lp (##fx+ count r) (##fx+ start r)))
                 ((wait-out ssock timeo)
                  (lp count start))
                 (else
                  (raise-timeout 'ssocket-send-all "send timeout" ssock))))
              count)
            (raise-io-error 'ssocket-send-all "Socket is not open for output" ssock)))))))

(def (ssocket-recv ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock) ssock)
    (let (timeo (abs-timeout timeo))
      (let lp ()
        (let (wait-in (!socket-wait-in ssock))
          (if wait-in
            (let (r (socket-recv sock buf start end))
              (or r
                  (if (wait-in ssock timeo)
                    (lp)
                    (raise-timeout 'ssocket-recv "receive timeout" ssock))))
            (raise-io-error 'ssocket-recv "Socket is not open for input" ssock)))))))

(def (ssocket-recv-all ssock buf (start 0) (end (u8vector-length buf)) (timeo #f))
  (with ((!socket sock) ssock)
    (let (timeo (abs-timeout timeo))
      (let lp ((count 0) (start start))
        (let (wait-in (!socket-wait-in ssock))
          (if wait-in
            (if (##fx>= start end)
              count
              (let (r (socket-recv sock buf start end))
                (cond
                 ((not r)
                  (if (wait-in ssock timeo)
                    (lp count start)
                    (raise-timeout 'ssocket-recv-all "receive timeout" ssock)))
                 ((##fxzero? r)
                  count)
                 (else
                  (lp (##fx+ count r) (##fx+ start r))))))
            (raise-io-error 'ssocket-recv-all "Socket is not open for input" ssock)))))))

;;; utilities
;; retrieve the underlying socket
(def (ssocket-socket ssock)
  (!socket-e ssock))

;; close an ssock
(def (ssocket-close ssock)
  ((!socket-close ssock) ssock 'inout #f))

;; close input side of an ssock
(def (ssocket-close-input ssock (shutdown #f))
  ((!socket-close ssock) ssock 'in (and shutdown SHUT_RD)))

;; close output side of an ssock
(def (ssocket-close-output ssock (shutdown #f))
  ((!socket-close ssock) ssock 'out (and shutdown SHUT_WR)))

;; with-destroy
(defmethod {destroy !socket}
  ssocket-close)

;;; internal
(defrules with-error-close ()
  ((_ sock body ...)
   (try
    body ...
    (catch (e)
      (socket-close sock)
      (raise e)))))

(def default-listen-sockopts
  [SO_REUSEADDR])

(def (make-ssocket sock)
  (cond
   ((current-socket-server)
    => (lambda (srv) (!!socket-server.add srv sock)))
   (else
    (basic-socket sock))))
