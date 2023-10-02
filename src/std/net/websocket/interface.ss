;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket interface

(import :std/error
        :std/interface
        :std/contract
        :std/io/interface)
(export #t)

;; websocket messages
;; - data is a string or u8vector, depending on the message type
;; - type is the message type, the symbol 'text, 'binary, 'ping, 'pong, or 'closed
;; - partial? is set to true if this is a partial frame
(defstruct message (data type partial?) final: #t)

(interface (WebSocket Socket)
  ;; send a message
  ;; raises io-closed-error? if the websocket has been closed
  (send (msg :~ valid-message?))

  ;; receive a message
  ;; raises io-closed-error? if the websocket has been closed
  (recv) ; -> message

  ;; returns the websocket protocol or #f if none was specified
  (protocol)

  ;; returns the maximum frame size in bytes
  (max-frame-size))

(def (valid-message? msg)
  (using (msg msg : message)
    (if (memq msg.type '(text close))
      (check-argument (string? msg.data) "string" msg.data)
      (check-argument (u8vector? msg.data) "u8vector" msg.data))))
