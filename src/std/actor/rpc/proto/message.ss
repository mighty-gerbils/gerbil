;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor wire protocol implementation
package: std/actor/rpc/proto

(import :std/error
        :std/misc/uuid
        :std/net/bio
        :std/actor/message
        :std/actor/proto
        :std/actor/xdr
        :std/actor/rpc/base)
(export #t)

(declare (not safe))

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
(def (rpc-proto-marshal-message msg)
  (let (outp (open-serializer-output-buffer))
    (rpc-proto-write-message msg outp)
    outp))

;; wire representation
;; rpc-proto-message-type dest content
(def (rpc-proto-write-message msg buffer)
  (with ((message content _ dest) msg)
    (let (proto (lookup-protocol dest))
      (if proto
        (current-xdr-type-registry (!protocol-types proto))
        (raise-rpc-io-error 'rpc-proto-write-message "unknown protocol" dest)))
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
         (raise-rpc-io-error 'rpc-proto-write-message "unknown rpc message type" content))))
     (else
      (bio-write-u8 rpc-proto-message-raw buffer)
      (xdr-write content buffer)))))

(def (rpc-proto-unmarshal-message u8v)
  (let (inp (open-input-buffer u8v))
    (rpc-proto-read-message inp)))

(def (rpc-proto-read-message buffer)
  (let* ((type (bio-read-u8 buffer))
         (dest (xdr-read-uuid buffer))
         (proto (lookup-protocol dest)))
    (unless proto
      (raise-rpc-io-error 'rpc-proto-read-message "unknown protocol" dest))
    (current-xdr-type-registry (!protocol-types proto))
    (make-message
     (cond
      ((eq? type rpc-proto-message-call)
       (let* ((k (xdr-read-uint buffer))
              (e (xdr-read buffer)))
         (make-!call e k)))
      ((eq? type rpc-proto-message-value)
       (let* ((k (xdr-read-uint buffer))
              (e (xdr-read buffer)))
         (make-!value e k)))
      ((eq? type rpc-proto-message-error)
       (let* ((k (xdr-read-uint buffer))
              (e (xdr-read buffer))
              (e (if (string? e)
                    (make-remote-error 'rpc e)
                    e)))
         (make-!error e k)))
      ((eq? type rpc-proto-message-event)
       (let (e (xdr-read buffer))
         (make-!event e)))
      ((eq? type rpc-proto-message-raw)
       (xdr-read buffer))
      ((eq? type rpc-proto-message-stream)
       (let* ((k (xdr-read-uint buffer))
              (e (xdr-read buffer)))
         (make-!stream e k)))
      ((eq? type rpc-proto-message-yield)
       (let* ((k (xdr-read-uint buffer))
              (e (xdr-read buffer)))
         (make-!yield e k)))
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

(def (rpc-proto-unmarshal-envelope u8v)
  (let (inp (open-input-buffer u8v))
    (rpc-proto-read-envelope inp)))

(def (rpc-proto-read-envelope buffer)
  (let* ((type (bio-read-u8 buffer))
         (dest (xdr-read-uuid buffer)))
    (make-message
     (cond
      ((eq? type rpc-proto-message-call)
       (let (k (xdr-read-uint buffer))
         (make-!call #!void k)))
      ((eq? type rpc-proto-message-value)
       (let (k (xdr-read-uint buffer))
         (make-!value #!void k)))
      ((eq? type rpc-proto-message-error)
       (let (k (xdr-read-uint buffer))
         (make-!error #!void k)))
      ((eq? type rpc-proto-message-event)
       (make-!event #!void))
      ((eq? type rpc-proto-message-raw)
       #!void)
      ((eq? type rpc-proto-message-stream)
       (let (k (xdr-read-uint buffer))
         (make-!stream #!void k)))
      ((eq? type rpc-proto-message-yield)
       (let (k (xdr-read-uint buffer))
         (make-!yield #!void k)))
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
