;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket API
(import ./interface
        ./client
        ./server)
(export (import: ./interface)
        websocket-connect
        websocket-request-handler)
