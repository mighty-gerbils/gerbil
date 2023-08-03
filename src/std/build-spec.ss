;; -*- Gerbil -*-

(def (build-spec srcdir: srcdir libdir: _ debug: _)
  `((gxc: "build-config" (extra-inputs: ("build-features.ss")))
    "gambit-sharp"
    "interactive"
    "foreign"
    ;; tests for :std/foreign
    "foreign-test-support"
    "format"
    "pregexp"
    "sort"
    "sugar"
    "assert"
    "make"
    "build-script"
    "error"
    "getopt"
    "logger"
    (gxc: "generic/dispatch" ,@(include-gambit-sharp))
    "generic/macros"
    (gxc: "generic/builtin" ,@(include-gambit-sharp))
    "generic"
    "ref"
    (gxc: "event" ,@(include-gambit-sharp))
    "coroutine"
    "iter"
    "test"
    "stxparam"
    "stxutil"
    "lazy"
    "amb"
    (gxc: "interface" ,@(include-gambit-sharp))
    ;; debugging
    (gxc: "debug/heap" ,@(include-gambit-sharp))
    "debug/memleak"
    (gxc: "debug/threads" ,@(include-gambit-sharp))
    ;; SRFI: This is my grandfather's axe; my father replaced the head
    ;;       and i have replaced the handle.
    "srfi/srfi-support"
    (gxc: "srfi/1" (extra-inputs: ("srfi/srfi-1.scm")))
    (gxc: "srfi/8")
    "srfi/9"
    "srfi/14"
    (gxc: "srfi/13" (extra-inputs: ("srfi/srfi-13.scm")) "-cc-options" "--param max-gcse-memory=300000000")
    (gxc: "srfi/19" (extra-inputs: ("srfi/srfi-19.scm")))
    (gxc: "srfi/41" (extra-inputs: ("srfi/srfi-41.scm")))
    "srfi/41-iter"
    (gxc: "srfi/42" "-cc-options" "--param max-gcse-memory=300000000")
    (gxc: "srfi/43" (extra-inputs: ("srfi/srfi-43.scm")))
    (gxc: "srfi/78" (extra-inputs: ("srfi/srfi-78.scm")))
    (gxc: "srfi/95" (extra-inputs: ("srfi/srfi-95.scm")))
    (gxc: "srfi/101" (extra-inputs: ("srfi/srfi-101.scm")))
    (gxc: "srfi/113" (extra-inputs: ("srfi/srfi-113.scm")))
    (gxc: "srfi/116" (extra-inputs: ("srfi/srfi-116/ilists-base.scm" "srfi/srfi-116/ilists-impl.scm")))
    (gxc: "srfi/117" (extra-inputs: ("srfi/srfi-117.scm")))
    (gxc: "srfi/121" (extra-inputs: ("srfi/srfi-121.scm")))
    "srfi/121-iter"
    "srfi/124"
    "srfi/125"
    (gxc: "srfi/127" (extra-inputs: ("srfi/srfi-127.scm")))
    "srfi/127-iter"
    "srfi/128"
    (gxc: "srfi/130" (extra-inputs: ("srfi/srfi-130.scm")))
    (gxc: "srfi/132"
          (extra-inputs: ("srfi/srfi-132/delndups.scm" "srfi/srfi-132/lmsort.scm"
                          "srfi/srfi-132/sortp.scm" "srfi/srfi-132/vector-util.scm"
                          "srfi/srfi-132/vhsort.scm" "srfi/srfi-132/visort.scm"
                          "srfi/srfi-132/vmsort.scm" "srfi/srfi-132/vqsort2.scm"
                          "srfi/srfi-132/vqsort3.scm" "srfi/srfi-132/sort.scm"
                          "srfi/srfi-132/select.scm")))
    (gxc: "srfi/133" (extra-inputs: ("srfi/srfi-133.scm")))
    (gxc: "srfi/134" (extra-inputs: ("srfi/srfi-134.scm")))
    "srfi/srfi-135/etc"
    (gxc: "srfi/srfi-135/binary" (extra-inputs: ("srfi/srfi-135/binary.scm")))
    (gxc: "srfi/srfi-135/kernel8" (extra-inputs: ("srfi/srfi-135/kernel8.scm")))
    (gxc: "srfi/srfi-135/macros" (extra-inputs: ("srfi/srfi-135/macros.scm")))
    (gxc: "srfi/srfi-135/text" (extra-inputs: ("srfi/srfi-135/text.scm")))
    "srfi/135"
    (gxc: "srfi/141" (extra-inputs: ("srfi/srfi-141.scm")))
    (gxc: "srfi/143" (extra-inputs: ("srfi/srfi-143/carries.scm")))
    (gxc: "srfi/144" (extra-inputs: ("srfi/srfi-144/144.constants.scm" "srfi/srfi-144/144.body0.scm"
                                     "srfi/srfi-144/144.body.scm" "srfi/srfi-144/144.special.scm")))
    "srfi/145"
    (gxc: "srfi/151" (extra-inputs: ("srfi/srfi-151/bitwise-core.scm" "srfi/srfi-151/bitwise-33.scm"
                                     "srfi/srfi-151/bitwise-60.scm" "srfi/srfi-151/bitwise-other.scm")))
    (gxc: "srfi/146" (extra-inputs: ("srfi/srfi-146.scm")))
    (gxc: "srfi/146/vector-edit" (extra-inputs: ("srfi/146/vector-edit.scm")))
    (gxc: "srfi/146/hamt-misc" (extra-inputs: ("srfi/146/hamt-misc.scm")))
    (gxc: "srfi/146/hamt" (extra-inputs: ("srfi/146/hamt.scm")))
    (gxc: "srfi/146/hamt-map" (extra-inputs: ("srfi/146/hamt-map.scm")))
    (gxc: "srfi/146/hash" (extra-inputs: ("srfi/146/hash.scm")))
    (gxc: "srfi/115" (extra-inputs: ("srfi/srfi-115/charsets.scm" "srfi/srfi-115/regexp.scm")))
    (gxc: "srfi/158" (extra-inputs: ("srfi/srfi-158.scm")))
    "srfi/158-iter"
    (gxc: "srfi/159/environment" (extra-inputs: ("srfi/159/environment.scm")))
    "srfi/159/string"
    (gxc: "srfi/159/base" (extra-inputs: ("srfi/159/base.scm" "srfi/159/write.scm")))
    (gxc: "srfi/159/show" (extra-inputs: ("srfi/159/show.scm")))
    "srfi/159/columnar"
    (gxc: "srfi/159/unicode" (extra-inputs: ("srfi/159/unicode.scm")))
    (gxc: "srfi/159/color" (extra-inputs: ("srfi/159/color.scm")))
    (gxc: "srfi/159/pretty" (extra-inputs: ("srfi/159/pretty.scm")))
    "srfi/159"
    "srfi/160/cvector"
    "srfi/160/base"
    "srfi/160/macros"
    "srfi/160/u8"
    "srfi/160/s8"
    "srfi/160/u16"
    "srfi/160/s16"
    "srfi/160/u32"
    "srfi/160/s32"
    "srfi/160/u64"
    "srfi/160/s64"
    "srfi/160/f32"
    "srfi/160/f64"
    "srfi/160/c64"
    "srfi/160/c128"
    ;; :std/parser
    "parser/rlang"
    "parser/base"
    (gxc: "parser/stream" ,@(include-gambit-sharp))
    "parser/lexer"
    (gxc: "parser/defparser" "-cc-options" "--param max-gcse-memory=300000000")
    (gxc: "parser/rx-parser" "-cc-options" "--param max-gcse-memory=300000000")
    "parser/deflexer"
    "parser/grammar-reader"
    "parser/grammar"
    "parser"
    ;; :std/text
    "text/utf8"
    "text/utf16"
    "text/utf32"
    "text/hex"
    (gsc: "text/base64")
    (ssi: "text/base64")
    "text/base58"
    "text/csv"
    "text/json"
    ,@(if config-enable-libyaml
        `((gsc: "text/libyaml"
                "-cc-options" ,(cppflags "libyaml" "")
                "-ld-options" ,(ldflags "libyaml" "-lyaml"))
          (ssi: "text/libyaml")
          "text/yaml")
        '())
    ,@(if config-enable-zlib
        `((gsc: "text/_zlib"
                "-cc-options" ,(cppflags "zlib" "")
                "-ld-options" ,(ldflags "zlib" "-lz"))
          (ssi: "text/_zlib")
          "text/zlib")
        '())
    ;; :std/net
    "net/address"
    "net/uri"
    "net/socks"
    "net/request"
    "net/websocket"
    "net/wamp"
    (gxc: "net/repl" ,@(include-gambit-sharp))
    ;; std/os
    (gxc: "os/error" ,@(include-gambit-sharp))
    (gxc: "os/fd" ,@(include-gambit-sharp))
    (gxc: "os/fdio" ,@(include-gambit-sharp))
    (gxc: "os/fcntl" ,@(include-gambit-sharp))
    (gxc: "os/flock" ,@(include-gambit-sharp))
    (gxc: "os/pipe" ,@(include-gambit-sharp))
    ,(cond-expand
       (linux
        `(gsc: "os/_socket" "-cc-options" "-D_GNU_SOURCE" ,@(include-gambit-sharp)))
       (else
        `(gsc: "os/_socket" ,@(include-gambit-sharp))))
    (ssi: "os/_socket")
    "os/socket"
    ,@(cond-expand
        (linux
         `((gxc: "os/epoll" ,@(include-gambit-sharp))
           (gxc: "os/inotify" ,@(include-gambit-sharp))))
        (bsd
         `((gxc: "os/kqueue" ,@(include-gambit-sharp))))
        (else '()))
    "os/signal"
    ,@(cond-expand
        (linux
         `((gxc: "os/signalfd" ,@(include-gambit-sharp))))
        (else '()))
    "os/signal-handler"
    "os/pid"
    "os/temporaries"
    ;; :std/net/bio
    "net/bio/input"
    "net/bio/output"
    "net/bio/buffer"
    "net/bio/file"
    "net/bio"
    ;; :std/net/socket
    "net/socket/base"
    "net/socket/basic-socket"
    "net/socket/api"
    "net/socket/buffer"
    "net/socket/basic-server"
    ,@(cond-expand
        (linux
         '("net/socket/epoll-server"))
        (bsd
         '("net/socket/kqueue-server"))
        (else '()))
    "net/socket/server"
    "net/socket"
    ;; :std/net/httpd
    "net/httpd/mux"
    "net/httpd/handler"
    "net/httpd/server"
    "net/httpd/file"
    "net/httpd"
    "net/sasl"
    ;; :std/xml
    ,@(if config-enable-libxml
        `((gsc: "xml/_libxml"
                "-cc-options" ,(shell-config "xml2-config" "--cflags")
                "-ld-options" ,(shell-config "xml2-config" "--libs")
                ,@(include-gambit-sharp))
          (ssi: "xml/_libxml")
          "xml/libxml")
        '())
    (gxc: "xml/ssax" "-cc-options" "--param max-gcse-memory=300000000")
    "xml/sxpath"
    "xml/sxml"
    (gsc: "xml/sxml-to-xml")
    (ssi: "xml/sxml-to-xml")
    "xml/print"
    "xml"
    ;; :std/crypto
    (static-include: "crypto/libcrypto-rfc5114.c")
    (gxc: "crypto/libcrypto"
          "-cc-options" ,(cppflags "libcrypto" "")
          "-ld-options" ,(ldflags "libcrypto" "-lcrypto")
          ,@(include-gambit-sharp))
    (gxc: "crypto/etc" ,@(include-gambit-sharp))
    "crypto/digest"
    "crypto/cipher"
    "crypto/hmac"
    "crypto/bn"
    "crypto/dh"
    "crypto/pkey"
    "crypto/kdf"
    "crypto"
    ;; :std/misc
    "misc/concurrent-plan"
    "misc/timeout"
    "misc/list-builder"
    "misc/list"
    "misc/alist"
    "misc/plist"
    "misc/walist"
    "misc/rtd"
    "misc/shuffle"
    "misc/uuid"
    "misc/repr"
    "misc/queue"
    "misc/pqueue"
    "misc/deque"
    "misc/rbtree"
    "misc/lru"
    "misc/string"
    "misc/sync"
    "misc/completion"
    "misc/barrier"
    "misc/channel"
    (gxc:  "misc/ports" ,@(include-gambit-sharp))
    (gxc:  "misc/threads" ,@(include-gambit-sharp))
    "misc/process"
    (gxc:  "misc/shared" "-e" "(include \"~~lib/_gambit#.scm\")")
    "misc/text"
    "misc/func"
    "misc/bytes"
    "misc/number"
    "misc/hash"
    "misc/path"
    "misc/symbol"
    "misc/rwlock"
    ;; :std/protobuf
    "protobuf/io"
    "protobuf/macros"
    "protobuf/proto-grammar"
    "protobuf/proto"
    ;; :std/actor
    (gxc: "actor/message" ,@(include-gambit-sharp))
    (gxc: "actor/xdr"  ,@(include-gambit-sharp))
    (gxc: "actor/proto" "-cc-options" "--param max-gcse-memory=300000000")
    "actor/rpc/base"
    "actor/rpc/proto/message"
    "actor/rpc/proto/null"
    "actor/rpc/proto/cookie"
    "actor/rpc/proto/cipher"
    "actor/rpc/connection"
    "actor/rpc/server"
    "actor/rpc"
    "actor"
    "web/fastcgi"
    "web/rack"
    "db/dbi"
    "db/conpool"
    "db/postgresql-driver"
    "db/postgresql"
    ,@(if config-enable-sqlite
        `((gsc: "db/_sqlite"
                "-cc-options" ,(cppflags "sqlite3" "")
                "-ld-options" ,(ldflags "sqlite3" "-lsqlite3"))
          (ssi: "db/_sqlite")
          "db/sqlite")
        '())
    ,@(if config-enable-mysql
        `((gsc: "db/_mysql"
                "-cc-options" ,(cppflags "mysqlclient" "")
                "-ld-options" ,(ldflags "mysqlclient" "-lpthread -lmysqlclient"))
          (ssi: "db/_mysql")
          "db/mysql")
        '())
    ,@(if config-enable-lmdb
        `((gsc: "db/_lmdb"
                "-cc-options" ,(cppflags "lmdb" "")
                "-ld-options" ,(ldflags "lmdb" "-llmdb"))
          (ssi: "db/_lmdb")
          "db/lmdb")
        '())
    ,@(if config-enable-leveldb
        `((gsc: "db/_leveldb"
                "-cc-options" ,(cppflags "leveldb" "")
                "-ld-options" ,(ldflags "leveldb" "-lleveldb"))
          (ssi: "db/_leveldb")
          "db/leveldb")
        '())
    ))
