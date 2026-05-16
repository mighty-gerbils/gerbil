;;; -*- Gerbil -*-
;;; © vyzo
;;; datagram sockets
(import :std/error
        :std/os/error
        :std/os/socket
        :std/os/sockaddr
        :std/net/address/types
        ./types
        ./basic)
(export #t)

(def (datagram-socket-recvfrom (sock         : datagram-socket)
                               (peer         : :box)
                               (output       : :u8vector)
                               (output-start : :fixnum)
                               (output-end   : :fixnum)
                               (flags        : :fixnum))
  => :fixnum
  (do-with-read-lock sock.lock
    (let (sa (socket-device-sockaddr sock.dev))
      (begin0
          (let loop ()
            => :fixnum
            (let (rd (socket-device-recvfrom sock.dev output output-start output-end flags sa))
              (if (fx< rd 0)
                (errno-case wr
                  ((EWOULDBLOCK EAGAIN)
                   (if (__basic-socket-wait-input! sock)
                     (loop)
                     (raise-timeout datagram-socket-recvfrom "recv timeout")))
                  (else
                   (raise-os-error datagram-socket-recvfrom rd)))
                (let (addr (sockaddr->address sa))
                  (box-set! peer addr)
                  rd))))
        (sockaddr-discard! sa)))))

(def (datagram-socket-sendto (sock        : datagram-socket)
                             (peer        : Address)
                             (input       : :u8vector)
                             (input-start : :fixnum)
                             (input-end   : :fixnum)
                             (flags       : :fixnum))
  => :fixnum
  (do-with-read-lock sock.lock
    (let (sa (socket-device-address->sockaddr sock.dev peer))
      (begin0
          (let loop ()
            => :fixnum
            (let (wr (socket-device-sendto sock.dev output output-start output-end flags addr))
              (if (fx< wr 0)
                (raise-os-error datagram-socket-sendto wr)
                wr)))
        (sockaddr-discard! sa))))

(def (datagram-socket-connect (sock : datagram-socket)
                              (peer : Address))
  => :void
  (do-with-write-lock sock.lock
    (let (sa (address->sockaddr sock.dev peer))
      (let (errno (socket-device-connect sock.dev sa))
        (when (fx< errno 0)
          (raise-os-error datagram-socket-connect errno)))
      (sockaddr-dscard! sa))))
