;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc wire data representation
package: std/actor/proto

(import
  )
(export
  )

(def current-xdr-type-registry
  (make-parameter #f))

(defstruct XDR (pred read write)
  id: std/actor#XDR::t)

(defstruct opaque (data)
  id: std/actor#opaque::t)

(def (xdr-read port types)
  (parameterize ((current-xdr-type-registry type))
    (xdr-read-object port)))

(def (xdr-write obj port types)
  (parameterize ((current-xdr-type-registry type))
    (xdr-write-object obj port)))

;; Gerbil eXternal Data Representation
;; non acyclic objects
;; single byte declares type followed by the content
;; all simple objects can be encoded
;; structure objects must eitherhave an entry in the type registry
;;  mapping their type id to an XDR object, or have an :xdr
;;  method that produces an XDR encodable object
;; when decoding, objects that cant be decoded because of
;;  unknown type, they get decoded to opaque.
(def xdr-proto-void     #x00)
(def xdr-proto-false    #x01)
(def xdr-proto-true     #x02)
(def xdr-proto-null     #x03)
(def xdr-proto-pair     #x04)
(def xdr-proto-int      #x05)
(def xdr-proto-float    #x06)
(def xdr-proto-string   #x07)
(def xdr-proto-symbol   #x08)
(def xdr-proto-keyword  #x09)
(def xdr-proto-values   #x0a)
(def xdr-proto-vector   #x0b)
(def xdr-proto-u8vector #x0b)
(def xdr-proto-hash     #x0c)
(def xdr-proto-object   #x0f)

(def (xdr-read-object port)
  XXX
  )

(def (xdr-write-object obj port)
  XXX
  )

(def (xdr-type-registry-get type-id)
  (cond
   ((current-xdr-type-registry)
    => (cut hash-get <> type-id))
   (else #f)))
