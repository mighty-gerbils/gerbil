# An Overview of the Gerbil Standard Library

<!-- toc -->

- [std/actor](#stdactor)
- [std/coroutine](#stdcoroutine)
- [std/crypto](#stdcrypto)
- [std/db](#stddb)
  * [std/db/conpool](#stddbconpool)
  * [std/db/dbi](#stddbdbi)
  * [std/db/leveldb](#stddbleveldb)
  * [std/db/lmdb](#stddblmdb)
  * [std/db/mysql](#stddbmysql)
  * [std/db/postgresql](#stddbpostgresql)
  * [std/db/sqlite](#stddbsqlite)
- [std/debug/heap](#stddebugheap)
- [std/error](#stderror)
- [std/event](#stdevent)
- [std/format](#stdformat)
- [std/generic](#stdgeneric)
- [std/getopt](#stdgetopt)
- [std/iter](#stditer)
- [std/logger](#stdlogger)
- [std/make](#stdmake)
- [std/misc](#stdmisc)
  * [std/misc/completion](#stdmisccompletion)
  * [std/misc/list](#stdmisclist)
  * [std/misc/ports](#stdmiscports)
  * [std/misc/pqueue](#stdmiscpqueue)
  * [std/misc/process](#stdmiscprocess)
  * [std/misc/queue](#stdmiscqueue)
  * [std/misc/rtd](#stdmiscrtd)
  * [std/misc/shuffle](#stdmiscshuffle)
  * [std/misc/string](#stdmiscstring)
  * [std/misc/sync](#stdmiscsync)
  * [std/misc/threads](#stdmiscthreads)
  * [std/misc/uuid](#stdmiscuuid)
- [std/net](#stdnet)
  * [std/net/address](#stdnetaddress)
  * [std/net/bio](#stdnetbio)
  * [std/net/httpd](#stdnethttpd)
  * [std/net/request](#stdnetrequest)
  * [std/net/repl](#stdnetrepl)
  * [std/net/socket](#stdnetsocket)
  * [std/net/socks](#stdnetsocks)
  * [std/net/uri](#stdneturi)
  * [std/net/wamp](#stdnetwamp)
  * [std/net/websocket](#stdnetwebsocket)
- [std/os](#stdos)
  * [std/os/error](#stdoserror)
  * [std/os/fd](#stdosfd)
  * [std/os/fdio](#stdosfdio)
  * [std/os/fcntl](#stdosfcntl)
  * [std/os/pipe](#stdospipe)
  * [std/os/socket](#stdossocket)
  * [std/os/epoll](#stdosepoll)
  * [std/os/inotify](#stdosinotify)
- [std/parser](#stdparser)
- [std/pregexp](#stdpregexp)
- [std/sort](#stdsort)
- [std/srfi](#stdsrfi)
- [std/sugar](#stdsugar)
- [std/test](#stdtest)
- [std/text](#stdtext)
  * [std/text/base64](#stdtextbase64)
  * [std/text/csv](#stdtextcsv)
  * [std/text/hex](#stdtexthex)
  * [std/text/json](#stdtextjson)
  * [std/text/utf8](#stdtextutf8)
  * [std/text/yaml](#stdtextyaml)
  * [std/text/zlib](#stdtextzlib)
- [std/web](#stdweb)
  * [std/web/fastcgi](#stdwebfastcgi)
  * [std/web/rack](#stdwebrack)
- [std/xml](#stdxml)

<!-- tocstop -->

## std/actor

Package for actor-oriented concurrent and distributed programming.

```
(import :std/actor)

;; exports:

;; :std/actor/message
  (struct-out message proxy)
  (struct-out actor-error)
  -> send send-message send-message/timeout
  << <- !

;; :std/actor/proto
  rpc-io-error? raise-rpc-io-error
  (struct-out remote-error rpc-error)
  (struct-out handle remote)
  remote=? remote-hash
  (struct-out !rpc !call !value !error !event !stream !yield !end !continue !close !abort !token)
  !!call !!call-recv !!value !!error !!event
  !!stream !!stream-recv !!yield !!end !!continue !!close !!abort
  (struct-out !protocol !rpc-protocol)
  defproto proto-out
  defproto-default-type
  (phi: +1 make-protocol-info protocol-info?
        protocol-info-runtime-identifier
        protocol-info-id
        protocol-info-extend
        protocol-info-calls
        protocol-info-events)

;; :std/actor/rpc
  current-rpc-server
  start-rpc-server!
  stop-rpc-server!
  rpc-connect rpc-register rpc-unregister
  (struct-out rpc.register)
  !rpc.register !!rpc.register
  (struct-out rpc.unregister)
  !rpc.unregister !!rpc.unregister
  (struct-out rpc.resolve)
  !rpc.resolve !!rpc.resolve
  (struct-out rpc.server-address)
  !rpc.server-address !!rpc.server-address
  (struct-out rpc.monitor)
  !rpc.monitor !!rpc.monitor
  (struct-out rpc.unmonitor)
  !rpc.unmonitor !!rpc.unmonitor
  (struct-out rpc.disconnect)
  !rpc.disconnect !!rpc.disconnect
  (struct-out rpc.shutdown)
  !rpc.shutdown !!rpc.shutdown
  rpc-null-proto
  rpc-cookie-proto
  rpc-generate-cookie!
  rpc-cipher-proto
  rpc-cookie-cipher-proto
  set-rpc-keep-alive-interval!
  set-rpc-idle-timeout!
  set-rpc-call-timeout!
  bind-protocol!
```

## std/coroutine

Library for thread-based coroutines.

```
(import :std/coroutine)

;; exports:

  coroutine coroutine? continue yield coroutine-stop!
```

## std/crypto

Cryptography based on libcrypto.

```
(import :std/crypto)

;; exports:

;; :std/crypto/etc
  random-bytes random-bytes!
  libcrypto-error?

;; :std/crypto/digest
  make-digest digest?
  digest-update! digest-update* digest-final!
  digest-size digest-name digest-copy
  md5 digest::md5 make-md5-digest md5-digest?
  sha1 digest::sha1 make-sha1-digest sha1-digest?
  sha224 digest::sha224 make-sha224-digest sha224-digest?
  sha256 digest::sha256 make-sha256-digest sha256-digest?
  sha384 digest::sha384 make-sha384-digest sha384-digest?
  sha512 digest::sha512 make-sha512-digest sha512-digest?
  ripemd160 digest::ripemd160 make-ripemd160-digest ripemd160-digest?
  whirlpool digest::whirlpool make-whirlpool-digest whirlpool-digest?

;; :std/crypto/cipher
  cipher make-cipher cipher? cipher-type cipher-ctx cipher-context
  cipher-name cipher-block-size cipher-key-length cipher-iv-length
  cipher-copy
  encrypt encrypt-u8vector encrypt-u8vector!
  encrypt-init!
  encrypt-update!
  encrypt-final!
  decrypt decrypt-u8vector decrypt-u8vector!
  decrypt-init!
  decrypt-update!
  decrypt-final!

  cipher::rc4 make-rc4-cipher rc4-cipher?

  ;; MODE = ecb cbc cfb ofb
  cipher::cast5-{MODE} make-cast5-{MODE}-cipher cast5-{MODE}-cipher?
  cipher::bf-{MODE} make-bf-{MODE}-cipher bf-{MODE}-cipher?

  ;; LEN = 128 192 256
  ;; MODE = ecb cbc cfb ofb ctr ccm gcm xts
  cipher::aes-{LEN}-{MODE} make-aes-{LEN}-{MODE}-cipher aes-{LEN}-{MODE}-cipher?

  ;; LEN = 128 192 256
  ;; MODE = ecb cbc cfb ofb
  cipher::camellia-{LEN}-{MODE} make-camellia-{LEN}-{MODE}-cipher camellia-{LEN}-{MODE}-cipher?

;; :std/crypto/dh
  DH-generate-key DH-compute-key DH-pub-key
  DH-get-1024-160 DH-get-2048-224 DH-get-2048-256

;; :std/crypto/bn
  BN->bytes bytes->BN

```

## std/db

Database interfaces.

### std/db/conpool

Database connection pool.

```
(import :std/db/conpool)

;; exports:

  make-conpool conpool?
  conpool-get conpool-put conpool-close
```


### std/db/dbi

Generic SQL database interface.

```
(import :std/db/dbi)

;; exports:

  sql-connect sql-close sql-prepare
  sql-bind sql-clear sql-reset sql-reset/clear sql-finalize
  sql-eval sql-eval-query
  sql-exec sql-query in-sql-query sql-columns
  sql-txn-begin sql-txn-commit sql-txn-abort

```


### std/db/leveldb
LevelDB interface.

```
(import :std/db/leveldb)

;; exports:

  leveldb-error?
  leveldb?
  leveldb-open leveldb-close
  leveldb-put leveldb-get leveldb-delete leveldb-write leveldb-key?
  leveldb-writebatch leveldb-writebatch-clear
  leveldb-writebatch-put leveldb-writebatch-delete
  leveldb-iterator leveldb-iterator-close leveldb-iterator-valid?
  leveldb-iterator-seek-first leveldb-iterator-seek-last
  leveldb-iterator-seek
  leveldb-iterator-next leveldb-iterator-prev
  leveldb-iterator-key leveldb-iterator-value
  leveldb-iterator-error
  in-leveldb in-leveldb-keys
  leveldb-compact-range
  leveldb-destroy-db
  leveldb-repair-db
  leveldb-options leveldb-default-options
  leveldb-read-options leveldb-default-read-options
  leveldb-write-options leveldb-default-write-options
```

### std/db/lmdb
LMDB interface.

```
(import :std/db/lmdb)

;; exports:

  lmdb-error?
  lmdb-env?
  lmdb-db? lmdb-db-env lmdb-db-name
  lmdb-txn? lmdb-txn-env
  lmdb-cursor? lmdb-cursor-txn lmdb-cursor-db
  lmdb-open lmdb-sync lmdb-close lmdb-stat
  lmdb-open-db lmdb-close-db lmdb-db-stat lmdb-db-drop
  lmdb-txn-begin lmdb-txn-id
  lmdb-txn-commit lmdb-txn-abort
  lmdb-txn-reset lmdb-txn-renew
  lmdb-get lmdb-put lmdb-del
  lmdb-cursor-open lmdb-cursor-close lmdb-cursor-renew
  lmdb-cursor-get lmdb-cursor-put lmdb-cursor-del lmdb-cursor-count
```

### std/db/mysql
MySQL dbi driver.

```
(import :std/db/mysql)

;; exports:

  mysql-connect
```

### std/db/postgresql
PostgreSQL dbi driver.

```
(import :std/db/postgresql)

;; exports:

  postgreql-connect
  defcatalog
  default-catalog
  current-catalog


### std/db/sqlite
SQLite dbi driver.

```
(import :std/db/sqlite)

;; exports:

  sqlite-open
```

## std/debug/heap

Heap debugging utilities

```
(import :std/debug/heap)

;; exports:

  memory-usage
  heap-type-stats
  dump-heap-stats!
  walk-heap!
```

## std/error
Common error base classes.

```
(import :std/error)

;; exports:

  <error>
  exception
  (struct-out io-error timeout-error)
  raise-io-error
  raise-timeout
```

## std/event
Event-driven programming facilities.

```
(import :std/event)

;; exports:

  wait select sync
  ! !*
  never-evt always-evt
  wrap-evt handle-evt choice-evt
  sync-object?
  make-event event? event-e event-e-set!
```

## std/format
Intermediate format strings.

```
(import :std/format)

;; exports:

  format printf fprintf eprintf
```

## std/generic
Generic methods.

```
(import :std/generic)

;; exports:

  defgeneric defgeneric-type defmethod
  <t>  <void>  <null>  <boolean>
  <number>  <real>  <integer>  <fixnum>  <flonum>  <rational>  <complex>
  <string>  <symbol>  <keyword>
  <u8vector>  <vector>  <values>
  <pair>  <list>
  <procedure>
  <object>
  <hash-table>
  <thread>  <mutex>  <condvar>
  <port>  <input-port>  <output-port>
  <exception>
```

## std/getopt
Command-line argument parsing.

```
(import :std/getopt)

;; exports:

  getopt
  getopt? getopt-object?
  getopt-error?
  getopt-parse
  getopt-display-help
  option
  flag
  command
  argument
  optional-argument
  rest-arguments
```

## std/iter
Iterators.

```
(import :std/iter)

;; exports:

  (struct-out iterator)
  :iter iter-end iter-end? iter-nil iter-nil?
  iter-start! iter-value iter-next!
  for for* for/collect for/fold
  in-range in-naturals in-hash-keys in-hash-values
  in-input-lines in-input-chars in-input-bytes
  iter-filter iter-map iter-filter-map
  yield
```

## std/logger
Logging facilities.

```
(import :std/logger)

;; exports:

  start-logger!
  debug warning
  log-error log-message
```

## std/make
Standard library build tool.

```
(import :std/make)

;; exports:

  make make-depgraph make-depgraph/spec shell-config
```

## std/misc

Miscellaneous libraries.

### std/misc/completion

Asynchronous completion tokens

```
(import :std/misc/completion)

;; exports

  make-completion
  completion?
  completion-ready?
  completion-wait!
  completion-post!
  completion-error!
  with-completion-error
```

### std/misc/list
List utilities.

```
(import :std/misc/ports)

;; exports:

  plist->alist
  length=? length=n?
  length<? length<n? length<=? length<=n?
  length>? length>n? length>=? length>=n?
  call-with-list-builder
  snoc append1
```

### std/misc/ports
Port utilities.

```
(import :std/misc/ports)

;; exports:

  copy-port
  read-all-as-string read-file-string
  read-all-as-lines read-file-lines
```


### std/misc/pqueue
Heap-based priority queues.

```
(import :std/misc/pqueue)

;; exports:

  make-pqueue pqueue? pqueue-empty? pqueue-size
  pqueue-peek pqueue-pop! pqueue-push!
```

### std/misc/process
Process spawning utilities

These utilities synchronously spawn a subprocess,
spawn a coprocess function in a thread to interact with the process
(default: `std/misc/ports#read-all-as-string`),
check the status of the process upon termination,
and return the result of that coprocess if successful.

```
(import :std/misc/process)

;; exports:

  run-process run-process/batch
```

### std/misc/queue
Double-edged queues.

```
(import :std/misc/queue)

;; exports:

  make-queue queue? queue-length
  queue-empty? non-empty-queue?
  enqueue! enqueue-front! dequeue!
  queue->list
```

### std/misc/rtd
Miscellaneous type descriptor utilities.

```
(import :std/misc/rtd)

;; exports:

  object-type
  type? type-id type-name type-super
  type-descriptor?
  type-descriptor-mixin
  type-descriptor-fields
  type-descriptor-plist
  type-descriptor-ctor
  type-descriptor-slots
  type-descriptor-methods
```

### std/misc/shuffle
Shuffling.

```
(import :std/misc/shuffle)

;; exports:

  shuffle vector-shuffle vector-shuffle!
```

### std/misc/string
String utilities

```
(import :std/misc/string)

;; exports:

  string-split-prefix string-trim-prefix
  string-split-suffix string-trim-suffix
  string-split-eol string-trim-eol
  +cr+ +lf+ +crlf+
```

### std/misc/sync
Synchronized data structures.

```
(import :std/misc/sync)

;; exports:

  make-sync-hash sync-hash?
  sync-hash-get sync-hash-key? sync-hash-put! sync-hash-remove!
  sync-hash-do
```

### std/misc/threads
Thread utilities.

```
(import :std/misc/threads)

;; exports:

  primordial-thread-group
  thread-group-kill!
  thread-raise! thread-abort! thread-abort?
  spawn/abort spawn/name/abort
```

### std/misc/uuid
UUIDs.

```
(import :std/misc/uuid)

;; export:

  UUID uuid-length uuid::t make-uuid
  uuid? uuid=?   uuid-hash
  uuid->u8vector u8vector->uuid
  uuid->string string->uuid
  random-uuid
```

## std/net

Networking-related libraries.

### std/net/address
Internet addresses as host-port pairs.

```
(import :std/net/address)

;; exports:

  ip4-address? ip4-address
  ip4-address-string? ip4-address->string string->ip4-address
  ip6-address? ip6-address
  ip6-address-string? ip6-address->string string->ip6-address
  inet-address? inet-address
  inet-address-string? inet-address->string string->inet-address
  resolve-address resolved-address?
```

### std/net/bio

Binary I/O Buffers -- low level (unsafe) interface for buffered i/o
over raw devices and things.

```
(import :std/net/bio)

;; exports:

  ;; :std/net/bio/input
  input-buffer?
  bio-read-u8
  bio-peek-u8
  bio-read-subu8vector
  bio-read-subu8vector*
  bio-read-subu8vector-unbuffered
  bio-read-bytes
  bio-read-bytes-unbuffered
  bio-read-u32
  bio-input-skip

;; :std/net/bio/output
  output-buffer?
  bio-write-u8
  bio-write-subu8vector
  bio-write-subu8vector-unbuffered
  bio-write-bytes
  bio-write-bytes-unbuffered
  bio-write-u32
  bio-write-char
  bio-write-substring
  bio-write-string
  bio-force-output

;; :std/net/bio/buffer
  open-input-buffer
  open-fixed-output-buffer
  make-fixed-output-buffer
  open-chunked-output-buffer
  open-serializer-output-buffer
  chunked-output-buffer?
  chunked-output-chunks
  chunked-output-u8vector
  chunked-output-length

```

### std/net/httpd
Embedded HTTP server.

```
(import :std/net/httpd)

;; exports:

  current-http-server
  start-http-server!
  stop-http-server!
  http-register-handler
  make-default-http-mux
  make-recursive-http-mux
  http-request?
  http-request-method http-request-url http-request-path http-request-params
  http-request-proto http-request-client http-request-headers
  http-request-body
  http-request-timeout-set!
  http-response?
  http-response-write
  http-response-begin http-response-chunk http-response-end
  http-response-force-output
  http-response-timeout-set!
  set-httpd-request-timeout!
  set-httpd-response-timeout!
  set-httpd-max-request-headers!
  set-httpd-max-token-length!
  set-httpd-max-request-body-length!
```

### std/net/request
HTTP requests library.

```
(import :std/net/request)

;; exports:

  http-get http-head http-post http-put http-delete http-options
  request? request-url request-status request-status-text
  request-headers
  request-encoding request-encoding-set!
  request-content
  request-text
  request-json
  request-cookies
  request-close
  request-port
```

### std/net/repl

Network repl for debugging live programs.

```
(import :std/net/repl)

;; start a network repl server
(start-repl-server! password: (passwd #f)
                    address: (address "127.0.0.1:7000"))
=> thread

;; stop the network repl server
(stop-repl-server! repl-server-thread)
```

### std/net/socket
Synchronous Socket programming API.

```
(import :std/net/socket)

;; synchronous socket interface
  ssocket-connect
  ssocket-listen
  ssocket-accept
  ssocket-send ssocket-send-all
  ssocket-recv ssocket-recv-all
  ssocket-socket
  ssocket-close ssocket-close-input ssocket-close-output

;; bio buffers
  open-ssocket-input-buffer
  ssocket-input-buffer?
  ssocket-input-buffer-timeout-set!
  open-ssocket-output-buffer
  ssocket-output-buffer?
  ssocket-output-buffer-timeout-set!

;; socket server
  start-socket-server!
  stop-socket-server!

```

### std/net/socks
SOCKS proxy client.

```
(import :std/net/socks)

;; exports:

  open-socks5-client open-socks4-client
  socks5-open socks5-connect socks5-bind socks5-accept
  socks4-connect socks4-bind socks4-accept
  socks5-send-request socks5-recv-reply
  socks4-send-request socks4-recv-reply
```

### std/net/uri
URI support [RFC3986]

```
(import :std/net/uri)

;; exports:

  uri-encode uri-decode form-url-encode form-url-decode
```


### std/net/wamp
Web Application Message Protocol client.

```
(import :std/net/wamp)

;; exports:

  start-wamp-client!
  wamp-call wamp-publish wamp-subscribe
  wamp-register wamp-unregister
  wamp-close
  (struct-out wamp-error invocation-error)
  raise-invocation-error

```

### std/net/websocket
Websocket client.

```
(import :std/net/websocket)

;; exports:

  open-websocket-client
  websocket?
  websocket-recv websocket-read
  websocket-send websocket-write
  websocket-close
  set-websocket-max-frame-size!
  set-websocket-max-message-size!
```

## std/os

Libraries for programming with raw OS devices.

### std/os/error
OS error handling facilities.

```
(import :std/os/error)

;; exports:

  raise-os-error check-os-error
  do-retry-nonblock
  check-ptr
  strerror
  EAGAIN EINTR EINPROGRESS EWOULDBLOCK
```

### std/os/fd
Raw devices from file decriptors.

```
(import :std/os/fd)

;; exports:

  fdopen
  fd-e fd-io-in fd-io-out
  fd? fd-type? fd-type
```

### std/os/fdio

Reading and writing from raw devices.

```
(import :std/os/fdio)

;; exports:

  fdread fdwrite _read _write
```

### std/os/fcntl
File descriptor control.

```
(import :std/os/fcntl)

;; exports:

  fcntl _fcntl0 _fcntl1
  fd-getfl fd-setfl fd-setfl!
  fd-getfd fd-setfd fd-setfd!
  fd-set-nonblock fd-set-closeonexec
  F_DUPFD F_GETFD F_SETFD F_GETFL F_SETFL
  FD_CLOEXEC
  O_CREAT O_EXCL O_NOCTTY O_TRUNC
  O_APPEND O_DSYNC O_NONBLOCK O_RSYNC O_SYNC
  O_ACCMODE
  O_RDONLY O_RDWR O_WRONLY

```

### std/os/pipe
Pipes.

```
(import :std/os/pipe)

;; exports:

  pipe
  _pipe make_pipe_ptr pipe_ptr_ref

```

### std/os/socket
Sockets.

```
(import :std/os/socket)

;; exports:

  socket
  server-socket
  socket?
  socket-bind
  socket-listen
  socket-accept
  socket-connect
  socket-shutdown
  socket-close
  socket-send
  socket-sendto
  socket-sendmsg
  socket-recv
  socket-recvfrom
  socket-recvmsg
  socket-recvmsg*
  socket-getpeername
  socket-getsockname
  socket-getsockopt
  socket-setsockopt
  socket-domain
  socket-address?
  make-socket-address
  make-socket-address-in
  make-socket-address-in6
  make-socket-address-un
  socket-address
  socket-address-in
  socket-address-in6
  socket-address-un
  socket-address->address
  socket-address->string
  socket-address-family

  AF_UNSPEC
  AF_INET
  AF_INET6
  AF_UNIX AF_LOCAL
  AF_NETLINK AF_PACKET AF_ALG

  SOCK_STREAM
  SOCK_DGRAM
  SOCK_RAW
  SOCK_SEQPACKET SOCK_RDM

  SHUT_RD
  SHUT_WR
  SHUT_RDWR

  UNIX_MAX_PATH

  SOL_SOCKET
  SO_ACCEPTCONN
  SO_BINDTODEVICE
  SO_BROADCAST
  SO_DEBUG
  SO_DOMAIN
  SO_DONTROUTE
  SO_ERROR
  SO_KEEPALIVE
  SO_LINGER
  SO_OOBLINE
  SO_PASSCRED
  SO_PEERCRED
  SO_PEEK_OFF
  SO_PROTOCOL
  SO_RCVBUF
  SO_SNDBUF
  SO_RCVLOWAT
  SO_SNDLOWAT
  SO_RCVTIMEO
  SO_SNDTIMEO
  SO_REUSEADDR
  SO_REUSEPORT
  SO_TYPE
  SO_TIMESTAMP
  SO_USELOOPBACK

  IPPROTO_IPV6
  IPV6_ADDRFORM
  IPV6_ADD_MEMBERSHIP
  IPV6_DROP_MEMBERSHIP
  IPV6_MTU
  IPV6_MTU_DISCOVER
  IPV6_MULTICAST_HOPS
  IPV6_MULTICAST_IF
  IPV6_MULTICAST_LOOP
  IPV6_RECVPKTINFO
  IPV6_RTHDR
  IPV6_AUTHHDR
  IPV6_DSTOPTS
  IPV6_HOPOPTS
  IPV6_FLOWINFO
  IPV6_HOPLIMIT
  IPV6_ROUTER_ALERT
  IPV6_UNICAST_HOPS
  IPV6_V6ONLY

  IPPROTO_TCP
  TCP_CONGESTION
  TCP_CORK
  TCP_DEFER_ACCEPT
  TCP_KEEPCNT
  TCP_KEEPIDLE
  TCP_KEEPINTVL
  TCP_MAXSEG
  TCP_NODELAY
  TCP_SYNCNT

  IP_PMTUDISC_WANT
  IP_PMTUDISC_DONT
  IP_PMTUDISC_DO
  IP_PMTUDISC_PROBE

  IPTOS_LOWDELAY
  IPTOS_THROUGHPUT
  IPTOS_RELIABILITY
  IPTOS_MINCOST

  MSG_CONFIRM
  MSG_CTRUNC
  MSG_DONTROUTE
  MSG_DONTWAIT
  MSG_EOR
  MSG_ERRQUEUE
  MSG_MORE
  MSG_NOSIGNAL
  MSG_OOB
  MSG_PEEK
  MSG_TRUNC
  MSG_WAITALL
```

### std/os/epoll

epoll for linux.

```
(require linux)
(import :std/os/epoll)

;; exports:

  epoll-create epoll-ctl-add epoll-ctl-mod epoll-ctl-del epoll-wait
  make-epoll-events epoll-event-fd epoll-event-events
  EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT
```

### std/os/inotify

inotify for linux.

```
(require linux)
(import :std/os/inotify)

;; exports:

  inotify-init inotify? inotify-close
  inotify-add-watch inotify-rm-watch
  inotify
  (struct-out inotify-event)
  IN_ACCESS
  IN_ATTRIB
  IN_CLOSE_WRITE
  IN_CLOSE_NOWRITE
  IN_CREATE
  IN_DELETE
  IN_DELETE_SELF
  IN_MODIFY
  IN_MOVE_SELF
  IN_MOVED_FROM
  IN_MOVED_TO
  IN_OPEN
  IN_ALL_EVENTS
  IN_MOVE
  IN_CLOSE
  IN_DONT_FOLLOW
  IN_EXCL_UNLINK
  IN_MASK_ADD
  IN_ONESHOT
  IN_ONLYDIR
  IN_IGNORED
  IN_ISDIR
  IN_Q_OVERFLOW
  IN_UNMOUNT
```

## std/parser
Parsing facilities and grammar definition prelude.

```
#lang :std/parser/grammar
(import :std/parser)

;; exports:

;; :std/parser/rlang
  @nul @nul? @eps @eps?
  @char @charset @negset @dot
  @alt @cat @rep* @rep+ @maybe
  deriv delta recognizes?

;; :std/parser/base
  (struct-out parse-error token location)
  raise-parse-error
  wrap-identity wrap-ast unwrap-ast
  token->syntax
  location->source-location
  display-location
  location-delta location-delta*

;; :std/parser/stream
  make-char-stream char-stream?
  char-stream-loc
  char-stream-close
  char-stream-peek
  char-stream-getc
  char-stream-ungetc
  port-location

;; :std/parser/lexer
  lex lex-chars
  token-stream?
  token-stream-close
  token-stream-get
  token-stream-next
  token-stream-unget
  token-stream-peek
  token-stream-loc
  $ $? $$ $$?

;; :std/parser/defparser
  defparser
  @eq % ! $-
  parser-parse parser-rewind parser-fail
  parser-input-stream

;; :std/parser/deflexer
  deflexer
```

## std/pregexp
The well-known portable Scheme regular expressions library.

```
(import :std/pregexp)

;; exports:

  pregexp
  pregexp-match-positions
  pregexp-match
  pregexp-split
  pregexp-replace
  pregexp-replace*
  pregexp-quote
```

## std/sort
Sorting using Olin Shivers' withdrawn SRFI-32 implementation.

```
(import :std/sort)

;; exports:

  sort sort! stable-sort stable-sort!
```

## std/srfi

See [SRFI Support](srfi.md)



## std/sugar
Commonly used macros.

```
(import :std/sugar)

;; exports:

  try catch finally
  with-destroy
  assert!
  while until
  hash hash-eq hash-eqv let-hash
  defmethod/alias
  using
```

## std/test
Testing facilities.

```
(import :std/test)

;; exports:

  test-suite test-case
  check checkf
  check-eq? check-not-eq?
  check-eqv? check-not-eqv?
  check-equal? check-not-equal?
  check-output check-predicate check-exception
  !check-fail? !check-fail-e
  run-tests! test-report-summary!
```

## std/text

Text encoding and decoding libraries.

### std/text/base64
Base64 encoding and decoding.

```
(import :std/text/base64)

;; exports:

  base64-string->u8vector
  base64-substring->u8vector
  u8vector->base64-string
  subu8vector->base64-string)
  base64-decode base64-decode-substring
  base64-encode base64-encode-subu8vector
```

### std/text/csv

CSV parser and unparser.
It is configurable through parameters to fit whichever CSV options your files use,
defaulting to the "standard" from the creativyst specification.
Parameters for RFC4180 are just a call-with- function call around.

The parameters are: `csv-separator` `csv-quote` `csv-unquoted-quotequote?` `csv-loose-quote?`
`csv-eol` `csv-line-endings` `csv-skip-whitespace?` `csv-allow-binary?`

Functions to locally set the parameters to known values are `call-with-creativyst-csv-syntax` `call-with-rfc4180-csv-syntax` `call-with-strict-rfc4180-csv-syntax`

The parsing and unparsing functions are `read-csv-line` `read-csv-lines` `read-csv-file` `write-csv-line` `write-csv-lines`.

```
(import :std/text/csv)

;; exports:

  csv-separator csv-quote csv-unquoted-quotequote? csv-loose-quote?
  csv-eol csv-line-endings csv-skip-whitespace?
  csv-allow-binary?
  call-with-creativyst-csv-syntax call-with-rfc4180-csv-syntax call-with-strict-rfc4180-csv-syntax
  read-csv-line read-csv-lines read-csv-file write-csv-line write-csv-lines
```

### std/text/hex
Hex encoding and decoding.

```
(import :std/text/hex)

;; exports:

  hex-encode hexlify
  hex-decode unhexlify
  hex unhex unhex*
```

### std/text/json
JSON encoding and decoding.

```
(import :std/text/json)

;; exports:

  read-json write-json
  string->json-object json-object->string
  json-symbolic-keys
```

### std/text/utf8
Faster UTF8 encoding and decoding.

```
(import :std/text/utf8)

;; exports

  string->utf8 utf8->string
  string-utf8-length
  utf8-encode utf8-decode
```

### std/text/yaml
YAML parsing and dumping; requires libyaml.

```
(import :std/text/yaml)

;; exports:

  yaml-load yaml-dump
```

### std/text/zlib
Compression and decompression with zlib.

```
(import :std/text/zlib)

;; exports:

  compress compress-gz uncompress
```


## std/web

Web programming.

### std/web/fastcgi
Fastcgi interface.

```
(import :std/web/fastcgi)

;; exports:

  start-fastcgi-server!
  fastcgi-request?
  fastcgi-request-role
  fastcgi-request-params
  fastcgi-request-stdin
  fastcgi-write-stdout
  fastcgi-write-stderr
  fastcgi-request-end
```

### std/web/rack
Rack-style web servers with fastcgi connections.

```
(import :std/web/rack)

;; exports:

  start-rack-fastcgi-server!
```


## std/xml
XML processing package; requires libxml2.

```
(import :std/xml)

;; exports:

;; :std/xml/libxml
  parse-xml parse-html
  parse-xml-default-options parse-html-default-options
  XML_PARSE_RECOVER
  XML_PARSE_NOENT
  XML_PARSE_DTDLOAD
  XML_PARSE_DTDATTR
  XML_PARSE_DTDVALID
  XML_PARSE_NOERROR
  XML_PARSE_NOWARNING
  XML_PARSE_PEDANTIC
  XML_PARSE_NOBLANKS
  XML_PARSE_XINCLUDE
  XML_PARSE_NONET
  XML_PARSE_NODICT
  XML_PARSE_NSCLEAN
  XML_PARSE_NOCDATA
  XML_PARSE_NOXINCNODE
  XML_PARSE_COMPACT
  XML_PARSE_HUGE
  HTML_PARSE_RECOVER
  HTML_PARSE_NODEFDTD
  HTML_PARSE_NOERROR
  HTML_PARSE_NOWARNING
  HTML_PARSE_PEDANTIC
  HTML_PARSE_NOBLANKS
  HTML_PARSE_NONET
  HTML_PARSE_NOIMPLIED
  HTML_PARSE_COMPACT
  HTML_PARSE_IGNORE_ENC

;; :std/xml/sxml
  sxml-e
  sxml-attributes sxml-attribute-e attribute-e
  sxml-children
  sxml-select sxml-select/context sxml-select*
  sxml-find sxml-find/context sxml-find*
  sxml-e? sxml-id? sxml-class?

;; :std/xml/print
  print-sxml->html
  print-sxml->html*
  print-sxml->html-fast
  print-sxml->xhtml
  print-sxml->xhtml*
  print-sxml->xhtml-fast
  print-sxml->xml
  print-sxml->xml*
  print-sxml->xml-fast
  pretty-print-sxml->xml-file
  pretty-print-sxml->xhtml-file
  sxml->html-string-fragment
  sxml->xhtml-string
```
