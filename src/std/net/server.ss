;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server package
package: std/net

(import :std/net/server/api
        :std/net/server/sync)

(export (import: :std/net/server/api)
        sync-socket-server)

(cond-expand
  (linux-gnu
   (import :std/net/server/epoll)
   (export epoll-socket-server )))

                 
        