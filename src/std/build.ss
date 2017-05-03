#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :gerbil/compiler "make" "build-config")

(let ((depgraph (call-with-input-file "build-deps" read))
      (srcdir (path-normalize (path-directory (this-source-file)))))
  (add-load-path (path-normalize (path-expand ".." srcdir)))
  (make srcdir: srcdir
        depgraph: depgraph
        prefix: "std"
        `("build-config"
          "format"
          "pregexp"
          "sort"
          "sugar"
          "make"
          "error"
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
          ,@(if config-enable-sqlite
              '((gsc: "db/_sqlite" "-ld-options" "-lsqlite3")
                (ssi: "db/_sqlite")
                "db/sqlite")
              '())
          ,@(if config-enable-lmdb
              '((gsc: "db/_lmdb" "-ld-options" "-llmdb")
                (ssi: "db/_lmdb")
                "db/lmdb")
              '())
          )))

