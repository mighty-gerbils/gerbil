;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; kvstore protocol
(import :std/actor)
(export #t)

;; A protocol for key-value stores
;; (get key)      -- retrieve object associated with key, or #f if not found
;; (ref key)      -- like get, but result in an exception if not foound
;; (put! key val) -- put an object for a key to the store
;; (remove! key)  -- remove a key
(defproto kvstore
  (get key)
  (ref key)
  (put! key val)
  (remove! key))

;; bind the protocol for the kvstore actor
(bind-protocol! 'kvstore kvstore::proto)
