;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; OS socket FFI

(declare
  (block)
  (standard-bindings)
  (extended-bindings)
  (not safe))

(namespace ("std/os/_socket#"))
(##namespace ("" define-macro define let let* if or and
              quote quasiquote unquote unquote-splicing
              c-lambda c-define-type c-declare c-initialize
              declare foreign? foreign-tags memq
              ))

(c-declare #<<END-C
#include <errno.h>
#include <sys/types.h>
#ifdef _WINDOWS
#include <winsock2.h>
#include <ws2tcpip.h>

// workaround: define mandatory consts
// constants defined by define-const* (e.g. AF_NETLINK) is optional
// TODO: check their actual values
#define AF_LOCAL  0
#define SHUT_RD   0
#define SHUT_WR   0
#define SHUT_RDWR 0

#else
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>
#include <sys/un.h>
#endif
#include <sys/time.h>
#include <stdlib.h>
#include <string.h>

#ifdef __linux__
#include <linux/netlink.h>
#endif

#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif
END-C
)

(define-macro (define-c-lambda id args ret #!optional (name #f))
  (let ((name (or name (##symbol->string id))))
    `(define ,id
       (c-lambda ,args ,ret ,name))))

(define-macro (define-const symbol)
  (let* ((str (##symbol->string symbol))
         (ref (##string-append "___return (" str ");")))
    `(define ,symbol
       ((c-lambda () int ,ref)))))

(define-macro (define-const* symbol)
  (let* ((str (##symbol->string symbol))
         (code (##string-append
                "#ifdef " str "\n"
                "___return (___FIX (" str "));\n"
                "#else \n"
                "___return (___FAL);\n"
                "#endif")))
    `(define ,symbol
       ((c-lambda () scheme-object ,code)))))

(define-macro (define-compat symbol value)
  (let* ((str (##symbol->string symbol))
         (code (##string-append
                "#ifndef " str "\n"
                "#define " str " " (##number->string value) "\n"
                "#endif\n")))
    `(c-declare ,code)))

(define-macro (define-guard guard defn)
  (if (eval `(cond-expand (,guard #t) (else #f)))
    '(begin)
    (begin
      (eval `(define-cond-expand-feature ,guard))
      defn)))

;;; Constants
(define-const  AF_UNSPEC)
(define-const  AF_INET)
(define-const  AF_INET6)
(define-const  AF_UNIX)
(define-const  AF_LOCAL)
(define-const* AF_NETLINK)
(define-const* AF_PACKET)
(define-const* AF_ALG)

(define-const  SOCK_STREAM)
(define-const  SOCK_DGRAM)
(define-const  SOCK_RAW)
(define-const* SOCK_SEQPACKET)
(define-const* SOCK_RDM)

(define-const SHUT_RD)
(define-const SHUT_WR)
(define-const SHUT_RDWR)

(define-compat UNIX_MAX_PATH 108)
(define-const  UNIX_MAX_PATH)

(define-const  SOL_SOCKET)
(define-const* SO_ACCEPTCONN)
(define-const* SO_BINDTODEVICE)
(define-const* SO_BROADCAST)
(define-const* SO_DEBUG)
(define-const* SO_DOMAIN)
(define-const* SO_DONTROUTE)
(define-const* SO_ERROR)
(define-const* SO_KEEPALIVE)
(define-const* SO_LINGER)
(define-const* SO_OOBLINE)
(define-const* SO_PASSCRED)
(define-const* SO_PEERCRED)
(define-const* SO_PEEK_OFF)
(define-const* SO_PROTOCOL)
(define-const* SO_RCVBUF)
(define-const* SO_SNDBUF)
(define-const* SO_RCVLOWAT)
(define-const* SO_SNDLOWAT)
(define-const* SO_RCVTIMEO)
(define-const* SO_SNDTIMEO)
(define-const* SO_REUSEADDR)
(define-const* SO_REUSEPORT)
(define-const* SO_TYPE)
(define-const* SO_TIMESTAMP)
(define-const* SO_USELOOPBACK)

(define-const  IPPROTO_IP)
(define-const* IP_ADD_MEMBERSHIP)
(define-const* IP_DROP_MEMBERSHIP)
(define-const* IP_ADD_SOURCE_MEMBERSHIP)
(define-const* IP_DROP_SOURCE_MEMBERSHIP)
(define-const* IP_BLOCK_SOURCE)
(define-const* IP_UNBLOCK_SOURCE)
(define-const* IP_FREEBIND)
(define-const* IP_HDRINCL)
(define-const* IP_MTU)
(define-const* IP_MTU_DISCOVER)
(define-const* IP_MULTICAST_ALL)
(define-const* IP_MULTICAST_IF)
(define-const* IP_MULTICAST_LOOP)
(define-const* IP_MULTICAST_TTL)
(define-const* IP_NODEFRAG)
(define-const* IP_OPTIONS)
(define-const* IP_PKTINFO)
(define-const* IP_RECVERR)
(define-const* IP_RECVORIGDSTADDR)
(define-const* IP_RECVOPTS)
(define-const* IP_RECVTOS)
(define-const* IP_RECVTTL)
(define-const* IP_RETOPTS)
(define-const* IP_ROUTER_ALERT)
(define-const* IP_TOS)
(define-const* IP_TTL)

(define-const  IPPROTO_IPV6)
(define-const* IPV6_ADDRFORM)
(define-const* IPV6_ADD_MEMBERSHIP)
(define-const* IPV6_DROP_MEMBERSHIP)
(define-const* IPV6_MTU)
(define-const* IPV6_MTU_DISCOVER)
(define-const* IPV6_MULTICAST_HOPS)
(define-const* IPV6_MULTICAST_IF)
(define-const* IPV6_MULTICAST_LOOP)
(define-const* IPV6_RECVPKTINFO)
(define-const* IPV6_RTHDR)
(define-const* IPV6_AUTHHDR)
(define-const* IPV6_DSTOPTS)
(define-const* IPV6_HOPOPTS)
(define-const* IPV6_FLOWINFO)
(define-const* IPV6_HOPLIMIT)
(define-const* IPV6_ROUTER_ALERT)
(define-const* IPV6_UNICAST_HOPS)
(define-const* IPV6_V6ONLY)

(define-const  IPPROTO_TCP)
(define-const* TCP_CONGESTION)
(define-const* TCP_CORK)
(define-const* TCP_DEFER_ACCEPT)
(define-const* TCP_KEEPCNT)
(define-const* TCP_KEEPIDLE)
(define-const* TCP_KEEPINTVL)
(define-const* TCP_MAXSEG)
(define-const* TCP_NODELAY)
(define-const* TCP_SYNCNT)

(define-const* IP_PMTUDISC_WANT)
(define-const* IP_PMTUDISC_DONT)
(define-const* IP_PMTUDISC_DO)
(define-const* IP_PMTUDISC_PROBE)

(define-const* IPTOS_LOWDELAY)
(define-const* IPTOS_THROUGHPUT)
(define-const* IPTOS_RELIABILITY)
(define-const* IPTOS_MINCOST)

(define-const* MSG_CONFIRM)
(define-const* MSG_CTRUNC)
(define-const* MSG_DONTROUTE)
(define-const* MSG_DONTWAIT)
(define-const* MSG_EOR)
(define-const* MSG_ERRQUEUE)
(define-const* MSG_MORE)
(define-const* MSG_NOSIGNAL)
(define-const* MSG_OOB)
(define-const* MSG_PEEK)
(define-const* MSG_TRUNC)
(define-const* MSG_WAITALL)

(c-declare #<<END-C
static ___SCMOBJ ffi_free (void *ptr);
static int ffi_socket_bind (int fd, struct sockaddr *sa);
static int ffi_socket_accept (int fd, struct sockaddr *sa);
static int ffi_socket_accept4 (int fd, struct sockaddr *sa);
static int ffi_socket_connect (int fd, struct sockaddr *sa);
static int ffi_socket_send (int fd, ___SCMOBJ bytes, int start, int end, int flags);
static int ffi_socket_sendto (int fd, ___SCMOBJ bytes, int start, int end, int flags, struct sockaddr *sa);
static int ffi_socket_sendmsg (int fd, ___SCMOBJ name, ___SCMOBJ io, ___SCMOBJ ctl, int flags);
static int ffi_socket_recv (int fd, ___SCMOBJ bytes, int start, int end, int flags);
static int ffi_socket_recvfrom (int fd, ___SCMOBJ bytes, int start, int end, int flags, struct sockaddr *sa);
static int ffi_socket_recvmsg (int fd, ___SCMOBJ name, int *rname, ___SCMOBJ io, ___SCMOBJ ctl, int *rctl, int flags, int *rflags);
static int ffi_socket_getpeername (int fd, struct sockaddr *sa);
static int ffi_socket_getsockname (int fd, struct sockaddr *sa);
static struct sockaddr *ffi_socket_make_sockaddr (int family);
static void ffi_socket_sockaddr_in_addr (struct sockaddr *sa, ___SCMOBJ bytes);
static void ffi_socket_sockaddr_in_addr_set (struct sockaddr *sa, ___SCMOBJ bytes);
static int ffi_socket_sockaddr_in_port (struct sockaddr *sa);
static void ffi_socket_sockaddr_in_port_set (struct sockaddr *sa, int port);
static void ffi_socket_sockaddr_in6_addr (struct sockaddr *sa, ___SCMOBJ bytes);
static void ffi_socket_sockaddr_in6_addr_set (struct sockaddr *sa, ___SCMOBJ bytes);
static int ffi_socket_sockaddr_in6_port (struct sockaddr *sa);
static void ffi_socket_sockaddr_in6_port_set (struct sockaddr *sa, int port);
static char *ffi_socket_sockaddr_un_path (struct sockaddr *sa);
static void ffi_socket_sockaddr_un_path_set (struct sockaddr *sa, char *path);
static int ffi_socket_sockaddr_len (struct sockaddr *sa);
static int ffi_socket_sockaddr_bytes (struct sockaddr *sa, ___SCMOBJ bytes);
static int ffi_socket_sockaddr_bytes_set (struct sockaddr *sa, ___SCMOBJ bytes);
static int ffi_socket_getsockopt_int (int fd, int level, int opt);
static int ffi_socket_setsockopt_int (int fd, int level, int opt, int val);
static int ffi_socket_getsockopt_tv (int fd, int level, int opt, struct timeval *tv);
static int ffi_socket_setsockopt_tv (int fd, int level, int opt, struct timeval *tv);
static int ffi_socket_getsockopt_sa (int fd, int level, int opt, struct sockaddr *sa);
static int ffi_socket_setsockopt_sa (int fd, int level, int opt, struct sockaddr *sa);
static int ffi_socket_setsockopt_mreq (int fd, int level, int opt, ___SCMOBJ maddr, ___SCMOBJ laddr);
static int ffi_socket_setsockopt_mreq_src (int fd, int level, int opt, ___SCMOBJ maddr, ___SCMOBJ iaddr, ___SCMOBJ saddr);
static int ffi_socket_setsockopt_mreq6 (int fd, int level, int opt, ___SCMOBJ maddr, int ifindex);
static int ffi_socket_getsockopt_bytes (int fd, int level, int opt, ___SCMOBJ bytes);
static int ffi_socket_setsockopt_bytes (int fd, int level, int opt, ___SCMOBJ bytes);
static int ffi_socket_getsockopt_linger (int fd, int level, int opt, struct linger *linger);
static int ffi_socket_setsockopt_linger (int fd, int level, int opt, struct linger *linger);
static int *ffi_socket_make_int_ptr ();
static struct timeval *ffi_socket_make_tv ();
static struct linger *ffi_socket_make_linger ();
END-C
)

(c-define-type sockaddr (struct "sockaddr"))
(c-define-type sockaddr*
  (pointer sockaddr (sockaddr*) "ffi_free"))

(define-guard ffi-have-int*
  (c-define-type int*
    (pointer int (int*) "ffi_free")))

(define-guard ffi-have-timeval
  (c-define-type timeval (struct "timeval")))
(define-guard ffi-have-timeval*
  (c-define-type timeval*
    (pointer timeval (timeval*) "ffi_free")))

(c-define-type linger (struct "linger"))
(c-define-type linger*
  (pointer linger (linger*) "ffi_free"))

(define-macro (define-with-errno symbol ffi-symbol args)
  `(define (,symbol ,@args)
     (declare (not interrupts-enabled))
     (let ((r (,ffi-symbol ,@args)))
       (if (##fx< r 0)
         (##fx- (##c-code "___RESULT = ___FIX (errno);"))
         r))))

(define-c-lambda __socket (int int int) int
  "socket")
(define-c-lambda __bind (int sockaddr*) int
  "ffi_socket_bind")
(define-c-lambda __listen (int int) int
  "listen")
(define-c-lambda __accept (int sockaddr*) int
  "ffi_socket_accept")
(define-c-lambda __accept4 (int sockaddr*) int
  "ffi_socket_accept4")
(define-c-lambda __connect (int sockaddr*) int
  "ffi_socket_connect")
(define-c-lambda __shutdown (int int) int
  "shutdown")

(define-c-lambda __send (int scheme-object int int int) int
  "ffi_socket_send")
(define-c-lambda __sendto (int scheme-object int int int sockaddr*) int
  "ffi_socket_sendto")
(define-c-lambda __sendmsg (int scheme-object scheme-object scheme-object int) int
  "ffi_socket_sendmsg")

(define-c-lambda __recv (int scheme-object int int int) int
  "ffi_socket_recv")
(define-c-lambda __recvfrom (int scheme-object int int int sockaddr*) int
  "ffi_socket_recvfrom")
(define-c-lambda __recvmsg (int scheme-object int* scheme-object scheme-object int* int int*) int
  "ffi_socket_recvmsg")

(define-c-lambda __getpeername (int sockaddr*) int
  "ffi_socket_getpeername")
(define-c-lambda __getsockname (int sockaddr*) int
  "ffi_socket_getsockname")

(define-with-errno _socket __socket (domain type proto))
(define-with-errno _bind __bind (fd sa))
(define-with-errno _listen __listen (fd backlog))
(define-with-errno _accept __accept (fd sa))
(define-with-errno _accept4 __accept4 (fd sa))
(define-with-errno _connect __connect (fd sa))
(define-with-errno _shutdown __shutdown (fd how))

(define-with-errno _send __send (fd bytes start end flags))
(define-with-errno _sendto __sendto (fd bytes start end flags sa))
(define-with-errno _sendmsg __sendmsg (fd name-bytes io-bytes ctl-bytes flags))
(define-with-errno _recv __recv (fd bytes start end flags))
(define-with-errno _recvfrom __recvfrom (fd bytes start end flags sa))
(define-with-errno _recvmsg __recvmsg (fd name-bytes rname io-bytes ctl-bytes rctl flags rflags))

(define-with-errno _getpeername __getpeername (fd sa))
(define-with-errno _getsockname __getsockname (fd sa))

(define-c-lambda make_sockaddr (int) sockaddr*
  "ffi_socket_make_sockaddr")

(define (sockaddr? obj)
  (and (foreign? obj)
       (memq 'sockaddr* (foreign-tags obj))))

(define-c-lambda sockaddr_family (sockaddr*) int
  "___return (___arg1->sa_family);")
(define-c-lambda sockaddr_in_addr (sockaddr* scheme-object) void
  "ffi_socket_sockaddr_in_addr")
(define-c-lambda sockaddr_in_addr_set (sockaddr* scheme-object) void
  "ffi_socket_sockaddr_in_addr_set")
(define-c-lambda sockaddr_in_port (sockaddr*) int
  "ffi_socket_sockaddr_in_port")
(define-c-lambda sockaddr_in_port_set (sockaddr* int) void
  "ffi_socket_sockaddr_in_port_set")
(define-c-lambda sockaddr_in6_addr (sockaddr* scheme-object) void
  "ffi_socket_sockaddr_in6_addr")
(define-c-lambda sockaddr_in6_addr_set (sockaddr* scheme-object) void
  "ffi_socket_sockaddr_in6_addr_set")
(define-c-lambda sockaddr_in6_port (sockaddr*) int
  "ffi_socket_sockaddr_in6_port")
(define-c-lambda sockaddr_in6_port_set (sockaddr* int) void
  "ffi_socket_sockaddr_in6_port_set")
(define-c-lambda sockaddr_un_path (sockaddr*) UTF-8-string
  "ffi_socket_sockaddr_un_path")
(define-c-lambda sockaddr_un_path_set (sockaddr* UTF-8-string) void
  "ffi_socket_sockaddr_un_path_set")
(define-c-lambda sockaddr_len (sockaddr*) int
  "ffi_socket_sockaddr_len")
(define-c-lambda sockaddr_bytes (sockaddr* scheme-object) int
  "ffi_socket_sockaddr_bytes")
(define-c-lambda sockaddr_bytes_set (sockaddr* scheme-object) int
  "ffi_socket_sockaddr_bytes_set")

(define-c-lambda __getsockopt_int (int int int) int
  "ffi_socket_getsockopt_int")
(define-c-lambda __setsockopt_int (int int int int) int
  "ffi_socket_setsockopt_int")
(define-c-lambda __getsockopt_tv (int int int timeval*) int
  "ffi_socket_getsockopt_tv")
(define-c-lambda __setsockopt_tv (int int int timeval*) int
  "ffi_socket_setsockopt_tv")
(define-c-lambda __getsockopt_sa (int int int sockaddr*) int
  "ffi_socket_getsockopt_sa")
(define-c-lambda __setsockopt_sa (int int int sockaddr*) int
  "ffi_socket_setsockopt_sa")
(define-c-lambda __setsockopt_mreq (int int int scheme-object scheme-object) int
  "ffi_socket_setsockopt_mreq")
(define-c-lambda __setsockopt_mreq_src (int int int scheme-object scheme-object scheme-object) int
  "ffi_socket_setsockopt_mreq_src")
(define-c-lambda __setsockopt_mreq6 (int int int scheme-object int) int
  "ffi_socket_setsockopt_mreq6")
(define-c-lambda __getsockopt_bytes (int int int scheme-object) int
  "ffi_socket_getsockopt_bytes")
(define-c-lambda __setsockopt_bytes (int int int scheme-object) int
  "ffi_socket_setsockopt_bytes")
(define-c-lambda __getsockopt_linger (int int int linger*) int
  "ffi_socket_getsockopt_linger")
(define-c-lambda __setsockopt_linger (int int int linger*) int
  "ffi_socket_setsockopt_linger")

(define-with-errno _getsockopt_int __getsockopt_int (fd level opt))
(define-with-errno _setsockopt_int __setsockopt_int (fd level opt val))
(define-with-errno _getsockopt_tv __getsockopt_tv (fd level opt tv))
(define-with-errno _setsockopt_tv __setsockopt_tv (fd level opt tv))
(define-with-errno _getsockopt_sa __getsockopt_sa (fd level opt sa))
(define-with-errno _setsockopt_sa __setsockopt_sa (fd level opt sa))
(define-with-errno _setsockopt_mreq __setsockopt_mreq (fd level opt maddr laddr))
(define-with-errno _setsockopt_mreq_src __setsockopt_mreq_src (fd level opt maddr iaddr saddr))
(define-with-errno _setsockopt_mreq6 __setsockopt_mreq6 (fd level opt maddr ifindex))
(define-with-errno _getsockopt_bytes __getsockopt_bytes (fd level opt bytes))
(define-with-errno _setsockopt_bytes __setsockopt_bytes (fd level opt bytes))
(define-with-errno _getsockopt_linger __getsockopt_linger (fd level opt linger))
(define-with-errno _setsockopt_linger __setsockopt_linger (fd level opt linger))

(define-c-lambda make_int_ptr () int*
  "ffi_socket_make_int_ptr")
(define-c-lambda int_ptr_value (int*) int
  "___return (*___arg1);")

(define-c-lambda make_tv () timeval*
  "ffi_socket_make_tv")
(define-c-lambda tv_sec (timeval*) int
  "___return (___arg1->tv_sec);")
(define-c-lambda tv_sec_set (timeval* int) void
  "___arg1->tv_sec = ___arg2; ___return;")
(define-c-lambda tv_usec (timeval*) int
  "___return (___arg1->tv_usec);")
(define-c-lambda tv_usec_set (timeval* int) void
  "___arg1->tv_usec = ___arg2; ___return;")

(define-c-lambda make_linger () linger*
  "ffi_socket_make_linger")
(define-c-lambda linger_onoff (linger*) int
  "___return (___arg1->l_onoff);")
(define-c-lambda linger_onoff_set (linger* int) void
  "___arg1->l_onoff = ___arg2; ___return;")
(define-c-lambda linger_linger (linger*) int
  "___return (___arg1->l_linger);")
(define-c-lambda linger_linger_set (linger* int) void
  "___arg1->l_linger = ___arg2; ___return;")

(c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif

static socklen_t ___sockaddr_family_len (int family)
{
 switch (family)
 {
  case AF_INET:
   return sizeof (struct sockaddr_in);
  case AF_INET6:
   return sizeof (struct sockaddr_in6);
#ifndef _WINDOWS
  case AF_UNIX:
   return sizeof (struct sockaddr_un);
#endif
#ifdef __linux__
  case AF_NETLINK:
   return sizeof (struct sockaddr_nl);
#endif
  default:
   return -1;
 }
}

static socklen_t ___sockaddr_len (struct sockaddr *sa)
{
 int r = ___sockaddr_family_len (sa->sa_family);
 if (r < 0)
  errno = EINVAL;
 return r;
}

#define GETSALEN(sa, salen) \
 socklen_t salen = ___sockaddr_len (sa); \
 if (salen == (socklen_t)-1) return -1;

static int ffi_socket_bind (int fd, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return bind (fd, sa, salen);
}

int ffi_socket_accept (int fd, struct sockaddr *sa)
{
 if (sa)
 {
  GETSALEN (sa, salen);
  return accept (fd, sa, &salen);
 } else {
  return accept (fd, NULL, 0);
 }
}

int ffi_socket_accept4 (int fd, struct sockaddr *sa)
{
#ifdef __linux__
 if (sa)
 {
  GETSALEN (sa, salen);
  return accept4 (fd, sa, &salen, SOCK_NONBLOCK|SOCK_CLOEXEC|0);
 } else {
  return accept4 (fd, NULL, 0, SOCK_NONBLOCK|SOCK_CLOEXEC|0);
 }
#else
 errno = 1;
 return -1;
#endif
}

int ffi_socket_connect (int fd, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return connect (fd, sa, salen);
}

int ffi_socket_send (int fd, ___SCMOBJ bytes, int start, int end, int flags)
{
 return send (fd, U8_DATA (bytes) + start, end - start, flags);
}

int ffi_socket_sendto (int fd, ___SCMOBJ bytes, int start, int end, int flags, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return sendto (fd, U8_DATA (bytes) + start, end - start, flags, sa, salen);
}

int ffi_socket_sendmsg (int fd, ___SCMOBJ name, ___SCMOBJ io, ___SCMOBJ ctl, int flags)
{
#ifndef _WINDOWS
 void *msg_name = NULL;
 socklen_t msg_namelen = 0;
 struct iovec msg_iov = {NULL, 0};
 void *msg_control = NULL;
 size_t msg_controllen = 0;

 if (!___FALSEP (name))
 {
  msg_name = U8_DATA (name);
  msg_namelen = U8_LEN (name);
 }

 if (!___FALSEP (io))
 {
  msg_iov.iov_base = U8_DATA (io);
  msg_iov.iov_len = U8_LEN (io);
 }

 if (!___FALSEP (ctl))
 {
  msg_control = U8_DATA (ctl);
  msg_controllen = U8_LEN (ctl);
 }

 struct msghdr msg;
 msg.msg_name = msg_name;
 msg.msg_namelen = msg_namelen;
 msg.msg_iov = &msg_iov;
 msg.msg_iovlen = 1;
 msg.msg_control = msg_control;
 msg.msg_controllen = msg_controllen;
 msg.msg_flags = 0;

 return sendmsg (fd, &msg, flags);
#else
 return 0;
#endif
}

int ffi_socket_recv (int fd, ___SCMOBJ bytes, int start, int end, int flags)
{
 return recv (fd, U8_DATA (bytes) + start, end - start, flags);
}

int ffi_socket_recvfrom (int fd, ___SCMOBJ bytes, int start, int end, int flags, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return recvfrom (fd, U8_DATA (bytes) + start, end - start, flags, sa, &salen);
 }

int ffi_socket_recvmsg (int fd, ___SCMOBJ name, int *rname, ___SCMOBJ io, ___SCMOBJ ctl, int *rctl, int flags, int *rflags)
{
#ifndef _WINDOWS
 void *msg_name = NULL;
 socklen_t msg_namelen = 0;
 struct iovec msg_iov = {NULL, 0};
 void *msg_control = NULL;
 size_t msg_controllen = 0;

 if (!___FALSEP (name))
 {
  msg_name = U8_DATA (name);
  msg_namelen = U8_LEN (name);
 }

 if (!___FALSEP (io))
 {
  msg_iov.iov_base = U8_DATA (io);
  msg_iov.iov_len = U8_LEN (io);
 }

 if (!___FALSEP (ctl))
 {
  msg_control = U8_DATA (ctl);
  msg_controllen = U8_LEN (ctl);
 }

 struct msghdr msg;
 msg.msg_name = msg_name;
 msg.msg_namelen = msg_namelen;
 msg.msg_iov = &msg_iov;
 msg.msg_iovlen = 1;
 msg.msg_control = msg_control;
 msg.msg_controllen = msg_controllen;
 msg.msg_flags = 0;

 int r = recvmsg (fd, &msg, flags);
 if (r < 0)
  return r;
 if (rname)
  *rname = msg.msg_namelen;
 if (rctl)
  *rctl = msg.msg_controllen;
 if (rflags)
  *rflags = msg.msg_flags;

 return r;
#else
 return 0;
#endif
}

int ffi_socket_getpeername (int fd, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return getpeername (fd, sa, &salen);
}

int ffi_socket_getsockname (int fd, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return getsockname (fd, sa, &salen);
}

struct sockaddr *ffi_socket_make_sockaddr (int family)
{
 socklen_t salen = ___sockaddr_family_len (family);
 if (salen == (socklen_t)-1)
  return NULL;

 struct sockaddr *sa = (struct sockaddr*)malloc (salen);
 if (sa)
 {
  memset (sa, 0, salen);
  sa->sa_family = family;
 }
 return sa;;
}

void ffi_socket_sockaddr_in_addr (struct sockaddr *sa, ___SCMOBJ bytes)
{
 struct sockaddr_in *sa_in = (struct sockaddr_in*)sa;
 memcpy (U8_DATA (bytes), &sa_in->sin_addr, sizeof (struct in_addr));
}

void ffi_socket_sockaddr_in_addr_set (struct sockaddr *sa, ___SCMOBJ bytes)
{
 struct sockaddr_in *sa_in = (struct sockaddr_in*)sa;
 memcpy (&sa_in->sin_addr, U8_DATA (bytes), sizeof (struct in_addr));
}

int ffi_socket_sockaddr_in_port (struct sockaddr *sa)
{
 struct sockaddr_in *sa_in = (struct sockaddr_in*)sa;
 return ntohs (sa_in->sin_port);
}

void ffi_socket_sockaddr_in_port_set (struct sockaddr *sa, int port)
{
 struct sockaddr_in *sa_in = (struct sockaddr_in*)sa;
 sa_in->sin_port = htons (port);
}

void ffi_socket_sockaddr_in6_addr (struct sockaddr *sa, ___SCMOBJ bytes)
{
 struct sockaddr_in6 *sa_in6 = (struct sockaddr_in6*)sa;
 memcpy (U8_DATA (bytes), &sa_in6->sin6_addr, sizeof (struct in6_addr));
}

void ffi_socket_sockaddr_in6_addr_set (struct sockaddr *sa, ___SCMOBJ bytes)
{
 struct sockaddr_in6 *sa_in6 = (struct sockaddr_in6*)sa;
 memcpy (&sa_in6->sin6_addr, U8_DATA (bytes), sizeof (struct in6_addr));
}

int ffi_socket_sockaddr_in6_port (struct sockaddr *sa)
{
 struct sockaddr_in6 *sa_in6 = (struct sockaddr_in6*)sa;
 return ntohs (sa_in6->sin6_port);
}

void ffi_socket_sockaddr_in6_port_set (struct sockaddr *sa, int port)
{
 struct sockaddr_in6 *sa_in6 = (struct sockaddr_in6*)sa;
 sa_in6->sin6_port = htons (port);
}

char *ffi_socket_sockaddr_un_path (struct sockaddr *sa)
{
#ifndef _WINDOWS
 struct sockaddr_un *sa_un = (struct sockaddr_un*)sa;
 return sa_un->sun_path;
#else
 return NULL;
#endif
}

void ffi_socket_sockaddr_un_path_set (struct sockaddr *sa, char *path)
{
#ifndef _WINDOWS
 struct sockaddr_un *sa_un = (struct sockaddr_un*)sa;
 strncpy (sa_un->sun_path, path, sizeof (sa_un->sun_path));
#endif
}

int ffi_socket_sockaddr_len (struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return salen;
}

int ffi_socket_sockaddr_bytes (struct sockaddr *sa, ___SCMOBJ bytes)
{
 GETSALEN (sa, salen);
 memcpy (U8_DATA (bytes), sa, salen);
 return 0;
}

int ffi_socket_sockaddr_bytes_set (struct sockaddr *sa, ___SCMOBJ bytes)
{
 GETSALEN (sa, salen);
 memcpy (sa, U8_DATA (bytes), salen);
 return 0;
}

int ffi_socket_getsockopt_int (int fd, int level, int opt)
{
 int val;
 socklen_t olen = sizeof (int);
 int r = getsockopt (fd, level, opt, &val, &olen);
 if (r < 0) return r;
 return val;
}

int ffi_socket_setsockopt_int (int fd, int level, int opt, int val)
{
 socklen_t olen = sizeof (int);
 return setsockopt (fd, level, opt, &val, olen);
 }

int ffi_socket_getsockopt_tv (int fd, int level, int opt, struct timeval *tv)
{
 socklen_t olen = sizeof (struct timeval);
 return getsockopt (fd, level, opt, tv, &olen);
}

int ffi_socket_setsockopt_tv (int fd, int level, int opt, struct timeval *tv)
{
 socklen_t olen = sizeof (struct timeval);
 return setsockopt (fd, level, opt, tv, olen);
}

static int ffi_socket_getsockopt_sa (int fd, int level, int opt, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return getsockopt (fd, level, opt, sa, &salen);
}

int ffi_socket_setsockopt_sa (int fd, int level, int opt, struct sockaddr *sa)
{
 GETSALEN (sa, salen);
 return setsockopt (fd, level, opt, sa, salen);
}

int ffi_socket_setsockopt_mreq (int fd, int level, int opt, ___SCMOBJ maddr, ___SCMOBJ laddr)
{
 struct ip_mreq mreq;
 socklen_t olen = sizeof (struct ip_mreq);
 memcpy (&mreq.imr_multiaddr, U8_DATA (maddr), sizeof (struct in_addr));
 memcpy (&mreq.imr_interface, U8_DATA (laddr), sizeof (struct in_addr));
 return setsockopt (fd, level, opt, &mreq, olen);
}

int ffi_socket_setsockopt_mreq_src (int fd, int level, int opt, ___SCMOBJ maddr, ___SCMOBJ iaddr, ___SCMOBJ saddr)
{
#if !defined(__OpenBSD__) && !defined(__NetBSD__)
 struct ip_mreq_source mreq;
 socklen_t olen = sizeof (struct ip_mreq_source);
 memcpy (&mreq.imr_multiaddr, U8_DATA (maddr), sizeof (struct in_addr));
 memcpy (&mreq.imr_interface, U8_DATA (iaddr), sizeof (struct in_addr));
 memcpy (&mreq.imr_sourceaddr, U8_DATA (saddr), sizeof (struct in_addr));
 return setsockopt (fd, level, opt, &mreq, olen);
#else
 errno = EINVAL;
 return -1;
#endif
}

int ffi_socket_setsockopt_mreq6 (int fd, int level, int opt, ___SCMOBJ maddr, int ifindex)
{
 struct ipv6_mreq mreq;
 socklen_t olen = sizeof (struct ipv6_mreq);
 memcpy (&mreq.ipv6mr_multiaddr, U8_DATA (maddr), sizeof (struct in6_addr));
 memcpy (&mreq.ipv6mr_interface, &ifindex, sizeof (int));
 return setsockopt (fd, level, opt, &mreq, olen);
}

int ffi_socket_getsockopt_bytes (int fd, int level, int opt, ___SCMOBJ bytes)
{
 socklen_t olen = U8_LEN (bytes);
 int r = getsockopt (fd, level, opt, U8_DATA (bytes), &olen);
 if (r < 0)
  return r;
 return olen;
}

int ffi_socket_setsockopt_bytes (int fd, int level, int opt, ___SCMOBJ bytes)
{
 socklen_t olen = U8_LEN (bytes);
 return setsockopt (fd, level, opt, U8_DATA (bytes), olen);
}

int ffi_socket_getsockopt_linger (int fd, int level, int opt, struct linger *linger)
{
 socklen_t olen = sizeof (struct linger);
 return getsockopt (fd, level, opt, linger, &olen);
}

int ffi_socket_setsockopt_linger (int fd, int level, int opt, struct linger *linger)
{
 socklen_t olen = sizeof (struct linger);
 return setsockopt (fd, level, opt, linger, olen);
}

static int *ffi_socket_make_int_ptr ()
{
 return (int*)malloc (sizeof (int));
}

struct timeval *ffi_socket_make_tv ()
{
 return (struct timeval*)malloc (sizeof (struct timeval));
}

struct linger *ffi_socket_make_linger ()
{
 return (struct linger*)malloc (sizeof (struct linger));
}
END-C
)
