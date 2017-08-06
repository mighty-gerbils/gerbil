;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor wire protocol implementation
package: std/actor/proto

(import :std/error
        :std/misc/uuid
        :std/misc/buffer
        :std/actor/message
        :std/actor/proto
        :std/actor/xdr)
(export #t)

;;; wire protocol implementation
;; Handshake:
;;  client sends hello byte with the protocol byte
;;  server replies with rpc-proto-connect-accept if it
;;  supports the requested protocol or rpc-proto-connect-reject
(def rpc-proto-connect-hello  #x00)
(def rpc-proto-connect-accept #x01)
(def rpc-proto-connect-reject #x02)
(def rpc-proto-challenge      #x03)
(def rpc-proto-response       #x04)
(def rpc-proto-key-exchange   #x05)
(def rpc-proto-keep-alive     #x06)
(def rpc-proto-message        #x07)
;; messages
(def rpc-proto-message-raw      #x00)
(def rpc-proto-message-call     #x01)
(def rpc-proto-message-value    #x02)
(def rpc-proto-message-error    #x03)
(def rpc-proto-message-event    #x04)
(def rpc-proto-message-stream   #x05)
(def rpc-proto-message-yield    #x06)
(def rpc-proto-message-end      #x07)
(def rpc-proto-message-continue #x08)
(def rpc-proto-message-close    #x09)
(def rpc-proto-message-abort    #x0A)
(def rpc-proto-message-max-length (expt 2 20)) ; 1MB
;; protocols
(def rpc-proto-null          #x00)
(def rpc-proto-cookie        #x01)
(def rpc-proto-cipher        #x02)
(def rpc-proto-cookie-cipher #x03)

;;; protocol i/o
(def (rpc-proto-marshal-message msg proto)
  (let (outp (open-output-buffer))
    (rpc-proto-write-message msg proto outp)
    (buffer-output-u8vector outp)))

;; wire representation
;; rpc-proto-message-type dest content
(def (rpc-proto-write-message msg proto buffer)
  (current-xdr-type-registry
   (if proto
     (!protocol-types proto)
     *default-proto-type-registry*))

  (with ((message content _ dest) msg)
    (cond
     ((!rpc? content)
      (match content
        ((!call e k)
         (buffer-write-u8 rpc-proto-message-call buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer)
         (xdr-write-object e buffer))
        ((!value e k)
         (buffer-write-u8 rpc-proto-message-value buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer)
         (xdr-write-object e buffer))
        ((!error e k)
         (buffer-write-u8 rpc-proto-message-error buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer)
         (xdr-write-object e buffer))
        ((!event e)
         (buffer-write-u8 rpc-proto-message-event buffer)
         (xdr-uuid-write dest buffer)
         (xdr-write-object e buffer))
        ((!stream e k)
         (buffer-write-u8 rpc-proto-message-stream buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer)
         (xdr-write-object e buffer))
        ((!yield e k)
         (buffer-write-u8 rpc-proto-message-yield buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer)
         (xdr-write-object e buffer))
        ((!end k)
         (buffer-write-u8 rpc-proto-message-end buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer))
        ((!continue k)
         (buffer-write-u8 rpc-proto-message-continue buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer))
        ((!close k)
         (buffer-write-u8 rpc-proto-message-close buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer))
        ((!abort k)
         (buffer-write-u8 rpc-proto-message-abort buffer)
         (xdr-uuid-write dest buffer)
         (xdr-int-write k buffer))
        (else
         (raise-rpc-io-error 'rpc-proto-write-message
                             "unknown rpc message type" content))))
     (else
      (buffer-write-u8 rpc-proto-message-raw buffer)
      (xdr-write-object content buffer)))))

(def (rpc-proto-unmarshal-message proto u8v)
  (let* ((inp (open-input-buffer u8v))
         (msg (rpc-proto-read-message-envelope inp)))
    (rpc-proto-read-message-content msg proto inp)))

(def (rpc-proto-read-message-envelope buffer)
  (let* ((type (buffer-read-u8 buffer))
         (dest (xdr-uuid-read buffer)))
    (make-message
     (cond
      ((eq? type rpc-proto-message-call)
       (let (k (xdr-read-object buffer))
         (make-!call #f k)))
      ((eq? type rpc-proto-message-value)
       (let (k (xdr-read-object buffer))
         (make-!value #f k)))
      ((eq? type rpc-proto-message-error)
       (let (k (xdr-read-object buffer))
         (make-!error #f k)))
      ((eq? type rpc-proto-message-event)
       (make-!event #f))
      ((eq? type rpc-proto-message-raw)
       #f)
      ((eq? type rpc-proto-message-stream)
       (let (k (xdr-read-object buffer))
         (make-!stream #f k)))
      ((eq? type rpc-proto-message-yield)
       (let (k (xdr-read-object buffer))
         (make-!yield #f k)))
      ((eq? type rpc-proto-message-end)
       (let (k (xdr-read-object buffer))
         (make-!end k)))
      ((eq? type rpc-proto-message-continue)
       (let (k (xdr-read-object buffer))
         (make-!continue k)))
      ((eq? type rpc-proto-message-close)
       (let (k (xdr-read-object buffer))
         (make-!close k)))
      ((eq? type rpc-proto-message-abort)
       (let (k (xdr-read-object buffer))
         (make-!abort k)))
      (else
       (raise-rpc-io-error 'rpc-proto-read-message
                           "unmarshal error; unexpected message type" type)))
     #!void dest #f)))

;; return modify msg content in place, return it
(def (rpc-proto-read-message-content msg proto buffer)
  (current-xdr-type-registry
   (if proto
     (!protocol-types proto)
     *default-proto-type-registry*))

  (let (content (message-e msg))
    (cond
     ((!rpc? content)
      (cond
       ((!call? content)
        (set! (!call-e content)
          (xdr-read-object buffer)))
       ((!value? content)
        (set! (!value-e content)
          (xdr-read-object buffer)))
       ((!error? content)
        (let* ((e (xdr-read-object buffer))
               (e (if (string? e)
                    (make-remote-error 'rpc e)
                    e)))
          (set! (!error-e content)
            e)))
       ((!event? content)
        (set! (!event-e content)
          (xdr-read-object buffer)))
       ((!stream? content)
        (set! (!stream-e content)
          (xdr-read-object buffer)))
       ((!yield? content)
        (set! (!yield-e content)
          (xdr-read-object buffer)))
       ;; !end/!continue/!close/!abort are empty
       ))
     (else
      (set! (message-e msg)
        (xdr-read-object buffer))))
    msg))


(def (read-u32 buffer)
  (let lp ((k 0) (value 0))
    (if (fx< k 4)
      (let (e (buffer-read-u8 buffer))
        (cond
         ((eof-object? e)
          (raise-io-error 'read-u32 "premature buffer end"))
         (else
          (lp (fx1+ k)
              (fxior (fxarithmetic-shift e (fx* k 8))
                     value)))))
      value)))

(def (write-u32 uint buffer)
  (let lp ((k 0) (value uint))
    (if (fx< k 4)
      (begin
        (buffer-write-u8 (fxand value #xff) buffer)
        (lp (fx1+ k) (fxarithmetic-shift value -8)))
      k)))

;;; default XDR protocol
(def (xdr-uuid-read buffer)
  (let (bytes (xdr-binary-read buffer values))
    (make-uuid bytes #f)))

(def (xdr-uuid-write obj buffer)
  (xdr-binary-write (uuid->u8vector obj) buffer))
