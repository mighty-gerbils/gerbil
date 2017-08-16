;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor wire protocol implementation
package: std/actor/proto

(import :std/error
        :std/misc/uuid
        :std/net/bio
        :std/actor/message
        :std/actor/proto
        :std/actor/xdr)
(export #t)

;;; wire protocol implementation
;; Handshake:
;;  client sends hello byte with the protocol byte
;;  server replies with rpc-proto-connect-accept if it
;;  supports the requested protocol or rpc-proto-connect-reject
(def rpc-proto-connect-hello  #x0C) ; rpc v0.12
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
  (let (outp (open-serializer-output-buffer))
    (rpc-proto-write-message msg proto outp)
    outp))

;; wire representation
;; rpc-proto-message-type dest content
(def (rpc-proto-write-message msg proto buffer)
  (current-xdr-type-registry
   (if proto
     (!protocol-types proto)
     +xdr-default-type-registry+))

  (with ((message content _ dest) msg)
    (cond
     ((!rpc? content)
      (match content
        ((!call e k)
         (bio-write-u8 rpc-proto-message-call buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer)
         (xdr-write e buffer))
        ((!value e k)
         (bio-write-u8 rpc-proto-message-value buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer)
         (xdr-write e buffer))
        ((!error e k)
         (bio-write-u8 rpc-proto-message-error buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer)
         (xdr-write e buffer))
        ((!event e)
         (bio-write-u8 rpc-proto-message-event buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write e buffer))
        ((!stream e k)
         (bio-write-u8 rpc-proto-message-stream buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer)
         (xdr-write e buffer))
        ((!yield e k)
         (bio-write-u8 rpc-proto-message-yield buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer)
         (xdr-write e buffer))
        ((!end k)
         (bio-write-u8 rpc-proto-message-end buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer))
        ((!continue k)
         (bio-write-u8 rpc-proto-message-continue buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer))
        ((!close k)
         (bio-write-u8 rpc-proto-message-close buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer))
        ((!abort k)
         (bio-write-u8 rpc-proto-message-abort buffer)
         (xdr-write-uuid dest buffer)
         (xdr-write-uint k buffer))
        (else
         (raise-rpc-io-error 'rpc-proto-write-message
                             "unknown rpc message type" content))))
     (else
      (bio-write-u8 rpc-proto-message-raw buffer)
      (xdr-write content buffer)))))

(def (rpc-proto-unmarshal-message proto u8v)
  (let* ((inp (open-input-buffer u8v))
         (msg (rpc-proto-read-message-envelope inp)))
    (rpc-proto-read-message-content msg proto inp)))

(def (rpc-proto-read-message-envelope buffer)
  (let* ((type (bio-read-u8 buffer))
         (dest (xdr-read-uuid buffer)))
    (make-message
     (cond
      ((eq? type rpc-proto-message-call)
       (let (k (xdr-read-uint buffer))
         (make-!call #f k)))
      ((eq? type rpc-proto-message-value)
       (let (k (xdr-read-uint buffer))
         (make-!value #f k)))
      ((eq? type rpc-proto-message-error)
       (let (k (xdr-read-uint buffer))
         (make-!error #f k)))
      ((eq? type rpc-proto-message-event)
       (make-!event #f))
      ((eq? type rpc-proto-message-raw)
       #f)
      ((eq? type rpc-proto-message-stream)
       (let (k (xdr-read-uint buffer))
         (make-!stream #f k)))
      ((eq? type rpc-proto-message-yield)
       (let (k (xdr-read-uint buffer))
         (make-!yield #f k)))
      ((eq? type rpc-proto-message-end)
       (let (k (xdr-read-uint buffer))
         (make-!end k)))
      ((eq? type rpc-proto-message-continue)
       (let (k (xdr-read-uint buffer))
         (make-!continue k)))
      ((eq? type rpc-proto-message-close)
       (let (k (xdr-read-uint buffer))
         (make-!close k)))
      ((eq? type rpc-proto-message-abort)
       (let (k (xdr-read-uint buffer))
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
     +xdr-default-type-registry+))

  (let (content (message-e msg))
    (cond
     ((!rpc? content)
      (cond
       ((!call? content)
        (set! (!call-e content)
          (xdr-read buffer)))
       ((!value? content)
        (set! (!value-e content)
          (xdr-read buffer)))
       ((!error? content)
        (let* ((e (xdr-read buffer))
               (e (if (string? e)
                    (make-remote-error 'rpc e)
                    e)))
          (set! (!error-e content)
            e)))
       ((!event? content)
        (set! (!event-e content)
          (xdr-read buffer)))
       ((!stream? content)
        (set! (!stream-e content)
          (xdr-read buffer)))
       ((!yield? content)
        (set! (!yield-e content)
          (xdr-read buffer)))
       ;; !end/!continue/!close/!abort are empty
       ))
     (else
      (set! (message-e msg)
        (xdr-read buffer))))
    msg))

;;; default XDR protocol
(def (xdr-read-uuid buffer)
  (let (bytes (make-u8vector uuid-length))
    (bio-read-bytes bytes buffer)
    (make-uuid bytes #f)))

(def (xdr-write-uuid obj buffer)
  (bio-write-subu8vector (uuid->u8vector obj) 0 uuid-length buffer))
