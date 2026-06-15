;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability context struct
(export #t)

;; TODO support for hardware wallets/keys
;;      support for TPM enclosure for private key material
;; NOTE this needs to be rewritten to be backed by an sqlite db
(defclass capability-context
  ((mx             :- :mutex)
   (cv             :- :condvar)
   (closed?        :- :boolean)
   (thread         :- :thread)   ; clean up thread
   (path           :- :string)   ; path where the context is stored
   (key            :- :u8vector) ; encryption key for private key material
   ;; data tables
   ;; map a key did to a private key for a principal
   (private-keys   :- HashTable) ; did string -> PrivKey
   ;; cache of parsed public keys
   ;; maps a key did to a public key
   (public-keys    :- HashTable) ; did string -> [PubKey . integer]
   ;; set of root dids who are absolutely trusted as issues
   (roots          :- HashTable) ; did string set
   ;; set of tokens that are partially trusted to anchor input token
   ;; chains. applies to all actors/subjects.
   (root-input-anchors  :- HashTable) ; token set
   ;; set of tokens that are used to anchor output token chains.
   ;; applies to all actors/subject
   (root-output-anchors :- HashTable) ; token set
   ;; per subject input actors
   (subject-input-anchors  :- HashTable) ; did string -> token set
   ;; per subject output anchors
   (subject-output-anchors :- HashTable) ; did string -> token set
   ;; issued tokens for revocaion purposes
   (tokens         :- HashTable) ; token set
   )
  final: #t
  transparent: #f)
