;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor wire protocol implementation
package: std/actor/proto

(import :gerbil/gambit/ports
        :std/error
        :std/misc/uuid
        :std/actor/message
        :std/actor/proto
        :std/actor/xdr
        )
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
  (let (outp (open-output-u8vector))
    (rpc-proto-write-message msg proto outp)
    (get-output-u8vector outp)))

;; wire representation
;; rpc-proto-message-type dest content
(def (rpc-proto-write-message msg proto port)
  (current-xdr-type-registry
   (if proto
     (!protocol-types proto)
     *default-proto-type-registry*))

  (with ((message content _ dest) msg)
    (cond
     ((!rpc? content)
      (match content
        ((!call _ k)
         (##write-u8 rpc-proto-message-call port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!value _ k)
         (##write-u8 rpc-proto-message-value port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!error _ k)
         (##write-u8 rpc-proto-message-error port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((? !event? content)
         (##write-u8 rpc-proto-message-event port)
         (xdr-uuid-write dest port))
        ((!stream _ k)
         (##write-u8 rpc-proto-message-stream port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!yield _ k)
         (##write-u8 rpc-proto-message-yield port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!end k)
         (##write-u8 rpc-proto-message-end port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!continue k)
         (##write-u8 rpc-proto-message-continue port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!close k)
         (##write-u8 rpc-proto-message-close port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        ((!abort k)
         (##write-u8 rpc-proto-message-abort port)
         (xdr-uuid-write dest port)
         (xdr-int-write k port))
        (else
         (raise-rpc-io-error 'rpc-proto-write-message
                             "unknown rpc message type" content))))
     (else
      (##write-u8 rpc-proto-message-raw port)))
    (match content
      ((or (!call e)
           (!value e)
           (!error e)
           (!event e)
           (!stream e)
           (!yield e))
       (xdr-write-object e port))
      ((? (or !end? !continue? !close? !abort?))
       (void))
      (else
       (xdr-write-object content port)))
    (force-output port)))

(def (rpc-proto-unmarshal-message proto u8v)
  (let* ((inp (open-input-u8vector u8v))
         (msg (rpc-proto-read-message-envelope inp)))
    (rpc-proto-read-message-content msg proto inp)))

(def (rpc-proto-read-message-envelope port)
  (let* ((type (##read-u8 port))
         (dest (xdr-uuid-read port)))
    (make-message
     (cond
      ((eq? type rpc-proto-message-call)
       (let (k (xdr-read-object port))
         (make-!call #f k)))
      ((eq? type rpc-proto-message-value)
       (let (k (xdr-read-object port))
         (make-!value #f k)))
      ((eq? type rpc-proto-message-error)
       (let (k (xdr-read-object port))
         (make-!error #f k)))
      ((eq? type rpc-proto-message-event)
       (make-!event #f))
      ((eq? type rpc-proto-message-raw)
       #f)
      ((eq? type rpc-proto-message-stream)
       (let (k (xdr-read-object port))
         (make-!stream #f k)))
      ((eq? type rpc-proto-message-yield)
       (let (k (xdr-read-object port))
         (make-!yield #f k)))
      ((eq? type rpc-proto-message-end)
       (let (k (xdr-read-object port))
         (make-!end k)))
      ((eq? type rpc-proto-message-continue)
       (let (k (xdr-read-object port))
         (make-!continue k)))
      ((eq? type rpc-proto-message-close)
       (let (k (xdr-read-object port))
         (make-!close k)))
      ((eq? type rpc-proto-message-abort)
       (let (k (xdr-read-object port))
         (make-!abort k)))
      (else
       (raise-rpc-io-error 'rpc-proto-read-message
                           "unmarshal error; unexpected message type" type)))
     #!void dest #f)))

;; return modify msg content in place, return it
(def (rpc-proto-read-message-content msg proto port)
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
          (xdr-read-object port)))
       ((!value? content)
        (set! (!value-e content)
          (xdr-read-object port)))
       ((!error? content)
        (let* ((e (xdr-read-object port))
               (e (if (string? e)
                    (make-remote-error 'rpc e)
                    e)))
          (set! (!error-e content)
            e)))
       ((!event? content)
        (set! (!event-e content)
          (xdr-read-object port)))
       ((!stream? content)
        (set! (!stream-e content)
          (xdr-read-object port)))
       ((!yield? content)
        (set! (!yield-e content)
          (xdr-read-object port)))
       ;; !end/!continue/!close/!abort are empty
       ))
     (else
      (set! (message-e msg)
        (xdr-read-object port))))
    msg))


(def (read-u32 port)
  (let lp ((k 0) (value 0))
    (if (fx< k 4)
      (let (e (##read-u8 port))
        (cond
         ((eof-object? e)
          (raise-io-error 'read-u32 "premature port end"))
         (else
          (lp (fx1+ k)
              (fxior (fxarithmetic-shift e (fx* k 8))
                     value)))))
      value)))

(def (write-u32 uint port)
  (let lp ((k 0) (value uint))
    (if (fx< k 4)
      (begin
        (##write-u8 (fxand value #xff) port)
        (lp (fx1+ k) (fxarithmetic-shift value -8)))
      k)))

(def (write-u8/force-output u8 port)
  (##write-u8 u8 port)
  (force-output port))

;;; default XDR protocol
(def (xdr-uuid-read port)
  (let (bytes (xdr-binary-read port values))
    (make-uuid bytes #f)))

(def (xdr-uuid-write obj port)
  (xdr-binary-write (uuid->u8vector obj) port))
