;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket socket implementation
(import :std/error
        :std/interface
        :std/contract
        :std/io
        :std/crypto
        :std/sugar
        :std/text/utf8
        ./interface)
(export #t)
(declare (not safe))

(def default-max-frame-size (expt 2 20)) ; 1MB

(defstruct websocket (sock reader writer server? closed? proto max-frame-size mask)
  final: #t
  constructor: :init!)

(defmethod {:init! websocket}
  (lambda (self sock reader writer server? proto max-frame-size)
    (using ((self :- websocket)
            (sock : StreamSocket)
            (reader : BufferedReader)
            (writer : BufferedWriter))
      (set! self.sock sock)
      (set! self.reader reader)
      (set! self.writer writer)
      (set! self.server? server?)
      (set! self.proto proto)
      (set! self.max-frame-size max-frame-size)
      (unless server?
        (set! self.mask (random-bytes 4))))))

;;; WebSocket interface implementation

(defmethod {send websocket}
  (lambda (self msg)
    (using ((self :- websocket)
            (msg :- message))
      (when self.closed?
        (raise-io-closed send "websocket has been closed" self))
      (let* ((data
              (cond
               ((u8vector? msg.data) msg.data)
               ((string? msg.data) (string->utf8 msg.data))
               (else
                (raise-bad-argument websocket-send "message payload; u8vector or string" msg.data))))
             (len (u8vector-length data)))
        (if (fx< len self.max-frame-size)
          (write-frame self.writer data 0 len
                       (message->frame-type msg.type)
                       (if msg.partial? 0 1)
                       self.mask)
          (raise-io-error websocket-send "message exceeds max frame size" len self.max-frame-size))))))

(defmethod {recv websocket}
  (lambda (self)
    (using (self :- websocket)
      (when self.closed?
        (raise-io-closed send "websocket has been closed" self))

      (let* (((values data typ fin) (read-frame self.reader self.max-frame-size))
             (type (frame->message-type typ))
             (data (if (memq type '(text close))
                     (utf8->string data)
                     data))
             (partial? (fx= fin 0)))
        (message data type partial?)))))

;; Base Framing Protocol [RFC 6455]
;;
;;  0                   1                   2                   3
;;  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
;; +-+-+-+-+-------+-+-------------+-------------------------------+
;; |F|R|R|R| opcode|M| Payload len |    Extended payload length    |
;; |I|S|S|S|  (4)  |A|     (7)     |             (16/64)           |
;; |N|V|V|V|       |S|             |   (if payload len==126/127)   |
;; | |1|2|3|       |K|             |                               |
;; +-+-+-+-+-------+-+-------------+ - - - - - - - - - - - - - - - +
;; |     Extended payload length continued, if payload len == 127  |
;; + - - - - - - - - - - - - - - - +-------------------------------+
;; |                               |Masking-key, if MASK set to 1  |
;; +-------------------------------+-------------------------------+
;; | Masking-key (continued)       |          Payload Data         |
;; +-------------------------------- - - - - - - - - - - - - - - - +
;; :                     Payload Data continued ...                :
;; + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +
;; |                     Payload Data continued ...                |
;; +---------------------------------------------------------------+
;;

(def (write-frame writer data start end typ fin mask)
  (using (writer :- BufferedWriter)
    (let (head (fxior (fxarithmetic-shift-left fin 7) typ))
      (writer.write-u8 head))
    (let ((mask-bit (if mask #x80 0))
          (len (fx- end start)))
      (cond
       ((fx< len 126)
        (writer.write-u8 (fxior mask-bit len)))
       ((fx< len 65536)
        (writer.write-u8 (fxior mask-bit 126))
        (writer.write-u16 len))
       (else
        (writer.write-u8 (fxior mask-bit 127))
        (writer.write-u64 len))))
    (when mask
      (writer.write mask)
      (frame-mask! data start end mask))
    (writer.write data start end)
    (writer.flush)))

(def (read-frame reader max-frame-size)
  (using (reader :- BufferedReader)
    (def typ #f)
    (def fin #f)
    (def mask #f)
    (def len #f)

    (let (head (reader.read-u8!))
      (set! fin (fxarithmetic-shift-right head 7))
      (set! typ (fxand head #x0f)))
    (let (pbyte (reader.read-u8!))
      (let ((mask? (not (fx= (fxand pbyte #x80) 0)))
            (plen0 (fxand pbyte #x7f)))
        (cond
         ((fx< plen0 126)
          (set! len plen0))
         ((fx= plen0 126)
          (set! len (reader.read-u16)))
         (else
          (set! len (reader.read-u64))))
        (when mask?
          (let (mask (make-u8vector 4))
            (reader.read mask 0 4 4)
            (set! mask mask)))))
    (when (fx> len max-frame-size)
      (raise-io-error websocket-recv "oversize frame" len max-frame-size))
    (let (data (make-u8vector len))
      (reader.read data 0 len len)
      (when mask
        (frame-mask! data 0 len mask))
      (values data typ fin))))

(def (message->frame-type msg-type)
  (case msg-type
    ((text)    #x1)
    ((binary)  #x2)
    ((close)   #x8)
    ((ping)    #x9)
    ((pong)    #xA)
    (else
     (raise-bad-argument websocket-send "message type; text, binary, close, ping, or pong" msg-type))))

(def (frame->message-type frame-type)
  (case frame-type
    ((#x1) 'text)
    ((#x2) 'binary)
    ((#x8) 'close)
    ((#x9) 'ping)
    ((#xA) 'pong)
    (else
     (raise-io-error websocket-recv "bad frame type" frame-type))))

(def (frame-mask! data start end mask)
  (let lp ((i start) (mask-i 0))
    (when (fx< i end)
      (u8vector-set! data i (fxxor (u8vector-ref data i) (u8vector-ref mask mask-i)))
      (lp (fx+ i 1) (fxmodulo (fx+ mask-i 1) 4)))))

(defmethod {protocol websocket}
  &websocket-proto)

(defmethod {max-frame-size websocket}
  &websocket-max-frame-size)

;; Closer interface implementation
(defmethod {close websocket}
  (lambda (self)
    (using (self :- websocket)
      (unless self.closed?
        (set! self.closed? #t)

        ;; Note we don't do the graceful shutdown part of the spec for good reason
        ;; - it is borderline useless
        ;; - it is hard to implement correctly
        ;; - adding an rwlock in the websocket would make it impossible to
        ;;   close the socket from a third thread as the socket already has one.
        ;; - i don't understand the rationale for including it in the RFC
        ;; - and honestly, it is not needed.
        ;; What we do instead is pass the "close" message to the user and let them
        ;; handle it as they see fit.
        ;; Here, we just close the socket.
        (using ((reader self.reader :- BufferedReader)
                (writer self.writer :- BufferedWriter))
            (reader.close)
            (writer.close))))))

;;; Socket interface implementation passhtrough
(defsyntax (defsocket-dispatch-method stx)
  (syntax-case stx ()
    ((_ (method arg ...))
     (with-syntax ((sock.method (make-symbol 'sock "." (stx-e #'method))))
       #'(defmethod {method websocket}
         (lambda (self arg ...)
           (using (self :- websocket)
             (let (sock self.sock)
               (using (sock :- StreamSocket)
                 (sock.method arg ...))))))))))

(defsocket-dispatch-method (domain))
(defsocket-dispatch-method (address))
(defsocket-dispatch-method (peer-address))
(defsocket-dispatch-method (getsockopt level option))
(defsocket-dispatch-method (setsockopt level option value))
(defsocket-dispatch-method (set-input-timeout! timeo))
(defsocket-dispatch-method (set-output-timeout! timeo))

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
  (let lp ((rest data) (result []))
    (match rest
      ([hd . rest]
       (lp rest (cons hd result)))
      (else
       (if (memq type '(text close))
         (string-concatenate result)
         (u8vector-concatenate result))))))
