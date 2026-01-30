;;; -*- Gerbil -*-
;;; © vyzo
;;; basic client socket functionality
(import :std/error
        :std/os/error
        :std/os/socket
        :std/sync/rwlock
        ./types
        ./basic)
(export #t)

(def (socket-client-recv (sock         : basic-client-socket)
                         (output       : :u8vector)
                         (output-start : :fixnum)
                         (output-end   : :fixnum)
                         (flags        : :fixnum))
  => :fixnum
  (do-with-read-lock sock.lock
    (let loop ()
      (let (rd (socket-device-recv sock.dev output output-start output-end flags))
        (if (fx< rd 0)
          (errno-case rd
            ((EWOULDBLOCK EAGAIN)
             (if (__basic-socket-wait-input! sock)
               (loop)
               (raise-timeout stream-socket-recv "recv timeout")))
            (else
             (raise-os-error stream-socket-recv rd)))
          rd)))))

(def (socket-client-send (sock        : basic-client-socket)
                         (input       : :uvector)
                         (input-start : :fixnum)
                         (input-end   : :fixnum)
                         (flags       : :fixnum))
  => :fixnum
  (do-with-read-lock sock.lock
    (let loop ()
      (let (wr (socket-device-send sock.dev input input-start input-end flags))
        (if (fx< wr 0)
          (errno-case wr
            ((EWOULDBLOCK EAGAIN)
             (if (__basic-socket-wait-output! sock)
               (loop)
               (raise-timeout stream-socket-recv "recv timeout")))
            (else
             (raise-os-error stream-socket-recv rd)))
          wr)))))
