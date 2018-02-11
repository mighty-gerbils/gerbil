;; -*- Gerbil -*-

(def ldflags (env-ldflags))
(def cppflags (env-cppflags))

(def build-spec
  `("build-config"
    "format"
    "pregexp"
    "sort"
    "sugar"
    "make"
    "build-script"
    "error"
    "getopt"
    "logger"
    (gxc: "generic/dispatch" "-e" "(include \"~~lib/_gambit#.scm\")")
    "generic/macros"
    (gxc: "generic/builtin" "-e" "(include \"~~lib/_gambit#.scm\")")
    "generic"
    (gxc: "event" "-e" "(include \"~~lib/_gambit#.scm\")")
    "coroutine"
    "iter"
    "test"
    ;; debugging
    (gxc: "debug/heap" "-e" "(include \"~~lib/_gambit#.scm\")")
    ;; SRFI: This is my grandfather's axe; my father replaced the head
    ;;       and i have replaced the handle.
    "srfi/srfi-support"
    "srfi/1"
    "srfi/8"
    "srfi/9"
    "srfi/14"
    (gxc: "srfi/13" "-cc-options" "--param max-gcse-memory=300000000")
    "srfi/19"
    "srfi/41"
    (gxc: "srfi/42" "-cc-options" "--param max-gcse-memory=300000000")
    "srfi/43"
    "srfi/78"
    "srfi/95"
    ;; :std/parser
    "parser/rlang"
    "parser/base"
    (gxc: "parser/stream" "-e" "(include \"~~lib/_gambit#.scm\")")
    "parser/lexer"
    (gxc: "parser/defparser" "-cc-options" "--param max-gcse-memory=300000000")
    (gxc: "parser/rx-parser" "-cc-options" "--param max-gcse-memory=300000000")
    "parser/deflexer"
    "parser/grammar-reader"
    "parser/grammar"
    "parser"
    ;; :std/text
    "text/utf8"
    "text/hex"
    (gsc: "text/base64")
    (ssi: "text/base64")
    "text/csv"
    "text/json"
    ,@(if config-enable-libyaml
        `((gsc: "text/libyaml"
                "-cc-options" ,(cppflags "")
                "-ld-options" ,(ldflags "-lyaml"))
          (ssi: "text/libyaml")
          "text/yaml")
        '())
    ,@(if config-enable-zlib
        `((gsc: "text/_zlib"
                "-cc-options" ,(cppflags "")
                "-ld-options" ,(ldflags "-lz"))
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
    (gxc: "net/repl" "-e" "(include \"~~lib/_gambit#.scm\")")
    ;; std/os
    (gxc: "os/error" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc: "os/fd" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc: "os/fdio" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc: "os/fcntl" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc: "os/pipe" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gsc: "os/_socket" "-e" "(include \"~~lib/_gambit#.scm\")")
    (ssi: "os/_socket")
    "os/socket"
    ,@(cond-expand
        (linux
         '((gxc: "os/epoll" "-e" "(include \"~~lib/_gambit#.scm\")")
           (gxc: "os/inotify" "-e" "(include \"~~lib/_gambit#.scm\")")))
        (else '()))
    ;; :std/net/bio
    "net/bio/input"
    "net/bio/output"
    "net/bio/buffer"
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
        (else '()))
    "net/socket/server"
    "net/socket"
    ;; :std/net/httpd
    "net/httpd/mux"
    "net/httpd/handler"
    "net/httpd/server"
    "net/httpd"
    ;; :std/xml
    ,@(if config-enable-libxml
        `((gsc: "xml/_libxml"
                "-cc-options" ,(shell-config "xml2-config" "--cflags")
                "-ld-options" ,(shell-config "xml2-config" "--libs")
                "-e" "(include \"~~lib/_gambit#.scm\")")
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
    (gsc: "crypto/libcrypto"
          "-cc-options" ,(cppflags "")
          "-ld-options" ,(ldflags "-lcrypto")
          "-e" "(include \"~~lib/_gambit#.scm\")")
    (ssi: "crypto/libcrypto")
    (gxc: "crypto/etc"
          "-e" "(include \"~~lib/_gambit#.scm\")")
    "crypto/digest"
    "crypto/cipher"
    "crypto/hmac"
    "crypto/bn"
    "crypto/dh"
    "crypto"
    ;; :std/misc
    "misc/list"
    "misc/rtd"
    "misc/shuffle"
    "misc/uuid"
    "misc/queue"
    "misc/pqueue"
    "misc/string"
    "misc/sync"
    "misc/completion"
    (gxc:  "misc/ports" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc:  "misc/threads" "-e" "(include \"~~lib/_gambit#.scm\")")
    "misc/process"
    ;; :std/actor
    (gxc: "actor/message" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc: "actor/xdr"  "-e" "(include \"~~lib/_gambit#.scm\")")
    "actor/proto"
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
                "-cc-options" ,(cppflags "")
                "-ld-options" ,(ldflags "-lsqlite3"))
          (ssi: "db/_sqlite")
          "db/sqlite")
        '())
    ,@(if config-enable-mysql
        `((gsc: "db/_mysql"
                "-cc-options" ,(cppflags "")
                "-ld-options" ,(ldflags "-lpthread -lmysqlclient"))
          (ssi: "db/_mysql")
          "db/mysql")
        '())
    ,@(if config-enable-lmdb
        `((gsc: "db/_lmdb"
                "-cc-options" ,(cppflags "")
                "-ld-options" ,(ldflags "-llmdb"))
          (ssi: "db/_lmdb")
          "db/lmdb")
        '())
    ,@(if config-enable-leveldb
        `((gsc: "db/_leveldb"
                "-cc-options" ,(cppflags "")
                "-ld-options" ,(ldflags "-lleveldb"))
          (ssi: "db/_leveldb")
          "db/leveldb")
        '())
    ))
