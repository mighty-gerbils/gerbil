;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL API
(import :std/interface
        ./interface
        ./libssl
        ./client
        ./socket
        ./error)
(export (import: ./interface)
        default-client-ssl-context
        insecure-client-ssl-context
        ssl-connect
        ssl-error?)
