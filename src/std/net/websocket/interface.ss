;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket interface

(import :std/error
        :std/io/interface)
(export #t)

;; websocket messages
;; - data is a string or u8vector, depending on the message type
;; - type is the message type, the symbol 'text, 'binary, 'ping, 'pong, or 'closed
;; - partial? is set to true if this is a partial frame
(defstruct message (data type partial?) final: #t
  constructor: :init!)

(defmethod {:init! message}
  (lambda (self data type (partial? #f))
    (set! self.data data)
    (set! self.type type)
    (set! self.partial? partial?)))

(interface (WebSocket Socket)
  ;; send a message
  ;; raises io-closed-error? if the websocket has been closed
  (send (msg :~ valid-message?)) => :void

  ;; receive a message
  ;; raises io-closed-error? if the websocket has been closed
  (recv) => message

  ;; returns the websocket protocol or #f if none was specified
  (protocol) => :t

  ;; returns the maximum frame size in bytes
  (max-frame-size) => :fixnum)

(def (valid-message? (msg : message))
  (if (memq msg.type '(text close))
    (string? msg.data)
    (u8vector? msg.data)))
