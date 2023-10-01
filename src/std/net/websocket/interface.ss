;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket interface

(import :std/interface
        :std/contract
        :std/io/interface)
(export #t)

;; websocket messages
;; - data is a string or u8vector, depending on the message type
;; - type is the message type, the symbol 'text, 'binary, 'ping, 'pong, or 'closed
(defstruct message (data type partial?))

(interface (WebSocket Socket)
  ;; send a message
  ;; raises io-closed-error? if the websocket has been closed
  (send (msg : message))

  ;; receive a message
  ;; raises io-closed-error? if the websocket has been closed
  (recv) ; -> message

  ;; returns the websocket protocol or #f if none was specified
  (protocol))
