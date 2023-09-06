;;; -*- Gerbil -*-
;;; © vyzo
;;; kvstore protocol
(import :gerbil/gambit
        :std/actor)
(export #t)

(defmessage !get (key))
(defmessage !put (key val))
(defmessage !remove (key))

(defcall-actor (kvstore-put! key val (server-id 'kvstore))
  (->> (kvstore-handle server-id) (!put key val))
  error: "error putting key" key)

(defcall-actor (kvstore-get key (server-id 'kvstore))
  (->> (kvstore-handle server-id) (!get key))
  error: "error retrieving key" key)

(defcall-actor (kvstore-remove! key (server-id 'kvstore))
  (->> (kvstore-handle server-id) (!remove key))
  error: "error removing key" key)

(def (kvstore-put-object! key val (server-id 'kvstore))
  (kvstore-put! key (object->u8vector val) server-id))

(def (kvstore-get-object key (server-id 'kvstore))
  (u8vector->object (kvstore-get key server-id)))

(def (kvstore-handle (server-id 'kvstore))
  (make-handle (current-actor-server)
               (reference server-id 'kvstore)))
