#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :gerbil/compiler "make")

(make srcdir: (path-normalize (path-directory (this-source-file)))
      prefix: "std"
      `("format"
        "pregexp"
        "sort"
        "sugar"
        "make"
        (gxc: "event" "-e" "(include \"~~lib/_gambit#.scm\")")
        (gxc: "coroutine" "-e" "(include \"~~lib/_gambit#.scm\")")
        ;; :std/actor
        (gxc: "actor/message" "-e" "(include \"~~lib/_gambit#.scm\")")
        ;; :std/misc
        "misc/shuffle"
        "misc/uuid"
        ;; :std/net
        "net/address"
        "net/uri"
        ;; "net/requests"
        "net/socks"
        ;; :std/actor
        "actor/message"
        "actor/xdr"
        "actor/proto"
        "actor/proto/message"
        "actor/proto/null"
        ;; "actor/rpc"
        ;; "actor"
        ;; :std/text
        "text/hex"
        (gsc: "text/base64")
        (ssi: "text/base64")
        "text/json"
        ;; :std/xml
        (gsc: "xml/_libxml" 
              "-cc-options" ,(shell-config "xml2-config" "--cflags")
              "-ld-options" ,(shell-config "xml2-config" "--libs")
              "-e" "(include \"~~lib/_gambit#.scm\")")
        (ssi: "xml/_libxml")
        "xml/libxml"
        "xml/sxml"
        (gsc: "xml/sxml-to-xml")
        (ssi: "xml/sxml-to-xml")
        "xml/print"
        "xml"
        ;; :std/crypto
        (gsc: "crypto/libcrypto"
              "-ld-options" "-lcrypto"
              "-e" "(include \"~~lib/_gambit#.scm\")")
        (ssi: "crypto/libcrypto")
        (gxc: "crypto/etc"
              "-e" "(include \"~~lib/_gambit#.scm\")")
        "crypto/digest"
        "crypto/cipher"
        ;; SRFI: This is my grandfather's axe; my father replaced the head
        ;;       and i have replaced the handle.
        "srfi/srfi-support"
        "srfi/8"
        "srfi/9"
        "srfi/1"
        "srfi/14"
        "srfi/13"
        "srfi/19"
        "srfi/41"
        "srfi/42"
        "srfi/43"
        "srfi/78"
        "srfi/95"
        ))

