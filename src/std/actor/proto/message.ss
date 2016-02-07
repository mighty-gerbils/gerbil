;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor wire protocol implementation
package: std/actor/proto

(import :gerbil/gambit/ports
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
(def rpc-proto-message-raw    #x00)
(def rpc-proto-message-call   #x01)
(def rpc-proto-message-value  #x02)
(def rpc-proto-message-error  #x03)
(def rpc-proto-message-event  #x04)
;; protocols
(def rpc-proto-null          #x00)
(def rpc-proto-cookie        #x01)
(def rpc-proto-cipher        #x02)
(def rpc-proto-cipher-cookie #x03)

;;; protocol i/o
(def (rpc-proto-marshall-message msg proto)
  (let (outp (open-output-u8vector))
    (rpc-proto-write-message msg proto outp)
    (get-output-u8vector outp)))

;; wire representation
;; rpc-proto-message-type dest content
(def (rpc-proto-write-message msg proto port)
  (with ((message content dest) msg)
    (cond
     ((!rpc? content)
      (cond
       ((!call? content)
        (write-u8 rpc-proto-message-call port))
       ((!value? content)
        (write-u8 rpc-proto-message-value port))
       ((!error? content)
        (write-u8 rpc-proto-message-error port))
       ((!event? content)
        (write-u8 rpc-proto-message-event port))
       (else
        (error "unknown rpc message" content)))
      (else
       (write-u8 rpc-proto-message-raw port))))
    (parameterize ((current-xdr-type-registry
                    (!protocol-types proto)))
      (xdr-write-object dest port)
      (match content
        ((or (!call e k)
             (!value e k)
             (!error e k))
         (xdr-write-object e port)
         (xdr-write-object k port))
        ((!event e)
         (xdr-write-object e port))
        (else
         (xdr-write-object content port))))
    (force-output port)))

(def (rpc-proto-unmarshall-message proto u8v)
  (let* ((inp (open-input-u8vector u8v))
         (msg (rpc-proto-read-message-evenelope inp)))
    (rpc-proto-read-message-content msg proto inp)))
         
(def (rpc-proto-read-message-envelope port)
  (let* ((type (read-u8 port))
         (dest (xdr-read-object port)))
    (make-message
     (cond
      ((eq? type rpc-proto-message-call)
       (make-!call #f #f))
      ((eq? type rpc-proto-message-value)
       (make-!value #f #f))
      ((eq? type rpc-proto-message-error)
       (make-!error #f #f))
      ((eq? type rpc-proto-message-event)
       (make-!event #f))
      ((eq? type rpc-proto-message-raw)
       #f)
      (else
       (error "unmarshall error; unexpected message type" type)))
     dest #!void #f)))

;; return modify msg content in place, return it
(def (rpc-proto-read-message-content msg proto inp)
  (let (content (message-e msg))
    (cond
     ((!rpc? content)
      (cond
       ((!call? content)
        (set! (!call-e content)
          (xdr-read-object port))
        (set! (!call-k content)
          (xdr-read-object port)))
       ((!value? content)
        (set! (!value-e content)
          (xdr-read-object port))
        (set! (!value-k content)
          (xdr-read-object port)))
       ((!error? content)
        (set! (!error-e content)
          (xdr-read-object port))
        (set! (!error-k content)
          (xdr-read-object port)))
       ((!event? content)
        (set! (!event-e content)
          (xdr-read-object port)))))
     (else
      (set! (message-e msg)
        (xdr-read-object port))))
    msg))

    


