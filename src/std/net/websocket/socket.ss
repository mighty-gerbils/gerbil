;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket socket implementation
(import :std/error
        :std/interface
        :std/contract
        :std/io
        :std/misc/rwlock
        :std/sugar
        :std/text/utf8
        :std/misc/bytes
        ./interface)
(export #t)

(def default-max-frame-size (expt 2 20)) ; 1MB

(defstruct websocket (sock reader writer server? closed? proto max-frame-size mask?)
  final: #t
  constructor: :init!)

(defmethod {:init! websocket}
  (lambda (self sock reader writer server? proto (max-frame-size default-max-frame-size) (mask? #f)) ; TODO (MASKING)
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
      ; TODO (MASKING)
      (set! self.mask? #f))))

;;; WebSocket interface implementation
(defmethod {send websocket}
  (lambda (self msg)
    (using ((self :- websocket)
            (msg :- message)
            (writer self.writer : BufferedWriter))
      (when self.closed?
        (raise-io-closed send "websocket has been closed" self))
      (let* ((len (u8vector-length msg.data))
             ; network byte order == big
             (lenbytes (uint->u8vector (endianness big) len))
             (lenbyteslen (u8vector-length lenbytes))
             ; TODO (MASKING)
             (masked? #f)
             (data (if (string? msg.data)
                     (string->utf8 msg.data)
                     msg.data)))
        ; TODO: slice the underlying u8vector and send fragmented messages once we have
        ; efficient slicing.
        (if (> len self.max-frame-size)
          (raise-io-error websocket.send "message payload larger than max frame size"
                          len self.max-frame-size))
        (writer.write-u8 (make-first-header-byte  self msg))
        (cond
          ; represent the length as a u64
          ((> lenbyteslen 2)
           (begin
             (writer.write-u8 #x7f)
             ; TODO (MASKING)
             ; pad to 8 bytes
             (do ((i (- 8 lenbyteslen) (1- i)))
                 ((< i 0))
                (writer.write-u8 #x0))
             (writer.write lenbytes)))
          ((> (u8vector-length 1))
           (begin
             (writer.write-u8 #x7e)
             (writer.write lenbytes)))
          ; The length is < 126 bytes
          (else (writer.write-u8 len)))
        ; Write the payload
        (writer.write data)
        (writer.flush)))))

(def (make-first-header-byte ws msg)
     (using ((ws :- websocket)
             (msg :- message)
             (writer ws.writer : BufferedWriter))
            (##fxior (match msg.type
                      ('text #x1)
                      ('binary #x2)
                      ('closed #x8)
                      ('ping #x9)  ; | FIN bit is always set. TODO:
                                   ; | implement frame segmenting
                      ('pong #xA)) #x80)))

(defmethod {recv websocket}
  (lambda (self)
    (using ((self :- websocket)
            (reader self.reader :- BufferedReader))
      (when self.closed?
        (raise-io-closed send "websocket has been closed" self))

      ;; TODO

      (error "IMPLEMENTME"))))

(defmethod {protocol websocket}
  websocket-proto)

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
