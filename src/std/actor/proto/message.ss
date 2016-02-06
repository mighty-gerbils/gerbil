;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor wire protocol implementation
package: std/actor/proto

(import :std/actor/proto
        ;; :std/actor/xdr
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
;; messages
(def rpc-proto-message        #x00)
(def rpc-proto-message-call   #x01)
(def rpc-proto-message-value  #x02)
(def rpc-proto-message-error  #x03)
(def rpc-prot-message-event   #x04)
;; protocols
(def rpc-proto-null          #x00)
(def rpc-proto-cookie        #x01)
(def rpc-proto-cipher        #x02)
(def rpc-proto-cipher-cookie #x03)

;;; protocol i/o
(def (rpc-proto-marshall-message proto msg)
  XXX
  )

(def (rpc-proto-read-message-envelope inp)
  XXX
  )

(def (rpc-proto-read-message-content proto inp)
  XXX
  )
