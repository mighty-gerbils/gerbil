;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connections
(import :std/error
        :std/interface
        :std/io
        ../interface
        ./types)
(export new-outgoing-connection
        new-incoming-connection)

(def (new-outgoing-connection (net  : network)
                              (sock : StreamSocket)
                              (peer : HostID))
  => Connection
  (TODO new-outgoing-connection))

(def (new-incoming-connection (net  : network)
                              (sock : StreamSocket))
  => Connection
  (TODO new-outgoing-connection))
