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
  * [std/db/sqlite](#stddbsqlite)
- [std/error](#stderror)
- [std/event](#stdevent)
- [std/format](#stdformat)
- [std/generic](#stdgeneric)
- [std/getopt](#stdgetopt)
- [std/iter](#stditer)
- [std/logger](#stdlogger)
- [std/make](#stdmake)
- [std/misc](#stdmisc)
  * [std/misc/ports](#stdmiscports)
  * [std/misc/pqueue](#stdmiscpqueue)
  * [std/misc/queue](#stdmiscqueue)
  * [std/misc/shuffle](#stdmiscshuffle)
  * [std/misc/uuid](#stdmiscuuid)
- [std/net](#stdnet)
  * [std/net/address](#stdnetaddress)
  * [std/net/request](#stdnetrequest)
  * [std/net/server](#stdnetserver)
  * [std/net/socks](#stdnetsocks)
  * [std/net/uri](#stdneturi)
  * [std/net/wamp](#stdnetwamp)
  * [std/net/websocket](#stdnetwebsocket)
- [std/os](#stdos)
  * [std/os/error](#stdoserror)
  * [std/os/fd](#stdosfd)
  * [std/os/fcntl](#stdosfcntl)
  * [std/os/pipe](#stdospipe)
  * [std/os/socket](#stdossocket)
  * [std/os/epoll](#stdosepoll)
- [std/parser](#stdparser)
- [std/pregexp](#stdpregexp)
- [std/sort](#stdsort)
- [std/srfi](#stdsrfi)
- [std/sugar](#stdsugar)
- [std/test](#stdtest)
- [std/text](#stdtext)
  * [std/text/base64](#stdtextbase64)
  * [std/text/hex](#stdtexthex)
  * [std/text/json](#stdtextjson)
  * [std/text/yaml](#stdtextyaml)
  * [std/text/zlib](#stdtextzlib)
- [std/web](#stdweb)
  * [std/web/fastcgi](#stdwebfastcgi)
  * [std/web/rack](#stdwebrack)
- [std/xml](#stdxml)

<!-- tocstop -->

## std/actor
```
(import :std/actor)
```

Package for actor-oriented concurrent and distributed programming.

Exports:
```
;; :std/actor/message
  (struct-out message proxy)
  -> send send-message send-message/timeout
  << <- receive-message
  !

;; :std/actor/proto
  rpc-io-error? raise-rpc-io-error
  (struct-out actor-error remote-error rpc-error)
  (struct-out handle remote)
  remote=? remote-hash
  (struct-out !rpc !call !value !error !event !stream !yield !end !continue !close !abort)
  !!call !!call-recv !!value !!error !!event
  !!stream !!stream-recv !!yield !!end !!continue !!close !!abort
  (struct-out !protocol !rpc-protocol)
  defproto
  defproto-default-type
  *default-proto-type-registry*
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
```

## std/coroutine
```
(import :std/coroutine)
```

Library for thread-based coroutines.

Exports:
```
  coroutine coroutine? continue yield
```

## std/crypto
```
(import :std/crypto)
```

Cryptography based on libcrypto.

Exports:
```
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
  
;; :std/crypto/cipher
  cipher make-cipher cipher? cipher-type cipher-ctx cipher-context
  cipher-name cipher-block-size cipher-key-length cipher-iv-length
  cipher-copy
  encrypt encrypt-u8vector
  encrypt-init!
  encrypt-update! encrypt-update/nocheck!
  encrypt-final! encrypt-final/nocheck!
  decrypt decrypt-u8vector
  decrypt-init!
  decrypt-update! decrypt-update/nocheck!
  decrypt-final! decrypt-final/nocheck!

  ;; LEN = 128 192 256
  ;; MODE = ecb cbc cfb ofb ctr ccm gcm xts
  cipher::aes-{LEN}-{MODE} make-aes-{LEN}-{MODE}-cipher aes-{LEN}-{MODE}-cipher?
  ;; MODE = ecb cbc cfb ofb
  cipher::camellia-{LEN}-{MODE} make-camellia-{LEN}-{MODE}-cipher camellia-{LEN}-{MODE}-cipher?
  cipher::idea-{MODE} make-idea-{MODE}-cipher idea-{MODE}-cipher?
  cipher::cast5-{MODE} make-cast5-{MODE}-cipher cast5-{MODE}-cipher?
  cipher::bf-{MODE} make-bf-{MODE}-cipher bf-{MODE}-cipher?
  
;; :std/crypto/dh
  DH-generate-key DH-compute-key DH-pub-key
  DH-get-1024-160 DH-get-2048-224 DH-get-2048-256
  
;; :std/crypto/bn
  BN->bytes bytes->BN

```

## std/db

Database interfaces.

### std/db/conpool
```
(import :std/db/conpool)
```

Database connection pool.

Exports:
```
  make-conpool conpool?
  conpool-get conpool-put
```


### std/db/dbi
```
(import :std/db/dbi)
```

Generic SQL database interface.

Exports:
```
  sql-connect sql-close sql-prepare
  sql-bind sql-clear sql-reset sql-reset/clear sql-finalize
  sql-eval sql-eval-query
  sql-exec sql-query in-sql-query sql-columns
  sql-txn-begin sql-txn-commit sql-txn-abort

```


### std/db/leveldb
```
(import :std/db/leveldb)
```

LevelDB interface.

Exports:
```
  leveldb-error?
  leveldb?
  leveldb-open leveldb-close
  leveldb-put leveldb-get leveldb-delete leveldb-write
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
```
(import :std/db/lmdb)
```

LMDB interface.

Exports:
```
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
```
(import :std/db/mysql)
```

MySQL dbi driver.

Exports:
```
  mysql-connect
```


### std/db/sqlite
```
(import :std/db/sqlite)
```

SQLite dbi driver.

Exports:
```
  sqlite-open
```

## std/error
```
(import :std/error)
```

Common error base classes.

Exports:
```
  <error>
  (struct-out io-error timeout-error)
  raise-io-error
  raise-timeout
```

## std/event
```
(import :std/event)
```

Event-driven programming facilities.

Exports:
```
  select
  ! !! sync poll
  never-evt always-evt
  make-event
  make-event-set
  handle-evt
  wrap-evt choice-evt
  event? event-handler? event-set?  event-ready?
  event-selector event-value
  thread-dead?
```

## std/format
```
(import :std/format)
```

Intermediate format strings.

Exports:
```
  format printf fprintf eprintf
```

## std/generic
```
(import :std/generic)
```

Generic methods.

Exports:
```
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
```
(import :std/getopt)
```

Command-line argument parsing.

Exports:
```
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
```
(import :std/iter)
```

Iterators.

Exports:
```
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
```
(import :std/logger)
```

Logging facilities.

Exports:
```
  start-logger!
  debug warning
  log-error log-message
```

## std/make
```
(import :std/make)
```

Standard library build tool.

Exports:
```
  make make-depgraph make-depgraph/spec shell-config
```

## std/misc

Miscellaneous libraries.

### std/misc/ports
```
(import :std/misc/ports)
```

Port utilites.

Exports:
```
  copy-port
```


### std/misc/pqueue
```
(import :std/misc/pqueue)
```

Heap-based priority queues.

Exports:
```
  make-pqueue pqueue? pqueue-empty? pqueue-size
  pqueue-peek pqueue-pop! pqueue-push!
```

### std/misc/queue
```
(import :std/misc/queue)
```

Double-edged queues.

Exports:
```
  make-queue queue? queue-length
  queue-empty? non-empty-queue?
  enqueue! enqueue-front! dequeue!
  queue->list
```


### std/misc/shuffle
```
(import :std/misc/shuffle)
```

Shuffling.

Exports:
```
  shuffle vector-shuffle vector-shuffle!
```

### std/misc/uuid
```
(import :std/misc/uuid)
```

UUIDs.

Export:
```
  UUID uuid-length uuid::t make-uuid
  uuid? uuid=?
  uuid-hash
  uuid->u8vector
  uuid->symbol
  random-uuid
```

## std/net

Networking-related libraries.

### std/net/address
```
(import :std/net/address)
```

Internet addresses as host-port pairs.

Exports:
```
  ip4-address? ip4-address 
  ip4-address-string? ip4-address->string string->ip4-address
  ip6-address? ip6-address
  ip6-address-string? ip6-address->string string->ip6-address
  inet-address? inet-address
  inet-address-string? inet-address->string string->inet-address
  resolve-address resolved-address?
```

### std/net/request
```
(import :std/net/request)
```

HTTP requests library.

Exports:
```
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


### std/net/server
```
(import :std/net/server)
```

Package for programming with sockets and platform-optimized i/o multiplexing.

Exports:
```
;; :std/net/server/api
  start-socket-server! server-shutdown!
  server-connect
  server-listen server-accept
  server-send server-send-all
  server-recv server-recv-all
  server-socket-e
  server-close server-close-input server-close-output
        
;; :std/net/server/buffer
  server-input-buffer
  server-input-read-u8
  server-input-read-u32
  server-input-read
  server-input-read*
  server-output-buffer
  server-output-write-u8
  server-output-write-u32
  server-output-write
  server-output-force
        
;; :std/net/server/basic-server
  basic-socket-server

;; :std/net/server/epoll-server (linux)
  epoll-socket-server

```

### std/net/socks
```
(import :std/net/socks)
```

SOCKS proxy client.

Exports:
```
  open-socks5-client open-socks4-client
  socks5-open socks5-connect socks5-bind socks5-accept
  socks4-connect socks4-bind socks4-accept
  socks5-send-request socks5-recv-reply
  socks4-send-request socks4-recv-reply
```

### std/net/uri
```
(import :std/net/uri)
```

URI support [RFC3986]

Exports:
```
  uri-encode uri-decode form-url-encode form-url-decode
```


### std/net/wamp
```
(import :std/net/wamp)
```

Web Application Message Protocol client.

Exports:
```
  start-wamp-client! 
  wamp-call wamp-publish wamp-subscribe
  wamp-register wamp-unregister
  wamp-close
  (struct-out wamp-error invocation-error)
  raise-invocation-error
  
```

### std/net/websocket
```
(import :std/net/websocket)
```

Websocket client.

Exports:
```
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
```
(import :std/os/error)
```

OS error handling facilities.

Exports:
```
  raise-os-error check-os-error
  do-retry-nonblock
  check-ptr
  strerror
  EAGAIN EINTR EINPROGRESS EWOULDBLOCK
```

### std/os/fd
```
(import :std/os/fd)
```

Raw devices from file decriptors.

Exports:
```
  fdopen
  fd-e fd-io-in fd-io-out
  fd? fd-type? fd-type
```

### std/os/fcntl
```
(import :std/os/fcntl)
```

File descriptor control.

Exports:
```
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
```
(import :std/os/pipe)
```

Pipes.

Exports:
```
  pipe
  _pipe make_pipe_ptr pipe_ptr_ref
  
```

### std/os/socket
```
(import :std/os/socket)
```

Sockets.

Exports:
```
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
```
(require linux)
(import :std/os/epoll)
```

epoll for linux.

Exports:
```
  epoll-create epoll-ctl-add epoll-ctl-mod epoll-ctl-del epoll-wait
  make-epoll-events epoll-event-fd epoll-event-events
  EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT
```

## std/parser
```
(import :std/parser)
#lang :std/parser/grammar
```

Parsing facilities and grammar definition prelude.

Exports:
```
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
```
(import :std/pregexp)
```

The well-known portable Scheme regular expressions library.

Exports:
```
  pregexp
  pregexp-match-positions
  pregexp-match
  pregexp-split
  pregexp-replace
  pregexp-replace*
  pregexp-quote
```

## std/sort
```
(import :std/sort)
```

Sorting using Olin Shivers' withdrawn SRFI-32 implementation.

Exports:
```
  sort sort! stable-sort stable-sort!
```

## std/srfi

See [SRFI Support](srfi.md)



## std/sugar
```
(import :std/sugar)
```

Commonly used macros.

Exports:
```
  try catch finally
  with-destroy
  assert!
  while until
  hash hash-eq hash-eqv
  defmethod/alias
```

## std/test
```
(import :std/test)
```

Testing facilities.

Exports:
```
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
```
(import :std/text/base64)
```

Base64 encoding and decoding.

Exports:
```
  base64-string->u8vector
  base64-substring->u8vector
  u8vector->base64-string
  subu8vector->base64-string)
  base64-decode base64-decode-substring
  base64-encode base64-encode-subu8vector
```

### std/text/hex
```
(import :std/text/hex)
```

Hex encoding and decoding.

Exports:
```
  hex-encode hexlify
  hex-decode unhexlify
  hex unhex unhex*
```

### std/text/json
```
(import :std/text/json)
```

JSON encoding and decoding.

Exports:
```
  read-json write-json
  string->json-object json-object->string
  json-symbolic-keys
```

### std/text/yaml
```
(import :std/text/yaml)
```

YAML parsing and dumping; requires libyaml.

Exports:
```
  yaml-load yaml-dump
```

### std/text/zlib
```
(import :std/text/zlib)
```

Compression and decompression with zlib.

Exports:
```
  compress compress-gz uncompress
```


## std/web

Web programming.

### std/web/fastcgi
```
(import :std/web/fastcgi)
```

Fastcgi interface.

Exports:
```
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
```
(import :std/web/rack)
```

Rack-style web servers with fastcgi connections.

Exports:
```
  start-rack-fastcgi-server!
```


## std/xml
```
(import :std/xml)
```

XML processing package; requires libxml2.

Exports:
```
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
