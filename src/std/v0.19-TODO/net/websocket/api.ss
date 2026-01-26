;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket API
(import :std/error
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

(declare (not safe))

;; extension methods
(def (WebSocket-send-all wsock msg)
  (check-argument (valid-message? msg) "message" msg)
  (check-argument (not (&message-partial? msg)) "full message" msg)
  (&WebSocket-send-all (WebSocket wsock) msg))

(def (&WebSocket-send-all wsock msg)
  (using (msg :- message)
    (if (memq msg.type '(text close))
      (send-all-frames wsock (string->utf8 msg.data) msg.type)
      (send-all-frames wsock msg.data msg.type))))

(def (send-all-frames wsock data type)
  (using (wsock :- WebSocket)
    (let ((len (u8vector-length data))
          (max-frame-size (wsock.max-frame-size)))
      (if (fx<= len max-frame-size)
        (wsock.send (message data type #f))
        ;; TODO use slices when we have them
        (let lp ((start 0))
          (let (start+frame (fx+ start max-frame-size))
            (if (fx<= len start+frame)
              (wsock.send (message (subu8vector data start len) type #f))
              (begin
                (wsock.send (message (subu8vector data start start+frame) type #t))
                (lp start+frame)))))))))

;; TODO define this with interface method infrastructure
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
          (message (combine-frame-data (cons msg.data data) type) (or type msg.type) #f))))))

(def (combine-frame-data data type)
  (let (result (reverse! data))
    (if (memq type '(text close))
      (string-concatenate result)
      (u8vector-concatenate result))))
