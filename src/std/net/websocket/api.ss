;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket API
(import ./interface
        ./client
        ./server
        ./socket)
(export (import: ./interface
                 ./client
                 ./server)
        WebSocket-send-all
        &WebSocket-send-all
        WebSocket-recv-all
        &WebSocket-recv-all)
