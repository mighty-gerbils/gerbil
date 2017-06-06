;; -*- Gerbil -*-
(def build-spec
  `("build-config"
    "format"
    "pregexp"
    "sort"
    "sugar"
    "make"
    "error"
    "getopt"
    "logger"
    "generic"
    (gxc: "event" "-e" "(include \"~~lib/_gambit#.scm\")")
    (gxc: "coroutine" "-e" "(include \"~~lib/_gambit#.scm\")")
    "iter"
    "test"
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
    "parser/rx-parser"
    "parser/deflexer"
    "parser/grammar-reader"
    "parser/grammar"
    "parser"
    ;; :std/text
    "text/hex"
    (gsc: "text/base64")
    (ssi: "text/base64")
    "text/json"
    ,@(if config-enable-libyaml
        '((gsc: "text/libyaml" "-ld-options" "-lyaml")
          (ssi: "text/libyaml")
          "text/yaml")
        '())
    ,@(if config-enable-zlib
        '((gsc: "text/_zlib" "-ld-options" "-lz")
          (ssi: "text/_zlib")
          "text/zlib")
        '())
    ;; :std/net
    "net/address"
    "net/uri"
    "net/socks"
    "net/request"
    ;; :std/xml
    ,@(if config-enable-libxml
        `((gsc: "xml/_libxml" 
                "-cc-options" ,(shell-config "xml2-config" "--cflags")
                "-ld-options" ,(shell-config "xml2-config" "--libs")
                "-e" "(include \"~~lib/_gambit#.scm\")")
          (ssi: "xml/_libxml")
          "xml/libxml"
          "xml/sxml"
          (gsc: "xml/sxml-to-xml")
          (ssi: "xml/sxml-to-xml")
          "xml/print"
          "xml")
        '())
    ;; :std/crypto
    (gsc: "crypto/libcrypto"
          "-ld-options" "-lcrypto"
          "-e" "(include \"~~lib/_gambit#.scm\")")
    (ssi: "crypto/libcrypto")
    (gxc: "crypto/etc"
          "-e" "(include \"~~lib/_gambit#.scm\")")
    "crypto/digest"
    "crypto/cipher"
    "crypto/bn"
    "crypto/dh"
    ;; :std/misc
    "misc/shuffle"
    "misc/uuid"
    "misc/queue"
    (gxc:  "misc/ports" "-e" "(include \"~~lib/_gambit#.scm\")")
    ;; :std/actor
    (gxc: "actor/message" "-e" "(include \"~~lib/_gambit#.scm\")")
    "actor/xdr"
    "actor/proto"
    "actor/proto/message"
    "actor/proto/null"
    "actor/proto/cookie"
    "actor/proto/cipher"
    "actor/rpc"
    "actor"
    "web/fastcgi"
    "web/rack"
    "db/dbi"
    (gxc: "db/conpool" "-e" "(include \"~~lib/_gambit#.scm\")")
    ,@(if config-enable-sqlite
        '((gsc: "db/_sqlite" "-ld-options" "-lsqlite3")
          (ssi: "db/_sqlite")
          "db/sqlite")
        '())
    ,@(if config-enable-mysql
        '((gsc: "db/_mysql" "-ld-options" "-lmysqlclient")
          (ssi: "db/_mysql")
          "db/mysql")
        '())
    ,@(if config-enable-lmdb
        '((gsc: "db/_lmdb" "-ld-options" "-llmdb")
          (ssi: "db/_lmdb")
          "db/lmdb")
        '())
    ,@(if config-enable-leveldb
        '((gsc: "db/_leveldb" "-ld-options" "-lleveldb")
          (ssi: "db/_leveldb")
          "db/leveldb")
        '())
    ))
