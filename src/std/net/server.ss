;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server package
package: std/net

(import :std/net/server/api
        :std/net/server/basic-server)

(export (import: :std/net/server/api)
        basic-socket-server)

(cond-expand
  (linux-gnu
   (import :std/net/server/epoll-server)
   (export epoll-socket-server )))

                 
        