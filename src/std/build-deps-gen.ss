#!/usr/bin/env gxi-script
;; -*- Gerbil -*-
;; build-deps depgraph generator
(import "make")

(def *modules*
  '("build-config"
    "format"
    "pregexp"
    "sort"
    "sugar"
    "make"
    "error"
    "logger"
    "generic"
    "event"
    "coroutine"
    "iter"
    "test"
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
    "text/hex"
    "text/json"
    "text/yaml"
    "text/zlib"
    "net/address"
    "net/uri"
    "net/socks"
    "net/request"
    "xml/libxml"
    "xml/sxml"
    "xml/print"
    "xml"
    "crypto/etc"
    "crypto/digest"
    "crypto/cipher"
    "crypto/bn"
    "crypto/dh"
    "misc/shuffle"
    "misc/uuid"
    "misc/queue"
    "actor/message"
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
    "db/sqlite"
    ))

(let (srcdir (path-normalize (path-directory (this-source-file))))
  (add-load-path (path-normalize (path-expand ".." srcdir))))
  
(let* ((files (map (cut string-append <> ".ss") *modules*))
       (depgraph (make-depgraph files)))
  (call-with-output-file "build-deps" (cut pretty-print depgraph <>)))
