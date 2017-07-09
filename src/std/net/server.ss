;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server package
package: std/net

(import :std/net/server/api
        :std/net/server/buffer
        :std/net/server/basic-server)

(export (import: :std/net/server/api)
        (import: :std/net/server/buffer)
        basic-socket-server)

(cond-expand
  (linux
   (import :std/net/server/epoll-server)
   (export epoll-socket-server )))
