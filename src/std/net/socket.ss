;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous sockets package

(import :std/deprecation
        :std/net/socket/api
        :std/net/socket/buffer
        :std/net/socket/server)

(export (import: :std/net/socket/api
                 :std/net/socket/buffer
                 :std/net/socket/server))

(package-deprecation-warning!)
