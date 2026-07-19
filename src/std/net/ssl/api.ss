;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL API
(import ./interface
        ./libssl
        ./socket
        ./client
        ./server
        ./error)
(export (import: ./interface)
        default-client-ssl-context
        insecure-client-ssl-context
        make-client-ssl-context
        make-server-ssl-context
        make-actor-tls-context
        SSL_CTX?
        ssl-connect
        ssl-listen
        ssl-client-upgrade
        ssl-server-upgrade
        ssl-error?)
