;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL API
(import :std/interface
        ./interface
        ./libssl
        ./socket
        ./client
        ./server
        ./error)
(export (import: ./interface)
        default-client-ssl-context
        insecure-client-ssl-context
        make-server-ssl-context
        ssl-connect
        ssl-listen
        ssl-error?)
