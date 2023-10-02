;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket API
(import :std/error
        :std/contract
        :std/text/utf8
        (only-in :std/srfi/1 reverse!)
        ./interface
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

;; extension methods
(def (WebSocket-send-all wsock data type)
  (check-argument (or (u8vector? data) (string? data)) "u8vector or string" data)
  (check-argument (memq type '(text binary ping pong close)) "message type; text, binary, ping, pong or close" type)
  (&WebSocket-send-all (WebSocket wsock) data type))

(def (&WebSocket-send-all wsock data type)
  (if (string? data)
    (send-all-frames wsock (string->utf8 data) type)
    (send-all-frames wsock data type)))

(def (send-all-frames wsock data type)
  (using (wsock :- WebSocket)
    (let ((len (u8vector-length data))
          (max-frame-size (wsock.max-frame-size)))
      (if (fx< len max-frame-size)
        (wsock.send (message data type #f))
        ;; TODO use slices when we have them
        (let lp ((start 0))
          (let (start+frame (fx+ start max-frame-size))
            (if (fx< start+frame len)
              (wsock.send (message (subu8vector data start len) type #f))
              (begin
                (wsock.send (message (subu8vector data start start+frame) type #t))
                (lp start+frame)))))))))

(def (WebSocket-recv-all wsock max-message-size)
  (check-argument (nonnegative-fixnum? max-message-size) "nonnegative fixnum" max-message-size)
  (&WebSocket-recv-all wsock max-message-size))

(def (&WebSocket-recv-all wsock max-message-size)
  (using (wsock :- WebSocket)
    (let lp ((data []) (type #f) (count 0))
      (using (msg (wsock.recv) :- message)
        (when (and type (not (eq? type msg.type)))
          (raise-io-error websocket-recv "message type mismatch" type msg.type))
        (if msg.partial?
          (let (new-count
                (fx+ count
                     (if (string? msg.data)
                       (string-utf8-length msg.data)
                       (u8vector-length msg.data))))
            (unless (fx< new-count max-message-size)
              (raise-io-error websocket-recv "oversize message" type new-count max-message-size))
            (lp (cons msg.data data) msg.type new-count))
          (message (combine-frame-data (cons msg.data data) type) type #f))))))

(def (combine-frame-data data type)
  (let (result (reverse! data))
    (if (memq type '(text close))
      (string-concatenate result)
      (u8vector-concatenate result))))
