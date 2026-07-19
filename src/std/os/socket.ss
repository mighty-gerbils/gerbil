;;; -*- Gerbil -*-
;;; © vyzo
;;; OS Socket Devices
(import :std/ffi
        :std/error
        ./error
        ./device
        ./fcntl
        ./sockaddr)
(export #t)

(defstruct (SocketDevice OSDevice)
  ((domain :- :fixnum)
   (type   :- :fixnum)
   (proto  :- :fixnum)
   (local  :- sockaddr)
   (remote :- sockaddr)))

(def (open-socket-device (domain    : :fixnum)
                         (type      : :fixnum)
                         (proto     : :fixnum)
                         (direction : :fixnum))
  => SocketDevice
  (let* ((type
          (cond-expand
            (linux
             (fxior type SOCK_NONBLOCK SOCK_CLOEXEC))
            (else type)))
         (fd  (do-syscall (__socket domain type proto)))
         (_
          (cond-expand
            ((not linux)
             (with-error (__close-fd fd)
               (fcntl-setfl! fd O_NONBLOCK)
               (fcntl-setfd! fd FD_CLOEXEC)))
            (else (void))))
         (raw
          (with-error (__close-fd fd)
            (__open-raw-device 'socket fd direction))))
    (SocketDevice raw fd direction domain type proto #f #f)))

(def (open-client-socket-device (domain    : :fixnum)
                                (type      : :fixnum)
                                (proto     : :fixnum := 0))
  => SocketDevice
  (open-socket-device domain type proto DIRECTION-INOUT))

(def (open-server-socket-device (domain    : :fixnum)
                                (type      : :fixnum)
                                (proto     : :fixnum := 0))
  => SocketDevice
  (open-socket-device domain type proto DIRECTION-IN))

(def (socket-device-shutdown (sock : SocketDevice) (how : :fixnum))
  => :void
  (let (dir (socket-shutdown-direction how))
    (unless (fx= (fxand sock.dir dir) 0)
      (__shutdown sock.fd how)
      (device-close sock dir))))

(def (socket-shutdown-direction (how : :fixnum))
  => :fixnum
  (cond
   ((fx= how SHUT_RD)   DIRECTION-IN)
   ((fx= how SHUT_WR)   DIRECTION-OUT)
   ((fx= how SHUT_RDWR) DIRECTION-INOUT)
   (else
    (raise-bad-argument socket-shutdown-direction "shutdown direction" how))))

(def (socket-device-bind (sock : SocketDevice) (sa : sockaddr))
  => :void
  (do-check-device-open socket-device-bind sock
    (do-syscall (__bind sock.fd sa))))

(def (socket-device-listen (sock : SocketDevice) (backlog : :fixnum))
  => :void
  (do-check-device-input socket-device-listen sock
    (do-syscall (__listen sock.fd backlog))))

(def (socket-device-accept (sock : SocketDevice))
  => :t ;; SocketDevice or :fixnum
  (do-check-device-input socket-device-accept sock
    (let* ((sa (make-sockaddr))
           (fd
            (cond-expand
              (linux
               (do-syscall (__accept4 sock.fd sa (fxior O_NONBLOCK O_CLOEXEC))
                           EAGAIN EWOULDBLOCK))
              (else
               (let (fd (do-syscall (__accept sock.fd sa)
                                    EAGAIN EWOULDBLOCK))
                 (with-error (__close-fd fd)
                   (fcntl-setfl! fd O_NONBLOCK)
                   (fcntl-setfd! fd FD_CLOEXEC))
                 fd)))))
      (if (fx< fd 0)
        fd
        (let (raw
              (with-error (__close-fd fd)
                (__open-raw-device 'socket fd DIRECTION-INOUT)))
          (SocketDevice raw fd DIRECTION-INOUT
                        sock.domain sock.type sock.proto
                        #f sa))))))

(def (socket-device-connect (sock : SocketDevice) (sa : sockaddr))
  => :fixnum
  (do-check-device-output socket-device-connect sock
    (do-syscall (__connect sock.fd sa)
                EINPROGRESS EWOULDBLOCK EAGAIN)))

;; TODO safer input/output range interface
(def (socket-device-send (sock        : SocketDevice)
                         (input       : :u8vector)
                         (input-start : :fixnum)
                         (input-end   : :fixnum)
                         (flags       : :fixnum))
  => :fixnum
  (do-check-device-output socket-device-send sock
    (do-syscall (__send sock.fd input input-start (fx- input-end input-start) flags)
                EAGAIN EWOULDBLOCK)))

(def (socket-device-recv (sock         : SocketDevice)
                         (output       : :u8vector)
                         (output-start : :fixnum)
                         (output-end   : :fixnum)
                         (flags        : :fixnum))
  => :fixnum
  (do-check-device-input socket-device-recv sock
    (do-syscall (__recv sock.fd output output-start (fx- output-end output-start) flags)
                EAGAIN EWOULDBLOCK)))

(def (socket-device-sendto (sock        : SocketDevice)
                           (input       : :u8vector)
                           (input-start : :fixnum)
                           (input-end   : :fixnum)
                           (flags       : :fixnum)
                           (peer        : sockaddr))
  => :fixnum
  (do-check-device-output socket-device-sendto sock
    (do-syscall (__sendto sock.fd input input-start (fx- input-end input-start) flags peer)
                EAGAIN EWOULDBLOCK)))

(def (socket-device-recvfrom (sock         : SocketDevice)
                             (output       : :u8vector)
                             (output-start : :fixnum)
                             (output-end   : :fixnum)
                             (flags        : :fixnum)
                             (peer         : sockaddr))
  => :fixnum
  (do-check-device-input socket-device-recvfrom sock
    (do-syscall (__recvfrom sock.fd output output-start (fx- output-end output-start) flags peer)
                EAGAIN EWOULDBLOCK)))

;; TODO sendmsg recvmsg

(def (socket-device-getpeername (sock : SocketDevice))
  => sockaddr
  (cond
   (sock.remote)
   (else
    (do-check-device-open socket-device-getpeername sock
      (let (sa (make-sockaddr))
        (do-syscall (__getpeername sock.fd sa))
        (set! sock.remote sa)
        sa)))))

(def (socket-device-getsockname (sock : SocketDevice))
  => sockaddr
  (cond
   (sock.local)
   (else
    (do-check-device-open socket-device-getsockname sock
      (let (sa (make-sockaddr))
        (do-syscall (__getsockname sock.fd sa))
        (set! sock.local sa)
        sa)))))

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/socket.h>"
           "<netinet/in.h>"
           "<netinet/ip.h>"
           "<netinet/tcp.h>"
           "<arpa/inet.h>"
           "<sys/un.h>"
           "<errno.h>")

(def-C-syscall (__socket (domain :- :fixnum)
                         (type   :- :fixnum)
                         (proto  :- :fixnum))
  "socket(___arg1, ___arg2, ___arg3)")

(def-C-syscall (__shutdown (fd  :- :fixnum)
                           (how :- :fixnum))
  "shutdown(___arg1, ___arg2)")

(def-C-syscall (__bind (fd   :- :fixnum)
                       (addr :- sockaddr))
  "bind(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

(def-C-syscall (__connect (fd   :- :fixnum)
                          (addr :- sockaddr))
  "connect(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

(def-C-syscall (__listen (fd      :- :fixnum)
                         (backlog :- :fixnum))
  "listen(___arg1, ___arg2)")

(def-C-syscall (__accept (fd :- :fixnum)
                         (sa :- sockaddr))
  "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG2); accept(___arg1, ___arg2, &len);})")

(cond-expand
  (linux
   (def-C-syscall (__accept4 (fd    :- :fixnum)
                             (sa    :- sockaddr)
                             (flags :- :fixnum))
     "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG2); accept4(___arg1, ___arg2, &len, ___arg3);})")))

(def-C-syscall (__send (fd      :- :fixnum)
                       (input   :- :u8vector)
                       (start   :- :fixnum)
                       (count   :- :fixnum)
                       (flags   :- :fixnum))
  "send(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5)")

(def-C-syscall (__recv (fd      :- :fixnum)
                       (ouput   :- :u8vector)
                       (start   :- :fixnum)
                       (count   :- :fixnum)
                       (flags   :- :fixnum))
  "recv(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5)")

(def-C-syscall (__sendto (fd      :- :fixnum)
                         (input   :- :u8vector)
                         (start   :- :fixnum)
                         (count   :- :fixnum)
                         (flags   :- :fixnum)
                         (dest    :- sockaddr))
  "sendto(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5, ___arg6, (socklen_t)___U8VECTORSIZE(___ARG6))")

(def-C-syscall (__recvfrom (fd      :- :fixnum)
                           (input   :- :u8vector)
                           (start   :- :fixnum)
                           (count   :- :fixnum)
                           (flags   :- :fixnum)
                           (src     :- sockaddr))
  "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG2); recvfrom(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5, ___arg6, &len);})")

(def-C-syscall (__getpeername (fd      :- :fixnum)
                              (sa      :- sockaddr))
  "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG2); getpeername(___arg1, ___arg2, &len);})")

(def-C-syscall (__getsockname (fd      :- :fixnum)
                              (sa      :- sockaddr))
  "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG2); getsockname(___arg1, ___arg2, &len);})")

(def-C-const*
  SHUT_RD
  SHUT_WR
  SHUT_RDWR

  AF_UNIX
  AF_LOCAL
  AF_INET
  AF_AX25
  AF_IPX
  AF_APPLETALK
  AF_X25
  AF_INET6
  AF_DECnet
  AF_KEY
  AF_NETLINK
  AF_PACKET
  AF_RDS
  AF_PPPOX
  AF_LLC
  AF_IB
  AF_MPLS
  AF_CAN
  AF_TIPC
  AF_BLUETOOTH
  AF_ALG
  AF_VSOCK
  AF_KCM
  AF_XDP

  IPPROTO_IP
  IPPROTO_IPV6
  IPPROTO_TCP
  IPPROTO_UDP
  IPPROTO_SCTP
  IPPROTO_UDPLITE

  SOCK_STREAM
  SOCK_DGRAM
  SOCK_SEQPACKET
  SOCK_RAW
  SOCK_RDM

  SOCK_NONBLOCK
  SOCK_CLOEXEC)
