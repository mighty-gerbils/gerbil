;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability context struct
(export #t)

;; TODO support for hardware wallets/keys
;;      support for TPM enclosure for private key material
(defclass capability-context
  ((mx             :- :mutex)
   (cv             :- :condvar)
   (closed?        :- :boolean)
   (thread         :- :thread)   ; clean up thread
   (path           :- :string)   ; path where the context is stored
   (key            :- :u8vector) ; encryption key for private key material
   ;; data tables
   (private-keys   :- HashTable) ; did string -> PrivKey
   (public-keys    :- HashTable) ; did string -> [PubKey . integer]
   (roots          :- HashTable) ; did string set
   (input-anchors  :- HashTable) ; token set
   (output-anchors :- HashTable) ; token set
   (tokens         :- HashTable) ; token set
   )
  final: #t
  transparent: #f)
