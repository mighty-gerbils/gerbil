;; -*- Gerbil -*-

(def (gerbil-libdir) (path-expand "lib" (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))

(def (build-spec . _)
  `((gxc: "build-config" (extra-inputs: ("build-features.ss")))
    "metaclass"
    "hash-table"
    "interactive"
    "ssi"
    "foreign"
    ;; tests for :std/foreign
    "foreign-test-support"
    "deprecation"
    "format"
    "pregexp"
    "sort"
    "sugar"
    "values"
    "assert"
    "make"
    "build-script"
    (gxc: "error" ,@(include-gambit-sharp))
    "getopt"
    "logger"
    "generic/dispatch"
    "generic/macros"
    "generic"
    "ref"
    (gxc: "event" ,@(include-gambit-sharp))
    "coroutine"
    "iter"
    "test"
    "stxparam"
    "stxutil"
    "source"
    "lazy"
    "amb"
    "contract"
    (gxc: "interface" ,@(include-gambit-sharp))
    "instance"
    ;; cli
    "cli/getopt"
    "cli/shell"
    "cli/print-exit"
    "cli/multicall"
    ;; stdio
    "io"
    "io/interface"
    "io/api"
    "io/dummy"
    "io/delimited"
    "io/file"
    "io/util"
    "io/port"
    "io/bio/types"
    "io/bio/input"
    "io/bio/delimited"
    "io/bio/output"
    "io/bio/chunked"
    "io/bio/inline"
    "io/bio/util"
    "io/bio/api"
    "io/strio/types"
    "io/strio/packed"
    "io/strio/reader"
    "io/strio/writer"
    "io/strio/utf8"
    "io/strio/chunked"
    "io/strio/input"
    "io/strio/output"
    "io/strio/inline"
    "io/strio/delimited"
    "io/strio/util"
    "io/strio/api"
    "io/socket/types"
    "io/socket/basic"
    "io/socket/stream"
    "io/socket/server"
    "io/socket/datagram"
    "io/socket/socket"
    "io/socket/api"
    ;; debugging
    "debug/DBG"
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
    (gxc: "srfi/13" (extra-inputs: ("srfi/srfi-13.scm")))
    (gxc: "srfi/19" (extra-inputs: ("srfi/srfi-19.scm")))
    (gxc: "srfi/41" (extra-inputs: ("srfi/srfi-41.scm")))
    "srfi/41-iter"
    (gxc: "srfi/42")
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
    (gxc: "srfi/141")
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
    "srfi/212"
    ;; :std/mime
    "mime/struct"
    (gxc: "mime/types" (extra-inputs: ("mime/mime.types")))
    ;; :std/parser
    "parser/rlang"
    "parser/base"
    (gxc: "parser/stream" ,@(include-gambit-sharp))
    "parser/lexer"
    (gxc: "parser/defparser")
    (gxc: "parser/rx-parser")
    "parser/deflexer"
    "parser/grammar-reader"
    "parser/grammar"
    "parser/ll1"
    "parser"
    ;; :std/text
    "text/char-set"
    "text/basic-printers"
    "text/utf8"
    "text/utf16"
    "text/utf32"
    "text/hex"
    (gsc: "text/base64")
    (ssi: "text/base64")
    "text/base58"
    "text/csv"
    "text/json/env"
    "text/json/input"
    "text/json/output"
    "text/json/util"
    "text/json/api"
    "text/json"
    ,@(if config-enable-zlib
        `((gsc: "text/_zlib"
                "-cc-options" ,(cppflags "zlib" "")
                "-ld-options" ,(ldflags "zlib" "-lz"))
          (ssi: "text/_zlib")
          "text/zlib")
        '())
    ;; :std/net
    "net/address"
    ,(cond-expand
      (darwin
       `(gxc: "net/ssl/libssl"
	      "-cc-options" ,(cppflags "libssl" "")
	      "-ld-options" ,(apply append-options
			               (ldflags "libssl" "-lssl")
			               (ldflags "libcrypto" "-lcrypto")
                           (if (enable-shared?)
                             [(string-append "-L" (gerbil-libdir)) "-lgambit"]
                             []))))
      (else `(gxc: "net/ssl/libssl"
		   "-ld-options" ,(ldflags "libssl" "-lssl"))))
    "net/ssl/error"
    "net/ssl/interface"
    "net/ssl/socket"
    "net/ssl/client"
    "net/ssl/server"
    "net/ssl/api"
    "net/ssl"
    "net/uri"
    "net/request"
    "net/json-rpc"
    "net/s3"
    "net/s3/interface"
    "net/s3/api"
    "net/s3/sigv4"
    "net/smtp/interface"
    "net/smtp/session"
    "net/smtp/client"
    "net/smtp/connection"
    "net/smtp/data"
    "net/smtp/headers"
    "net/smtp/api"
    "net/smtp"
    "net/websocket/interface"
    "net/websocket/socket"
    "net/websocket/client"
    "net/websocket/server"
    "net/websocket/api"
    "net/websocket"
    (gxc: "net/repl" ,@(include-gambit-sharp))
    "net/socks/interface"
    "net/socks/client"
    "net/socks/server"
    "net/socks/api"
    "net/socks"
    ;; std/os
    (gxc: "os/error" ,@(include-gambit-sharp))
    (gxc: "os/fd" ,@(include-gambit-sharp))
    (gxc: "os/fdio" ,@(include-gambit-sharp))
    (gxc: "os/fcntl" ,@(include-gambit-sharp))
    (gxc: "os/flock" ,@(include-gambit-sharp))
    (gxc: "os/pipe" ,@(include-gambit-sharp))
    ,(cond-expand
       (linux
        `(gsc: "os/_socket" "-cc-options" "-D_GNU_SOURCE -Wno-implicit-function-declaration" ,@(include-gambit-sharp)))
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
    "os/hostname"
    ,@(if config-enable-deprecated
        ;; :std/net/bio -- DEPRECATED
        ["net/bio/input"
         "net/bio/output"
         "net/bio/buffer"
         "net/bio/file"
         "net/bio"
         ;; :std/net/socket -- DEPRECATED
         "net/socket/base"
         "net/socket/basic-socket"
         "net/socket/api"
         "net/socket/buffer"
         "net/socket/basic-server"
         (cond-expand
           (linux
            '("net/socket/epoll-server"))
           (bsd
            '("net/socket/kqueue-server"))
           (else '())) ...
         "net/socket/server"
         "net/socket"]
        [])
    ;; :std/net/httpd
    "net/httpd/base"
    "net/httpd/control"
    "net/httpd/mux"
    (gxc: "net/httpd/handler"  ,@(include-gambit-sharp))
    "net/httpd/server"
    "net/httpd/file"
    "net/httpd/logger"
    "net/httpd/api"
    "net/httpd"
    "net/sasl"
    ;; :std/markup/sxml
    "markup/sxml/print"
    (gxc: "markup/sxml/ssax")
    "markup/sxml/sxpath"
    "markup/sxml/xml"
    "markup/sxml/sxml-inf"
    (gxc: "markup/sxml/html/parser" (extra-inputs: ("markup/sxml/html/html-parser.scm")))
    "markup/sxml/tal/toplevel"
    "markup/sxml/tal/iter"
    "markup/sxml/tal/expander"
    "markup/sxml/tal/syntax"
    "markup/sxml"
    ;; :std/markup/tal
    "markup/tal"
    ;:std/markup/html
    "markup/html"
    ;; :std/xml
    "markup/xml"
    "xml"
    ;; :std/crypto
    (static-include: "crypto/libcrypto-rfc5114.c")
    (gxc: "crypto/libcrypto"
          "-cc-options" ,(append-options (cppflags "libcrypto" "") "-Wno-deprecated-declarations -Wno-implicit-function-declaration")
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
    "misc/atom"
    "misc/dag"
    "misc/decimal"
    "misc/vector"
    "misc/evector"
    "misc/prime"
    "misc/concurrent-plan"
    "misc/timeout"
    "misc/list-builder"
    "misc/list"
    "misc/alist"
    "misc/plist"
    "misc/walist"
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
    "misc/wg"
    (gxc:  "misc/ports" ,@(include-gambit-sharp))
    (gxc:  "misc/threads" ,@(include-gambit-sharp))
    "misc/process"
    (gxc:  "misc/shared" ,@(include-gambit-sharp))
    "misc/text"
    "misc/func"
    "misc/bytes"
    "misc/number"
    "misc/hash"
    "misc/path"
    "misc/symbol"
    "misc/rwlock"
    "misc/template"
    ;; :std/protobuf
    "protobuf/io"
    "protobuf/macros"
    "protobuf/proto-grammar"
    "protobuf/proto"
    ;; actor-v18
    (gxc: "actor-v18/message" ,@(include-gambit-sharp))
    (gxc: "actor-v18/io" ,@(include-gambit-sharp))
    "actor-v18/cookie"
    "actor-v18/admin"
    "actor-v18/logger"
    "actor-v18/path"
    "actor-v18/proto"
    "actor-v18/connection"
    "actor-v18/server"
    "actor-v18/registry"
    "actor-v18/loader"
    "actor-v18/ensemble"
    "actor-v18/ensemble-server"
    "actor-v18/ensemble-supervisor"
    "actor-v18/tls"
    "actor-v18/api"
    "actor"
    ;; DEPRECATEED: actor-v13
    ,@(if config-enable-deprecated
        [[gxc: "actor-v13/message" (include-gambit-sharp) ...]
         [gxc: "actor-v13/xdr"  (include-gambit-sharp) ...]
         [gxc: "actor-v13/proto"]
         "actor-v13/rpc/base"
         "actor-v13/rpc/proto/message"
         "actor-v13/rpc/proto/null"
         "actor-v13/rpc/proto/cookie"
         "actor-v13/rpc/proto/cipher"
         "actor-v13/rpc/connection"
         "actor-v13/rpc/server"
         "actor-v13/rpc"
         "actor-v13"]
        [])
    "web/fastcgi"
    "web/rack"
    "db/dbi"
    "db/conpool"
    "db/postgresql-driver"
    "db/postgresql"
    ,@(if config-enable-sqlite
        `((gsc: "db/_sqlite"
                "-cc-options" ,(cppflags "sqlite3" "")
                "-ld-options" ,(append-options (ldflags "sqlite3" "-lsqlite3") "-lm"))
          (ssi: "db/_sqlite")
          "db/sqlite")
        '())))
