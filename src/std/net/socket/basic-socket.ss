;;; -*- Gerbil -*-
;;; (C) vyzo
;;; synchronous sockets -- basic unmanaged sockets

(import :gerbil/gambit/misc
        :gerbil/gambit/os
        :gerbil/gambit/ports
        :std/net/socket/base
        :std/os/socket
        :std/os/fd)
(export basic-socket)

(def (basic-socket sock)
  (def (wait-io! io timeo)
    (##wait-for-io! io (if timeo (time->seconds timeo) #t)))

  (def (shutdown! sock how)
    (when how
      (with-catch void (cut socket-shutdown sock how))))

  (def (close ssock dir shutdown)
    (with ((!socket sock _ wait-in wait-out) ssock)
      (case dir
        ((in)
         (when wait-in
           (set! (!socket-wait-in ssock) #f)
           (shutdown! sock shutdown)
           (if wait-out
             (close-input-port sock)
             (close-port sock))))
        ((out)
         (when wait-out
           (set! (!socket-wait-out ssock) #f)
           (shutdown! sock shutdown)
           (if wait-in
             (close-output-port sock)
             (close-port sock))))
        ((inout)
         (set! (!socket-wait-in ssock) #f)
         (set! (!socket-wait-out ssock) #f)
         (close-port sock))
        (else
         (error "Bad direction" dir)))))

  (let* ((io-in (fd-io-in sock))
         (wait-in
          (and io-in
               (lambda (ssock timeo)
                 (wait-io! io-in timeo))))
         (io-out (fd-io-out sock))
         (wait-out
          (and io-out
               (lambda (ssock timeo)
                 (wait-io! io-out timeo))))
         (ssock
          (make-!socket sock wait-in wait-out close)))
    (make-will ssock (cut close <> 'inout #f))
    ssock))
